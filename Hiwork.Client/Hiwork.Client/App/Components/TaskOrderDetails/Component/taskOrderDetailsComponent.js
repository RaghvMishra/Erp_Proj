﻿angular.module("hiworkApp").component('taskdetails', {
    templateUrl: 'app/Components/TaskOrderDetails/Template/taskOrderDetails.html',
    controllerAs: "vm",
    bindings: {
        routes: "=",
        services: "=",
        languages: "=",
        businessCategories: "=",
        specializedFields: "=",
        subSpecializedFields: "=",
        currencyList: "="
    },
    controller: taskOrderDetailsController
})

function taskOrderDetailsController($scope, $compile, $uibModal, $filter, estimationService, AppStorage, appSettings, sessionFactory, ajaxService, $http, $stateParams, $parse, $localStorage, uiCalendarConfig, $sce, $rootScope, $state, $templateCache) {
    var vm = this;
    vm.rowCollection = [];
    vm.EstimationModel = {};
    vm.EstimationAction = {};
    vm.RemarksState = new Array(9);
    var BaseModel = {};
    var currentCulture = sessionFactory.GetData(AppStorage.currentLanguage);
    var currentUser = sessionFactory.GetObject(AppStorage.userData);
    BaseModel.CurrentUserID = currentUser.CurrentUserID;
    BaseModel.CurrentCulture = currentCulture;
    BaseModel.ApplicationId = appSettings.ApplicationId;
    vm.EstimationModel.CurrentUserID = currentUser.CurrentUserID;
    vm.EstimationModel.CurrentCulture = currentCulture;
    vm.EstimationModel.ApplicationId = appSettings.ApplicationId;
    vm.EstimationModel.ExclTaxCost = 0;
    vm.EstimationModel.TaxEstimate = 0;
    vm.PostCode = null;
    vm.EstimationModel.EstimationItems = [];
    vm.EstimationModel.ActionItems = [];
    vm.OrderModel = {};
    vm.OrderModel.OrderDetails = [];
    vm.OrderDetails = [];
    vm.Currency = {};
    vm.CulturalItem = {};
    vm.TempArray = [];
    var calEvents = [];
    var defaultCalDate = null;
    vm.Hands = {};

    vm.OrderModel = {
        QuoatedPrice: 0,
        ConsumptionTax: 0,
        CostExclTax: 0,
        BillingAmount: 0,
        StaffPaymentCost: 0,
        StaffBillingCost: 0,
        WithdrawlAmount: 0,
        OriginalCost: 0,
        Profit: 0,
        GrossInterestRate: 0
    }

    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    //vm.culturalProperties = ["ClientAddress", "BillingCompanyName", "BillingAddress", "DeliveryCompanyName", "DeliveryAddress", "CoordinatorNotes", "Remarks", "OtherItemName"];

    vm.ActionTypeList = [
        { Name_en: "Change Quotation", Name_jp: "Change Quotation", Name_cn: "Change Quotation", Name_fr: "Change Quotation", Name_kr: "Change Quotation", Name_tl: "Change Quotation", No: 1 },
        { Name_en: "Sending Email", Name_jp: "Change Quotation", Name_cn: "Change Quotation", Name_fr: "Change Quotation", Name_kr: "Change Quotation", Name_tl: "Change Quotation", No: 2 },
        { Name_en: "Cancel Quotation", Name_jp: "Change Quotation", Name_cn: "Change Quotation", Name_fr: "Change Quotation", Name_kr: "Change Quotation", Name_tl: "Change Quotation", No: 3 }
    ];

    vm.ClientStatusList = [
        { Name_en: "New", Name_jp: "New", Name_cn: "New", Name_fr: "New", Name_kr: "New", Name_tl: "New", No: 1 },
        { Name_en: "Existing", Name_jp: "Existing", Name_cn: "Existing", Name_fr: "Existing", Name_kr: "Existing", Name_tl: "Existing", No: 2 }
    ];
    vm.ButtonTitles = ['Estimation', 'Project', 'Status', 'Offer Email', 'Delivery', 'Certificate Issuance'];

    vm.$onInit = function () {
        
        if ($stateParams.id != "" && $stateParams.id != null && $localStorage.TaskEstimation != null && $stateParams.id === $localStorage.TaskEstimation.ID) {           
            vm.EstimationModel = $localStorage.TaskEstimation;           
            if (vm.EstimationModel.InquiryDate) {
                vm.EstimationModel.InquiryDate = $filter('date')(new Date(vm.EstimationModel.InquiryDate), 'MM/dd/yyyy');
            }
            if (vm.EstimationModel.FirstDeliveryDate) {
                vm.EstimationModel.FirstDeliveryDate = $filter('date')(new Date(vm.EstimationModel.FirstDeliveryDate), 'MM/dd/yyyy');
            }
            if (vm.EstimationModel.FinalDeliveryDate) {
                vm.EstimationModel.FinalDeliveryDate = $filter('date')(new Date(vm.EstimationModel.FinalDeliveryDate), 'MM/dd/yyyy');
            }            
            vm.EstimationModel.CurrentCulture = currentCulture;
            vm.EstimationModel.IsActionBtnDisable = false;
            angular.element(document.querySelector('.elmt-readonly')).find('[type="text"]').attr('readonly', true);
            if (vm.currencyList) {
                for (i = 0; i < vm.currencyList.length; i++) {
                    if (vm.currencyList[i].Code == "USD") {
                        vm.Currency = vm.currencyList[i];
                        break;
                    }
                }
            }

            ajaxService.AjaxPostWithData(BaseModel, "order/profitsharesetting/", function (r) {
                if (r.ID > 0) {
                    vm.Hands = r;
                } else {
                }
            }, errorFunction);

            //load order and order details
            if (!$localStorage.HasLocalData) {
                loadOrder();
                ajaxService.AjaxPostWithData(BaseModel, "orderdetails/estimationorderdetailslist/" + vm.EstimationModel.ID, function (r) {
                    if (r) {                      
                        vm.EstimationModel.EstimationItems = [].concat(r);
                        for (var x = 0; x < vm.EstimationModel.EstimationItems.length; x++) {
                            var dd = vm.EstimationModel.EstimationItems[x].DeliveryDate;
                            if (dd) {
                                vm.EstimationModel.EstimationItems[x].DeliveryDate = $filter('date')(new Date(dd), 'MM/dd/yyyy');
                            }
                        }
                        $localStorage.StoredEstimationItems = vm.EstimationModel.EstimationItems;
                        if (vm.EstimationModel.EstimationItems.length > 0) {
                            prepareEventObject(r, false);
                        }
                    }
                    for (var x = 0; x < vm.EstimationModel.EstimationItems.length; x++) {
                        vm.EstimationModel.EstimationItems[x].DeliveryDate = new Date(vm.EstimationModel.EstimationItems[x].DeliveryDate);
                    }
                }, errorFunction);
            } else {
                $localStorage.HasLocalData = false;
                vm.EstimationModel.EstimationItems = $localStorage.StoredEstimationItems;
                vm.OrderDetails = $localStorage.StoredOrderDetails;

                vm.OrderModel = $localStorage.StoredOrderModel;
                //loadOrder();
                if (vm.EstimationModel.EstimationItems.length > 0) {
                    setTimeout(function () {
                        prepareEventObject(vm.EstimationModel.EstimationItems, true);
                    }, 200);
                }
                $rootScope.$emit("listenToManipulateCommSelectionItem", {});
                for (var x = 0; x < vm.EstimationModel.EstimationItems.length; x++) {
                    vm.EstimationModel.EstimationItems[x].DeliveryDate = new Date(vm.EstimationModel.EstimationItems[x].DeliveryDate);
                }
            }
            
            ajaxService.AjaxPostWithData(BaseModel, "workingstatus/list", function (r) {
                if (r) {
                    vm.workstatusList = r;
                }
            }, errorFunction);
            loadEstimationActionList();
        } else {
            toastr.error("Estimation could not found");
        }
       
        applyOrderButtonState();
    };

    var applyOrderButtonState = function () {
        var classes = ['.btn-back-estimation', '.btn-project', '.btn-status', '.btn-eoffer', '.btn-delivery', '.btn-issuance'];
        classes.forEach(function (clazz) {
            angular.element(document.querySelector(clazz)).attr('disabled', false);
        });
        if (vm.EstimationModel.EstimationStatusName === 'Under_arrangement')
        {
            classes = ['.btn-delivery'];
        }
        else if (vm.EstimationModel.EstimationStatusName === 'In_progress') {
        }
        else if (vm.EstimationModel.EstimationStatusName === 'Order_Completed' || vm.EstimationModel.EstimationStatusName === 'Complaint') {
            classes = ['.btn-eoffer', '.btn-delivery'];
        }
        classes.forEach(function (clazz)
        {
            angular.element(document.querySelector(clazz)).attr('disabled', true);
        });
    }

    var applyButtonState = function () {
        var classes = ['.btn-order-details', '.btn-approval-req', '.btn-approval', '.btn-quotation-email', '.btn-quotation-request', '.btn-conf-email', '.btn-delete'];
        classes.forEach(function (clazz) {
            angular.element(document.querySelector(clazz)).attr('disabled', false);
        });
        if (vm.TaskQuotationModel.EstimationStatusName === 'Under_estimation') {
            classes = ['.btn-order-details', '.btn-approval', '.btn-quotation-email', '.btn-conf-email', '.btn.btn-primary.pull-left.order'];
        }
        else if (vm.TaskQuotationModel.EstimationStatusName === 'Waiting_for_approval') {
            classes = ['.btn-order-details', '.btn-approval-req', '.btn-quotation-email', '.btn-conf-email', '.btn.btn-primary.pull-left.order'];
            vm.ButtonTitles[4] = 'Approval Request Sent';
        }
        else if (vm.TaskQuotationModel.EstimationStatusName === 'Approved') {
            classes = ['.btn-order-details', '.btn-approval', '.btn-conf-email', '.btn.btn-primary.pull-left.order'];
            vm.ButtonTitles[4] = 'Approval Request Sent';
            vm.ButtonTitles[5] = 'Approved';
        }
        else if (vm.TaskQuotationModel.EstimationStatusName === 'Waiting_for_confirmation') {
            classes = ['.btn-order-details', '.btn-approval', '.btn.btn-primary.pull-left.order'];
        }
        else if (vm.TaskQuotationModel.EstimationStatusName === 'Ordered' || vm.TaskQuotationModel.EstimationStatus > 5) {
            classes = ['.btn-temp-reg', '.btn.btn-primary.pull-left.initi', '.btn-approval-req', '.btn-approval', '.btn-conf-email'];
            vm.ButtonTitles[4] = 'Approval Request Sent';
            vm.ButtonTitles[5] = 'Approved';
            vm.ButtonTitles[8] = 'Confirmation Email Sent';
        }
        classes.forEach(function (clazz) {
            angular.element(document.querySelector(clazz)).attr('disabled', true);
        });
    }

    vm.onOrderValueChange = function () {
        vm.OrderModel.OriginalCost = vm.OrderModel.StaffPaymentCost + vm.OrderModel.StaffBillingCost;
        calculateOrder();
    }

    var calculateOrder = function () {
        vm.OrderModel.QuoatedPrice = vm.EstimationModel.QuotationInclTax;
        vm.OrderModel.ConsumptionTax = vm.EstimationModel.ConsumptionTax;
        vm.OrderModel.CostExclTax = vm.EstimationModel.ExcludedTaxCost;
        vm.OrderModel.BillingAmount = vm.OrderModel.QuoatedPrice + vm.OrderModel.ConsumptionTax + vm.OrderModel.CostExclTax;
        vm.OrderModel.WithdrawlAmount = vm.OrderModel.StaffPaymentCost - vm.OrderModel.StaffBillingCost;
        if (vm.OrderModel.OriginalCost > 0) {
            vm.OrderModel.Profit = vm.OrderModel.QuoatedPrice - vm.OrderModel.OriginalCost;
            vm.OrderModel.GrossInterestRate = (vm.OrderModel.Profit / vm.OrderModel.OriginalCost) * 100;
        }
        vm.calculateHands();
    }

    var loadOrder = function () {        
        ajaxService.AjaxPostWithData(BaseModel, "order/orderitem/" + vm.EstimationModel.ID, function (r) {           
            if (r.RegistrationID > 0) {
                vm.OrderModel = r;

                vm.OrderModel.BillingDate = vm.EstimationModel.FinalDeliveryDate;

                if (vm.OrderModel.ComplainDate) {
                    vm.OrderModel.ComplainDate = new Date(vm.OrderModel.ComplainDate);
                    vm.OrderModel.ComplainDate = $filter('date')(new Date(vm.OrderModel.ComplainDate), 'MM/dd/yyyy');
                }
                if (vm.OrderModel.ResponseComplainDate) {
                    vm.OrderModel.ResponseComplainDate = $filter('date')(new Date(vm.OrderModel.ResponseComplainDate), 'MM/dd/yyyy');
                }
                $localStorage.StoredOrderModel = vm.OrderModel;
                loadOrderDetails();
                vm.calculateHands();
            } else {
                calculateOrder();
                vm.calculateHands();
            }
        }, errorFunction);
    }

    var loadOrderDetails = function () {
        if (vm.OrderModel.ID) {
            ajaxService.AjaxPostWithData(BaseModel, "orderdetails/list/" + vm.OrderModel.ID, function (r) {
                if (r) {
                    vm.OrderDetails = [].concat(r);
                    for (var x = 0; x < vm.OrderDetails.length; x++) {
                        if (vm.OrderDetails[x].DeliveryDate) {
                            vm.OrderDetails[x].DeliveryDate = $filter('date')(new Date(vm.OrderDetails[x].DeliveryDate), 'MM/dd/yyyy');
                        }
                    }
                    $localStorage.StoredOrderDetails = vm.OrderDetails;
                    $rootScope.$emit("listenToManipulateCommSelectionItem", {});
                }
            }, errorFunction);
        }
    }

    $scope.$on("selectedOutwardSales", function (event, response) {
        vm.EstimationModel.OutwardSalesID = response[0].ID;
    });
    $scope.$on("selectedLargeSales", function (event, response) {
        vm.EstimationModel.LargeSalesID = response[0].ID;
    });
    $scope.$on("selectedApprovals", function (event, response) {
        vm.EstimationModel.ApprovalID = response[0].ID;
    });
    $scope.$on("selectedRepresentative", function (event, response) {
        vm.EstimationModel.SalesPersonID = response[0].ID;
    });
    $scope.$on("selectedprepQuotaion", function (event, response) {
        vm.EstimationModel.AssistantID = response[0].ID;
    });
    $scope.$on("selectedCoordinator", function (event, response) {
        vm.EstimationModel.CoordinatorID = response[0].ID;
    });
    $scope.$on("selectedClient", function (event, response) {
        vm.EstimationModel.ClientID = response[0].ID;
    });
    $scope.$on("selectedTrade", function (event, response) {
        vm.EstimationModel.TradingID = response[0].Id;
    });
    $scope.$on("selectedTeam", function (event, response) {
        vm.EstimationModel.AffiliateTeamID = response[0].Id;
    });
    $scope.$on("selectedStaff", function (event, response) {
        vm.OrderDetails = vm.OrderDetails.filter(function (item) {
            return item.EstimationDetailsID !== response[0].Item.EstimationDetailID;
        });
        var obj = {
            OrderID: vm.OrderModel.ID,
            EstimationDetailsID: response[0].Item.EstimationDetailsID,
            EstimationID: vm.EstimationModel.ID,
            StaffID: response[0].ID,
            WorkingStatus: response[0].Item.WorkingStatus,
            DeliveryDate: response[0].Item.DeliveryDate,
            PaymentAmount: 0,
            AgencyCommission: 0,
            ComplainDetails: vm.OrderModel.ComplainDetails,
            RemitanceDate: new Date(),
            DepositAmount: 0,
            StaffNo: response[0].StaffNo,
            StaffName: response[0].Name,
            EmailAddress: response[0].StaffEmailID,
            PageCount1: response[0].Item.PageCount1,
            EvaluationAmount: response[0].Item.UnitPrice1,
            Penalty: '',
            Residence: response[0].Address
        };
        vm.OrderDetails.push(obj);
        $localStorage.StoredOrderDetails = vm.OrderDetails;
    });
    vm.goBack = function (id) {
        if (id == null)
        {
            var taskID = $localStorage.TaskID;
            $state.go('TaskQuotationInput', {
                id: taskID
            });
        }
        else
        {
            vm.EstimationModel = $localStorage.TaskEstimation;
            $state.go('TaskQuotationInput', {
                id: id
            });
        }        
    };
    vm.prepareQuotationPdf = function () {
        $http.post(appSettings.API_BASE_URL + 'taskquotation/generatepdf', vm.EstimationModel, { responseType: 'arraybuffer' })
          .then(function (data) {
              console.log(data);
              var file = new Blob([data.data], { type: 'application/pdf' });
              //fileURL = URL.createObjectURL(file);
              //window.open(fileURL);
              saveAs(file, 'Quotation.pdf');
          });
    };

    vm.saveEstimationAction = function (flag) {
        if (!flag) {
            vm.EstimationAction.OperationBy = currentUser.CurrentUserID;
            vm.EstimationAction.EstimationID = vm.EstimationModel.ID;
            var model = {
                'EstimationAction': vm.EstimationAction,
                'CulturalItem': vm.CulturalItem,
                'CurrentUserID': currentUser.CurrentUserID,
                'ApplicationID': appSettings.ApplicationId,
                'Culture': currentCulture
            };
            ajaxService.AjaxPostWithData(model, "estimationaction/save", function (response) {
                toastr.success($filter('translator')('DATASAVED'));  
                vm.EstimationAction = null;
                vm.CulturalItem.ActionDetails = '';
                loadEstimationActionList();
            }, errorFunction);
        }
    };

    var successFunction = function (response) {
        toastr.success($filter('translator')('DATASAVED'));
    };

    var errorFunction = function (response) {
        toastr.error("An error has occured, operation aborted");
    };

    var loadEstimationActionList = function () {
        ajaxService.AjaxPostWithData(BaseModel, "estimationaction/list/" + vm.EstimationModel.ID, function (res) {
            if (res) {
                var actionItems = [];
                for (var x = 0; x < res.length; x++) {
                    var actionItem = {
                        ID: res[x].ID,
                        EstimationID: res[x].EstimationID,
                        Date: res[x].NextActionDate,
                        Updatedby: res[x].OperandName,
                        Detail: res[x].ActionDetails
                    };
                    actionItems.push(actionItem);
                }
                vm.EstimationModel.ActionItems = [].concat(actionItems);
            }
        }, errorFunction);
    };

    vm.deleteEstimationAction = function (item) {
        ajaxService.AjaxPostWithData(BaseModel, "estimationaction/delete/" + item.ID, function (response) {
            toastr.success($filter('translator')('DATASAVED'));
            loadEstimationActionList();
        }, errorFunction);
    }

    vm.saveOrder = function () {
        if (vm.OrderDetails.length === 0) {
            toastr.error($filter('translator')('ORDERITEMSNOTFOUND'));
            return false;
        }
        vm.OrderModel.RegistrationID = vm.EstimationModel.RegistrationID;
        vm.OrderModel.EstimationID = vm.EstimationModel.ID;
        var model = {
            'Estimation': vm.EstimationModel,
            'Order': vm.OrderModel,
            'OrderDetails': vm.OrderDetails,
            'CulturalItem': vm.CulturalItem,
            'CurrentUserID': currentUser.CurrentUserID,
            'ApplicationID': appSettings.ApplicationId,
            'Culture': currentCulture
        };
        ajaxService.AjaxPostWithData(model, "orderdetails/save", successFunction, errorFunction);
    }

    vm.displayInCalendar = function (dt) {
        $localStorage.HasLocalData = true;
        $localStorage.SelectedDate = dt;

        $state.transitionTo($state.current, $stateParams, {
            reload: true,
            inherit: false,
            notify: true
        });
    };

    vm.calculateHands = function () {
        if (vm.Hands.ID > 0) {
            var r = vm.Hands;
            vm.OrderModel.SCharge = ((r.SCharge / 100) * vm.OrderModel.Profit);
            vm.OrderModel.BCharge = ((r.BCharge / 100) * vm.OrderModel.Profit);
            vm.OrderModel.CCharge = ((r.CCharge / 100) * vm.OrderModel.Profit);
            vm.OrderModel.FrontSalesCharge = ((r.FrontSalesCharge / 100) * vm.OrderModel.Profit);
            vm.OrderModel.ActionSales = ((r.PersonCharge2 / 100) * vm.OrderModel.Profit);
            vm.OrderModel.PartnerCharge = ((r.PartnerCharge / 100) * vm.OrderModel.Profit);
            vm.OrderModel.PersonCharge1 = ((r.PersonCharge1 / 100) * vm.OrderModel.Profit);
            vm.OrderModel.PersonCharge2 = ((r.PersonCharge2 / 100) * vm.OrderModel.Profit);
            vm.OrderModel.IntResponse = ((r.PersonCharge2 / 100) * vm.OrderModel.Profit);
            vm.OrderModel.ExtResponse = ((r.PersonCharge2 / 100) * vm.OrderModel.Profit);
            vm.OrderModel.Sales = ((r.Sales / 100) * vm.OrderModel.Profit);
        }
    }

    var prepareEventObject = function (items, isForce) {
        for (var x = 0; x < items.length; x++) {
            var obj = {
                id: items[x].EstimationDetailsID,
                title: items[x].SourceLanguage + '->' + items[x].TargetLanguage,
                start: new Date(items[x].DeliveryDate),
                allDay: true,
                stick: true
            }
            if (defaultCalDate === null) {
                defaultCalDate = items[x].DeliveryDate;
            }
            calEvents.push(obj);
        }
        $localStorage.CalEvents = calEvents;

        if (isForce) {
            var sDate = new Date($localStorage.SelectedDate);
            $localStorage.SelectedDate = null;
            uiCalendarConfig.calendars.myCalendar.fullCalendar('gotoDate', sDate);
        } else {
            uiCalendarConfig.calendars.myCalendar.fullCalendar('gotoDate', defaultCalDate);
        }
    };

    $scope.renderCalender = function (calendar) {
        $timeout(function () {
            if (uiCalendarConfig.calendars[calendar]) {
                uiCalendarConfig.calendars[calendar].fullCalendar('render');
            }
        });
    };

    $scope.eventRender = function (event, element, view) {
        element.attr({
            'tooltip': event.title,
            'tooltip-append-to-body': true
        });
        $compile(element)($scope);
    };

    //$scope.alertOnDrop = function (event, delta, revertFunc, jsEvent, ui, view) {
    //    var obj = vm.EstimationModel.EstimationItems.filter(function (item) {
    //        return item.EstimationDetailsID === event.id;
    //    });
    //    obj[0].DeliveryDate = $filter('date')(new Date(event.start), 'MM/dd/yyyy');
    //};

    $scope.uiConfig = {
        calendar: {
            height: 450,
            editable: true,
            header: {
                left: 'title',
                center: '',
                right: 'today prev,next'
            },
            eventClick: $scope.alertOnEventClick,
            eventDrop: $scope.alertOnDrop,
            eventResize: $scope.alertOnResize,
            eventRender: $scope.eventRender
        }
    };

    $scope.eventSources = [calEvents];
}