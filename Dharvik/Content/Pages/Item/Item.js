var search = function () {
    window.location = '/Item/Index';
}

$(document).ready(function () {
   
    $('#ulPaginationAccountDetail').pagination({
        items: 0,
        currentPage: 1,
        displayedPages: 10,
        cssStyle: '',
        useAnchors: true,
        prevText: '&laquo;',
        nextText: '&raquo;',
        onInit: function () {
            buildPaganationAccount();
        },
        onPageClick: function (page, evt) {
            fillAccountTable(page, 1);
        }
    });
    $("#ddlRowPerPage").on('change', function (evt, params) {
        ddlRowPerPageChange();
    });
    $("#ddlRowPerPage").select2({ minimumResultsForSearch: Infinity });

    $('#ulPaginationAccountDetailAdv').pagination({
        items: 0,
        currentPage: 1,
        displayedPages: 10,
        cssStyle: '',
        useAnchors: true,
        prevText: '&laquo;',
        nextText: '&raquo;',
        onInit: function () {
            buildPaganationAccount();
        },
        onPageClick: function (page, evt) {
            fillAccountTable(page, 2);
        }
    });
    $("#ddlRowPerPageAdv").on('change', function (evt, params) {
        ddlRowPerPageChangeAdv();
    });
    $("#ddlRowPerPageAdv").select2({ minimumResultsForSearch: Infinity });

    $("#popTransDiv").PopupWindow({
        title: "Order Transaction Details",
        modal: true,
        autoOpen: false,
        top: 200,
        left: 450,
        height: 350,
        width: 750,

    });


    $("#btnAddChat").on("click", function (event) {
        $("#hndCID").val(0);
        $("#txtChatTitle").val("");
        $("#txtChatBody").val("");
        $("#popChatDet").PopupWindow("open");
        $("#btnDeletechat").addClass("hidden");
        $("#chatterUploadDiv").removeClass("hidden");
        $("#linkChatFile").addClass("hidden");
    });
    $("#popChatDet").PopupWindow({
        title: "Add Chat",
        modal: false,
        autoOpen: false,
        top: 220,
        left: 400,
        height: 380,

    });

    $("#popEmaillHistoryDiv").PopupWindow({
        title: "Email History",
        modal: false,
        autoOpen: false,
        top: 220,
        left: 400,
        height: 380,

    });


    $("#popImportFile").PopupWindow({
        title: "Import File to Account",
        modal: false,
        autoOpen: false,
        top: 220,
        left: 300,
        height: 380,

    });

    $("#btnImport").on("click", function (event) {
        $("#popImportFile").PopupWindow("open");
    });


});
var ddlRowPerPageChange = function () {
    buildPaganationAccount();
}
var ddlRowPerPageChangeAdv = function () {
    buildAdvPaganationAccount();
}


   

var deleteAccount = function () {
    var accountID = $("#hndAccountID").val();
    var model = { AccountID: accountID };
    $.confirm({
        title: 'Alert!',
        content: 'Are you sure you want to delete the data?',
        type: 'blue',
        buttons: {
            confirm: function () {
                $.ajax({
                    url: "/Customer/DeleteAccountData",
                    type: "post",
                    data: JSON.stringify(model),
                    contentType: "application/json; charset=utf-8", // content type sent to server
                    dataType: "json", //Expected data format from server
                    success: function (response) {
                        if ($.trim(response.error) != "") {
                            $.alert({
                                title: 'Alert!',
                                content: response.error,
                                type: 'red'
                            });
                        } else {
                            $.alert({
                                title: 'Msg!',
                                content: 'Data Deleted Successfully.',
                                type: 'blue',
                                buttons: {
                                    Ok: function () {
                                        window.location = '/Customer/AddEdit';
                                    }
                                }
                            });
                        }
                    }
                });
            },
            cancel: function () {
                return;

            }
        }
    });
}



var clearAccountField = function () {
    $("#hndAccountID").val(0);
    $("#txtAccountName").val("");

    $("#txtPhone").val("");

    $("#txtBillingAddress").val("");
    $("#txtBillingCity").val("");
    $("#txtBillingState").val("");
    $("#txtBillingZip").val("");
    $("#txtBillingCountry").val("");
    $("#txtShippingAddress").val("");
    $("#txtShippingCity").val("");
    $("#txtShippingState").val("");
    $("#txtShippingZip").val("");
    $("#txtShippingCountry").val("");

}
var newAccount = function () {
    window.location = '/Supplier/AddEdit';
}
var editAccount = function (id) {
    window.location = '/Supplier/Edit/' + id;
}
var buildPaganationAccount = function () {
    $("#s2id_ddlRowPerPage").removeClass("hidden");
    $("#ulPaginationAccountDetail").removeClass("hidden");
    $("#s2id_ddlRowPerPageAdv").addClass("hidden");
    $("#ulPaginationAccountDetailAdv").addClass("hidden");
    $("#ulPaginationAccountDetail").addClass("simple-pagination");

    $("#divLoader").show();
    var accountName = $("#txtAccountName").val();
    var rowDisplay = $("#ddlRowPerPage").val();

    var model = {
        CustName: accountName,
        RowDisplay: rowDisplay
    };
    //alert(JSON.stringify(model));

    $.ajax({
        url: '/Customer/GetCustAccountFilterRangeList',
        type: "post",
        data: JSON.stringify(model),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            $("#divLoader").hide();
            if ($.trim(response.error) != "") {
                //this.cancelChanges();
            } else {
                var pnarray = response.PageNumber.split('|');
                $('#ulPaginationAccountDetail').pagination('updateItems', pnarray[0]);
                $('#ulPaginationAccountDetail').pagination('selectPage', 1);
                $("#lblTotalRecords").text("Total Records : " + pnarray[1]);
                fillAccountTable(1, 1);
            }
        }
    });
}
var fillAccountTable = function (PN, SO) {
    $("#divLoader").show();


    var accountName = $("#txtAccountName").val();
    var purchaseprice = $("#txtPurchasePrice").val();

    var model = {
        ItemName: accountName,
        PurchasePrice:purchaseprice,

    };
    $.ajax({
        url: '/Items/GetItemList',
        type: "post",
        data: JSON.stringify(model),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            $("#divLoader").hide();
            if ($.trim(response.error) != "") {
                $.alert({
                    title: 'Alert!',
                    content: response.error,
                    type: 'blue'
                });
            } else {
                $("#tblAccounts>tbody").empty();
                $.each(response, function (index, elementValue) {
                    var html = '';
                    html += '<tr  class="gradeX" data-value="' + elementValue.ItemId + '">';
                    html += '<td  class="sorting_1 pd-vehicletblText"><a href="#"  onclick="editAccount(' + elementValue.ItemId + ');">' + elementValue.ItemName + '</a></td>';
                    html += '<td class="pd-vehicletblText"><a href="#"  onclick="editAccount(' + elementValue.ItemId + ');"> ' + elementValue.ItemId + '</td>';
                    html += '<td class="pd-vehicletblText"> ' + elementValue.AccountStatusText + '</td>';
                    html += '<td class="pd-vehicletblText"> ' + parseFloat(elementValue.OpeningBalance).toFixed(2) + '</td>';
                    html += '<td class="pd-vehicletblText"> ' + elementValue.Mobile + '</td>';

                    html += '<td class="pd-vehicletblText"> ' + elementValue.CreatedDateText + '</td>';

                    html += '</tr>';
                    $("#tblAccounts>tbody").append(html);
                });
            }
        }
    });
}

var sendEmail = function () {
    $("#divLoader").show();
    var fromEmail = $("#ddlEmailFrom").val();
    var toEmail = $("#txtToAccountEmail").val();
    var ccEmail = $("#txtCCAccountEmail").val();
    var bccEmail = $("#txtBCCAccountEmail").val();
    var emailSubject = $("#txtAccountSubject").val();
    var emailMessage = CKEDITOR.instances['TemplateHTML'].getData();
    var accountID = $("#hndAccountID").val();
    var attachFile = $("#hndAttachFile").val();
    var errMsg = "";

    if (!toEmail) {
        errMsg += "To Email is required.";
    }
    if (!emailSubject) {
        errMsg += "Subject is required.";
    }
    if (!emailMessage) {
        errMsg += "Message Body is required.";
    }
    var model = {
        FromEmail: fromEmail,
        ToEmail: toEmail,
        CCEmail: ccEmail,
        BCCEmail: bccEmail,
        EmailSubject: emailSubject,
        EmailMessage: emailMessage,
        LeadID: accountID,
        AttachFile: attachFile
    };
    $.ajax({
        url: '/Customer/SendEmail',
        type: "post",
        data: JSON.stringify(model),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            $("#divLoader").hide();
            if ($.trim(response.error) != "") {
                $.alert({
                    title: 'Alert!',
                    content: response.error,
                    type: 'red'
                });
            } else {
                $.alert({
                    title: 'Alert!',
                    content: 'Email Sent Successfully',
                    type: 'blue'
                });
                $("#txtCCLeadEmail").val("");
                $("#txtBCCLeadEmail").val("");
                $("#txtAccountSubject").val("");
                $("#hndAttachFile").val("");
                CKEDITOR.instances['TemplateHTML'].setData("");
            }
        }
    });
}
var saveToFolder = function () {
    $("#divLoader").show();
    var accountID = $("#hndAccountID").val();
    $formData = new FormData();
    $formData.append('AccountID', accountID);
    var $file = document.getElementById('openFileSaveList');
    if ($file.files.length > 0) {
        for (var i = 0; i < $file.files.length; i++) {
            $formData.append('file-' + i, $file.files[i]);
        }
    }
    else {
        $("#divLoader").hide();
        $.alert({
            title: 'Alert!',
            content: "Please select file...!",
            type: 'red'
        });
        return;
    }
    $.ajax({
        url: "/Customer/SaveToFolder",
        type: 'POST',
        data: $formData,
        dataType: 'json',
        contentType: false,
        processData: false,
        success: function (response) {
            $("#divLoader").hide();
            if ($.trim(response.error) != "") {
                $.alert({
                    title: 'Alert!',
                    content: response.error,
                    type: 'red'
                });
            } else {
                $("#fileCount").text(response.Msg);
                $.alert({
                    title: 'Alert!',
                    content: "File Uploaded Successfully.",
                    type: 'blue'
                });

            }
        }
    });
}
var viewFiles = function () {
    $("#divLoader").show();
    $("#popFileDiv").PopupWindow("open");
    var accountID = $("#hndAccountID").val();
    var param = { AccountID: accountID };
    $.ajax({
        url: '/Customer/GetAttachedLeadFiles',
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            $("#divLoader").hide();
            if ($.trim(response.error) != "") {
                $.alert({
                    title: 'Alert!',
                    content: response.error,
                    type: 'blue'
                });
            } else {
                $("#tblAccountFiles>tbody").empty();
                $.each(response.returnREData, function (index, elementValue) {
                    var html = '';
                    html += '<tr  data-value="' + elementValue.ID + '">';
                    html += '<td >' + elementValue.OriginalFileName + '</td>';
                    html += '<td >' + elementValue.CreatedBy + '</td>';
                    html += '<td> ' + elementValue.CreatedDate + '</td>';
                    html += '<td><div><button  onclick="deleteFiles(' + elementValue.ID + ');"><i class="icon-trash" ></i></button></div></td>';
                    //html += '<td>'+$("#linkFile").attr("href", baseURL() + "/FileAttachments/" + elementValue.OriginalFileName)+'</td>';
                    html += '<td><a href="/FileAttachments/' + elementValue.SystemFileName + '" class="btn" id="linkFile" >  <i class="icon-download"></i></a></td>';
                    html += '</tr>';
                    $("#tblAccountFiles>tbody").append(html);
                });
            }
        }
    });
}

var getTransactionDetails = function (accountID) {
    //var accountID = $("#hndAccountID").val();
    var param = { AccountID: accountID }

    $.ajax({
        url: '/Customer/GetTransactionDetails',
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if ($.trim(response.error) != "") {
                $.alert({
                    title: 'Alert!',
                    content: response.error,
                    type: 'blue'
                });
            } else {
                $("#tblDetailTransaction>tbody").empty();
                $.each(response, function (index, elementValue) {
                    var html = '';
                    html += '<tr data-value="' + elementValue.AccountId + '">';
                    html += '<td >' + elementValue.AccountId + '</td>';
                    html += '<td>' + parseFloat(elementValue.Debit).toFixed(2) + '</td>';
                    html += '<td>' + parseFloat(elementValue.Credit).toFixed(2) + '</td>';
                    html += '<td>' + parseFloat(elementValue.Balance).toFixed(2) + '</td>';
                    html += '<td> ' + elementValue.TransDate + '</td>';
                    html += '<td> ' + elementValue.Invoiceid + '</td>';

                    html += '</tr>';
                    $("#tblDetailTransaction>tbody").append(html);
                });
            }
        }
    });
}
var deleteFiles = function (id) {
    $("#divLoader").show();
    $.confirm({
        title: 'Alert!',
        content: 'Are you sure you want to delete the data?',
        type: 'red',
        buttons: {
            confirm: function () {
                deleteFileData(id);
            },
            cancel: function () {
                $("#divLoader").hide();
            }
        }
    });
}
var deleteFileData = function (id) {
    $("#divLoader").show();
    var param = { ID: id };
    console.log(JSON.stringify(param));
    $.ajax({
        url: "/Customer/DeleteFiles",
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8", // content type sent to server
        dataType: "json", //Expected data format from server
        success: function (response) {
            $("#divLoader").hide();
            if ($.trim(response.error) != "") {
                $.alert({
                    title: 'Alert!',
                    content: response.error,
                    type: 'red'
                });
            } else {
                $("#fileCount").text(response.Msg);
                $.alert({
                    title: 'Alert!',
                    content: "File Deleted Successfully..!",
                    type: 'red'
                });
            }
        }
    });
    $('#tblAccountFiles tr[data-value="' + id + '"]').remove();
}


var getEmailData = function (templateID) {
    $("#divLoader").show();
    $("#popEmailTemplateDiv").PopupWindow("close");
    var param = { TemplateID: templateID, AccountID: $("#hndAccountID").val() };
    $.ajax({
        url: "/Customer/GetEmailData",
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        async: false,
        success: function (response) {
            $("#divLoader").hide();
            $("#txtAccountSubject").val(response.subject);
            $("#hndAttachFile").val(response.attachmentFile);
            CKEDITOR.instances['TemplateHTML'].setData(response.html);
        }
    });
}
var getVehicleAOData = function (aoid) {

    var param = { AOID: aoid };
    $.ajax({
        url: "/AgentOrder/GetVehicleAOInfo",
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (response) {
            if (response.vehicleData != "") {
                if (response.vehicleData.length > 0) {
                    $("#divVehAO").removeClass("hidden");
                    //  rowCount = 0;
                    $.each(response.vehicleData, function (index, elementValue) {
                        elementValue.SrNo
                        var html = '';
                        html += '<tr class="trVehicleMainRow pd-vehicletblText" data-value="' + elementValue.SrNo + '">';
                        html += '<td class="pd-vehicletblText" data-makeid="' + elementValue.VehicleMake + '">' + elementValue.VehicleMakeText + '</td>';
                        html += '<td class="pd-vehicletblText"  data-typeid="' + elementValue.VehicleType + '">' + elementValue.VehicleTypeText + '</td>';
                        html += '<td class="pd-vehicletblText"  data-vehicleyear="' + elementValue.VehicleYear + '">' + elementValue.VehicleYear + '</td>';
                        html += '<td class="pd-vehicletblText"  data-vinno="' + elementValue.VINNO + '">' + elementValue.VINNO + '</td>';
                        html += '<td class="pd-vehicletblText hidden" data-licenseplate="' + elementValue.LicensePlate + '">' + elementValue.LicensePlate + '</td>';
                        html += '<td class="pd-vehicletblText hidden" data-dealership="' + elementValue.DealerShip + '">' + elementValue.DealerShip + '</td>';
                        html += '<td class="pd-vehicletblText hidden" data-financecompany="' + elementValue.FinanceCompany + '">' + elementValue.FinanceCompany + '</td>';
                        //html += '<td class="pd-vehicletblText"  class="pd-editdeletetbn"><div><button onclick="editTableRow(' + rowcount + ')"><i class="icon-pencil" ></i></button><button  onclick="removeTableRow(' + rowcount + ');"><i class="icon-trash" ></i></button></div></td>';
                        html += '</tr>';
                        $("#tbl_vehicleLead>tbody").append(html);
                        // rowcount += 1;
                    });
                }
            }
        }
    });
}


function getChatist() {
    var accountID = $("#hndAccountID").val();

    var param = { AccountID: accountID, PageId: 1 };
    $.ajax({
        url: '/Chatter/GetChats',
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if ($.trim(response.error) != "") {
                //this.cancelChanges();
            } else {
                //$("#tblChat>tbody").empty();
                //$.each(response, function (index, elementValue) {
                //    var html = '';
                //    html += '<tr data-value="' + elementValue.CID + '">';
                //    html += '<td><span style="color:#ff6666;">' + elementValue.UserName + '</span> - ' + elementValue.CreatedDate + '</td>';
                //    html += '<tr><td><a href="javascript:void(0);"  onclick="getChat(' + elementValue.CID + ');">' + elementValue.Body + '</a><br/> Seen By: (' + elementValue.ViewedCount + ')' + elementValue.ViewedBy + '</td></tr>';
                //    html += '</tr>';
                //    $("#tblChat>tbody").append(html);
                //});

                $("#tblChat").empty();
                $.each(response, function (index, elementValue) {
                    var html = '';
                    html += '<li data-value="' + elementValue.CID + '">';
                    html += '<div class="article-post"><span class="user-info">' + elementValue.UserName + ' - ' + elementValue.CreatedDate + '</span></div>';
                    html += '<p><a href="javascript:void(0);"  onclick="getChat(' + elementValue.CID + ');">' + elementValue.Body + '</a></p>';
                    html += '<div class="article-post"><span class="user-info">Seen By: (' + elementValue.ViewedCount + ')' + elementValue.ViewedBy + '</span></div>';
                    html += '</li>';
                    $("#tblChat").append(html);
                });
            }
        }
    });
}
function getChat(id) {
    $("#hndCID").val(id);

    var param = { ID: id }
    $.ajax({
        url: '/Chatter/GetChatDet',
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if ($.trim(response.error) != "") {
                //this.cancelChanges();
            } else {

                $("#txtChatTitle").val(response.Title);
                $("#txtChatBody").val(response.Body);
                // CKEDITOR.instances['txtChatBody'].setData(response.Body);
                $("#txtChatLink").val(response.LinkUrl);
                $("#ddlChatType").val(response.Type);
                $("#chatterUploadDiv").addClass("hidden");
                $("#linkChatFile").removeClass("hidden");
                $("#linkChatFile").text(response.OriginalFileName);
                $("#linkChatFile").attr("href", baseURL() + "/FileAttachments/" + response.SystemFileName);
                $("#popChatDet").PopupWindow("open");
                $("#btnDeletechat").removeClass("hidden");
            }
        }
    });
}

var saveUpdateChat = function () {
    $("#divLoader").show();
    var msg = "";
    var accountID = $("#hndAccountID").val();
    var cid = $("#hndCID").val();
    var title = $("#txtChatTitle").val();
    var notes = $("#txtChatBody").val();
    // var notes = CKEDITOR.instances['txtChatBody'].getData();
    var linkurl = $("#txtChatLink").val();
    var ctype = $("#ddlChatType").val();

    if (notes == "") {
        msg += " Please enter Chat Details .<br />";
    }
    //if (notes == "") {
    //    msg += " Please enter Notes Details .<br />";
    //}

    if (msg != "") {
        $.alert({
            title: 'Alert!',
            content: msg,
            type: 'red'
        });
        return;
    }

    $formData = new FormData();

    $formData.append('CID', cid);
    $formData.append('Title', title);
    $formData.append('Body', notes);
    $formData.append('Type', ctype);
    $formData.append('LinkUrl', linkurl);
    $formData.append('AccountID', accountID);

    var $file = document.getElementById('chatterUpload');
    if ($file.files.length > 0) {
        for (var i = 0; i < $file.files.length; i++) {
            $formData.append('file-' + i, $file.files[i]);
        }
    }

    //var model = {
    //    CID: cid,
    //    Title: title,
    //    Body: notes,
    //    Type:ctype,
    //    LinkUrl: linkurl,
    //    AccountId: accountID,
    //}
    // var param = { model: model }
    $.ajax({
        url: "/Chatter/SaveUpdateChat",
        type: 'POST',
        data: $formData,
        dataType: 'json',
        contentType: false,
        processData: false,
        success: function (response) {
            $("#divLoader").hide();
            if ($.trim(response.error) != "") {

            } else {
                if (response.id != 0) {
                    $.alert({
                        title: 'Alert!',
                        content: response.Msg,
                        type: 'blue',

                    });
                    getChatist();
                    $("#popChatDet").PopupWindow("close");
                }
                else {
                    $.alert({
                        title: 'Error!',
                        content: "Error occured while saving data.<br/>Please try later.",
                        type: 'red'
                    });
                }
            }

        }

    });

    return false;
}
var deleteChat = function () {
    $("#divLoader").show();

    var cid = $("#hndCID").val();

    var param = { CID: cid }
    $.ajax({

        url: "/Chatter/DeleteChat",
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            $("#divLoader").hide();
            $.alert({
                title: 'Alert!',
                content: response.MSG,
                type: 'blue',

            });
            getChatist();
            $("#popChatDet").PopupWindow("close");


        }

    });

    return false;
}
var baseURL = function () {
    if (!window.location.origin) {
        window.location.origin = window.location.protocol + "//"
          + window.location.hostname
          + (window.location.port ? ':' + window.location.port : '');
        return window.location.origin //+ "/Creatives"
    } else {
        return window.location.origin //+ "/Creatives"
    }
}
function getEmailHistory() {
    var accountID = $("#hndAccountID").val();

    var param = { AccountID: accountID, PageID: 2 };
    $.ajax({
        url: '/Customer/GetEmailHistory',
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if ($.trim(response.error) != "") {
                //this.cancelChanges();
            } else {
                $("#popEmaillHistoryDiv").PopupWindow("open");
                $("#tblEmailHistory>tbody").empty();
                $.each(response, function (index, elementValue) {
                    var html = '';
                    html += '<tr data-value="' + elementValue.ID + '">';
                    html += '<td>' + elementValue.CreatedDate + '</td>';
                    html += '<td><a href="javascript:void(0);"  onclick="getEmail(' + elementValue.ID + ');">' + elementValue.EmailSubject + '</a></td>';
                    html += '</tr>';
                    $("#tblEmailHistory>tbody").append(html);
                });

            }
        }
    });
}
function getEmail(id) {
    $("#popEmaillHistoryDiv").PopupWindow("close");
    $("#btnSendEmail").addClass("hidden");
    $("#hndCID").val(id);

    var param = { ID: id }
    $.ajax({
        url: '/Customer/GetEmailDet',
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if ($.trim(response.error) != "") {
                //this.cancelChanges();
            } else {

                $("#ddlEmailFrom").val(response.FromEmail);
                $("#txtToAccountEmail").val(response.ToEmails);
                CKEDITOR.instances['TemplateHTML'].setData(response.EmailHTMLBody);
                $("#txtCCAccountEmail").val(response.CCEmails);
                $("#txtBCCAccountEmail").val(response.BCCEmails);
                //$("#chatterUploadDiv").addClass("hidden");
                //$("#linkChatFile").removeClass("hidden");
                $("#txtAccountSubject").val(response.EmailSubject);
                // $("#linkChatFile").attr("href", baseURL() + "/FileAttachments/" + response.SystemFileName);
                //$("#popChatDet").PopupWindow("open");
                //$("#btnDeletechat").removeClass("hidden");
            }
        }
    });
}
function sendNewEmail() {
    $("#btnSendEmail").removeClass("hidden");

    $("#txtCCAccountEmail").val("");
    $("#txtBCCAccountEmail").val("");
    $("#txtAccountSubject").val("");
    $("#hndAttachFile").val("");
    CKEDITOR.instances['TemplateHTML'].setData("");
}

function advSearch() {
    $("#popAdvSearch").PopupWindow("open");
}
var buildAdvPaganationAccount = function () {
    $("#s2id_ddlRowPerPage").addClass("hidden");
    $("#ulPaginationAccountDetail").addClass("hidden");
    $("#s2id_ddlRowPerPageAdv").removeClass("hidden");
    $("#ulPaginationAccountDetailAdv").removeClass("hidden");
    $("#ulPaginationAccountDetail").removeClass("simple-pagination");


    $("#divLoader").show();
    var accountName = $("#txtAccName").val();
    var rowDisplay = $("#ddlRowPerPageAdv").val();
    var cToDate = $("#dtCTotDate").val();
    var cFromDate = $("#dtCFromDate").val();
    var accStatus = $("#ddlAccountStatus").val();

    var model = {
        AccountName: accountName,
        RowDisplay: rowDisplay,
        CreatedDate: cFromDate,
        LastModifiedDate: cToDate,
        AccountStatus: accStatus,
    };
    //alert(JSON.stringify(model));

    $.ajax({
        url: '/Customer/GetAccountAdvSearch',
        type: "post",
        data: JSON.stringify(model),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            $("#divLoader").hide();
            if ($.trim(response.error) != "") {
                //this.cancelChanges();
            } else {
                var pnarray = response.PageNumber.split('|');
                $('#ulPaginationAccountDetailAdv').pagination('updateItems', pnarray[0]);
                $('#ulPaginationAccountDetailAdv').pagination('selectPage', 1);
                $("#lblTotalRecords").text("Total Records : " + pnarray[1]);
                $("#popAdvSearch").PopupWindow("close");
                fillAccountTable(1, 2);
            }
        }
    });
}

var getHistoryList = function () {
    var accountID = $("#hndAccountID").val();
    var param = { AccountID: accountID };
    $.ajax({
        url: '/Customer/HistoryDetail',
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            if ($.trim(response.error) != "") {
            } else {
                $("#tblHistoryDetail").empty();
                $.each(response, function (index, elementValue) {
                    var html = '';
                    html += '<li>';
                    html += '<div class="article-post"><span class="user-info">' + elementValue.UserName + ' - ' + elementValue.UpdateDate + '</span></div>';
                    html += '<p>' + elementValue.UpDateDetail + '</p>';
                    html += '</li>';
                    $("#tblHistoryDetail").append(html);
                });
            }
        }
    });
}
