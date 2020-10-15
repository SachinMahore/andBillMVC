$(document).ready(function () {
    getClientDetails(1);
    $("#txtCustomerName").focus();

    $("#popAddCustomer").PopupWindow({
        title: "Add Customer",
        modal: true,
        autoOpen: false,
        top: 150,
        left: 250,
        height: 350,
        width: 650,

    });

    $("#popAddItem").PopupWindow({
        title: "Add Item",
        modal: true,
        autoOpen: false,
        top: 150,
        left: 250,
        height: 350,
        width: 650,

    });

    $('[data-toggle="tooltip"]').tooltip();

    $("#txtBItemName").autocomplete({
       
        source: function (request, response) {
           
            $.ajax({
                url: "/Items/SearchItem",
                type: "POST",
                dataType: "json",
                data: { Prefix: request.term },
                success: function (data) {
                    response($.map(data, function (item) {
                        return { label: item.ItemName, value: item.ItemName,itemId:item.ItemId, hsn: item.HSN, rate: item.SalePrice, gst: item.Vat };
                    }))

                }
            })
        },
        minLength: 2,
        select: function (event, ui) {
            $("#txtRate").val(ui.item.rate);
            $("#txtHSN").val(ui.item.hsn);
            $("#txtItemGST").val(ui.item.gst);
            $("#hndItemId").val(ui.item.itemId);
            var gstvalue = (ui.item.rate * parseFloat(ui.item.gst).toFixed(2)) / 100;
            $("#txtItemTotal").val(ui.item.rate + gstvalue);
        }
    });

    $("#txtCustomerName").autocomplete({

        source: function (request, response) {

            $.ajax({
                url: "/Customer/SearchCustomer",
                type: "POST",
                dataType: "json",
                data: { Prefix: request.term },
                success: function (data) {
                    response($.map(data, function (item) {
                      
                        return { label: item.CustName, value: item.CustName, custId: item.CustId, mobile: item.Mobile,gst:item.GST,address:item.Address };
                        
                    }))
                   
                }
            })
        },
        minLength: 2,
        select: function (event, ui) {                    
            $("#txtMobileNo").val(ui.item.mobile);
            $("#txtAddres").val(ui.item.address);
            $("#txtCustGst").val(ui.item.gst);
            $("#txtCustId").val(ui.item.custId);
            $("#txtBItemName").focus();
        }   
        //messages: {
        //    noResults: "", results: ""
        //}
    });

    $("#txtQTY").blur(function () {
        var rate = $("#txtRate").val();
        var qty = $("#txtQTY").val();
        var gst = $("#txtItemGST").val();
        var disc = $("#txtItemDisc").val();
        var totprice = (parseFloat(rate).toFixed(2) * parseFloat(qty).toFixed(2));
        var discvalue = (parseFloat(totprice).toFixed(2) * parseFloat(disc).toFixed(2)) / 100;
        var subtotal = (parseFloat(totprice).toFixed(2) - parseFloat(discvalue).toFixed(2));
        var gstvalue = (parseFloat(subtotal).toFixed(2) * parseFloat(gst).toFixed(2)) / 100;
        $("#txtItemTotal").val((subtotal+gstvalue).toFixed(2));
    });
    $("#txtItemDisc").blur(function () {
        var rate = $("#txtRate").val();
        var qty = $("#txtQTY").val();
        var gst = $("#txtItemGST").val();
        var disc = $("#txtItemDisc").val();
        var totprice = (parseFloat(rate).toFixed(2) * parseFloat(qty).toFixed(2));
        var discvalue = (parseFloat(totprice).toFixed(2) * parseFloat(disc).toFixed(2)) / 100;
        var subtotal = (parseFloat(totprice).toFixed(2) - parseFloat(discvalue).toFixed(2));
        var gstvalue = (parseFloat(subtotal).toFixed(2) * parseFloat(gst).toFixed(2)) / 100;
        $("#txtItemTotal").val((subtotal + gstvalue).toFixed(2));
    });
    $("#txtPaidAmt").blur(function () {
        var totamt = $("#lblTotal").text();
        var paidamt = $("#txtPaidAmt").val();
        var baltot = (parseFloat(totamt).toFixed(2) - parseFloat(paidamt).toFixed(2));
 
        $("#lblBalanceTotal").text((baltot).toFixed(2));
    });
});

function showCustomer() {
    clearCustomer();
    $("#popAddCustomer").PopupWindow("open");
}

function showItems() {
    $("#popAddItem").PopupWindow("open");
}

var saveUpdateItems = function () {
    var msg = "";  
    var itemname = $("#txtItemName").val();
    var pprice = $("#txtPurchasePrice").val();
    var pprice = $("#txtPurchasePrice").val();
    var sprice = $("#txtSalePrice").val();
    var unit = $("#ddlUnit").val();
    var idetails = $("#txtDetails").val();
    //var expdate = $("#ddlUnit").val();
    var cat = $("#ddlCat").val();
    var barcode = $("#txtBarcode").val();

    if (itemname == "") {
        msg += " Please enter Item Name .<br />";
    }
    if (pprice == "") {
        msg += " Please enter Purchase Price .<br />";
    }
    if (sprice == "") {
        msg += " Please enter Sale Price .<br />";
    }
    if (msg != "") {
        $.alert({
            title: 'Alert!',
            content: msg,
            type: 'red'
        });
        return;
    }
    var model = {
        ItemName: itemname,
    PurchasePrice:pprice,
    SalePrice:sprice,
    //ExpiryDate :expdate,
    CatId: cat,
    Unit:unit,
    Details:idetails,
    Barcode: barcode,
    }
    var param = { model: model }
    $.ajax({
        url: "/Items/SaveUpdateItems",
        method: "post",
        data: model,
        contentType: "application/json; charset=utf-8", // content type sent to server
        dataType: "json", //Expected data format from server
        success: function (response) {
            if ($.trim(response.error) != "") {

            } else {
                if (response.id != 0) {
                    $.alert({
                        title: 'Msg!',
                        content: response.MSG,
                        type: 'blue',

                    });
                    getNotesList();

                }
                else {
                    $.alert({
                        title: 'Alert!',
                        content: "Error occured while saving data.<br/>Please try later.",
                        type: 'red'
                    });
                }
            }

        }

    });

    return false;
}
function getClientDetails(id) {
    //$("#hndNID").val(id);
    var param = { ID: id }
    $.ajax({
        url: "/Client/GetClientDet",
        type: "post",
        data: JSON.stringify(param),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if ($.trim(response.error) != "") {
                //this.cancelChanges();
            } else {

                $("#lblClientName").text(response.ClientName);
                $("#lblClientMobile").text(response.Mobile);
                $("#lblClientAddress").text(response.Address);
                $("#lblClientGst").text(response.GST);
            }
        }
    });
}

var saveCustomerName = function () {
    var msg = "";
 
    var customername = $("#txtCustName").val();
    var address = $("#txtAddress").val();
    var mobile = $("#txtMobile").val();
    var email = $("#txtEmail").val();
    var details = $("#txtDetails").val();
    var date = $("#txtDate").val();
   
    var status = $("#txtStatus").val();
    var Gst = $("#txtGST").val();
    var pan = $("#txtPAN").val();

    if (customername == "") {
        msg += " Please enter Customer Name .<br />";
    }
    if (address == "") {
        msg += " Please enter Address .<br />";
    }
    if (mobile == "") {
        msg += " Please enter Mobile .<br />";
    }
    if (msg != "") {
        $.alert({
            title: 'Alert!',
            content: msg,
            type: 'red'
        });
        return;
    }
    var model = {

        CustName: customername,
        Address: address,
        Mobile: mobile,
        
        Email: email,
        Details: details,
        Date: date,
        Status: status,
        GST: Gst,
        PAN:pan,
    }
    console.log(model)
    $.ajax({
        url: "/Customer/SaveCustomerName",
        method: "post",
        data: model,
        contentType: "application/json; charset=utf-8", // content type sent to server
        dataType: "json", //Expected data format from server
        success: function (response) {
            if ($.trim(response.error) != "") {

            } else {
                if (response.id != 0) {
                    $.alert({
                        title: 'Msg!',
                        content: response.MSG,
                        type: 'blue',

                    });
                    $("#popAddCustomer").PopupWindow("close");

                }
                else {
                    $.alert({
                        title: 'Alert!',
                        content: "Error occured while saving data.<br/>Please try later.",
                        type: 'red'
                    });
                }
            }

        }

    });

    return false;
}

function clearCustomer()
{
  $("#txtPCustId").val("");
  $("#txtCustName").val("");
  $("#txtAddress").val("");
  $("#txtMobile").val("");
  $("#txtEmail").val("");
  $("#txtDetails").val("");
  $("#txtDate").val("");

  $("#txtStatus").val("");
  $("#txtGST").val("");
  $("#txtPAN").val("");
}

var rowcount = 1;
var totalAmt = 0.0;
var subTotal = 0.0;
var totalGst = 0.0;
var totalQty = 0.0;
var totalDisc = 0.0;
var saveBillItem = function () {
    var msg = "";
    var rate = $("#txtRate").val();
    var qty = $("#txtQTY").val();
    var gst = $("#txtItemGST").val();
    var disc = $("#txtItemDisc").val();
    var totprice = (parseFloat(rate).toFixed(2) * parseFloat(qty).toFixed(2));
    var discvalue = (parseFloat(totprice).toFixed(2) * parseFloat(disc).toFixed(2)) / 100;
    var subtotal = (parseFloat(totprice).toFixed(2) - parseFloat(discvalue).toFixed(2));
    var gstvalue = (parseFloat(subtotal).toFixed(2) * parseFloat(gst).toFixed(2)) / 100;
    var billitem = $("#txtBItemName").val();
    var itemid = $("#hndItemId").val(); 
    var hsnsac = $("#txtHSN").val();
    var gst = $("#txtItemGST").val();
    var total = $("#txtItemTotal").val();
      
    if (!billitem) {
        msg += " Please enter Bill Item .<br />";
    }
    if (rate == 0) {
        msg += " Please enter Rate .<br />";
    }
    if (qty == 0) {
        msg += " Please enter Quantity .<br />";
    }
    if (msg != "") {
        $.alert({
            title: 'Alert!',
            content: msg,
            type: 'red'
        });
        return;
    }
    if (editRowCount > 0) {
        $('#tblBillItem tr[data-value="' + editRowCount + '"]').remove();
        editRowCount = 0;
    }
    var html = '';
    html += '<tr class="trVehicleMainRow pd-vehicletblText" data-value="' + rowcount + '">';
    html += '<td class="pd-vehicletblText"  data-itemid="' + itemid + '">' + itemid + '</td>';
    html += '<td class="pd-vehicletblText"  data-itemid="' + itemid + '">' + billitem + '</td>';
    html += '<td class="pd-vehicletblText"  data-rate="' + rate + '">' + rate + '</td>';
    html += '<td class="pd-vehicletblText"  data-hsnsac="' + hsnsac + '">' + hsnsac + '</td>';
    html += '<td class="pd-vehicletblText"  data-qty="' + qty + '">' + qty + '</td>';
    html += '<td  class="pd-vehicletblText " data-disc="' + disc + '">' + disc + '</td>';
    html += '<td  class="pd-vehicletblText " data-gst="' + gst + '">' + gst + '</td>';
    html += '<td  class="pd-vehicletblText" data-total="' + total + '">' + total + '</td>';
    html += '<td  class="pd-vehicletblText hidden" data-subtotal="' + subtotal + '">' + subtotal + '</td>';
    html += '<td  class="pd-vehicletblText hidden" data-gstvalue="' + gstvalue + '">' + gstvalue + '</td>';
    html += '<td  class="pd-vehicletblText hidden" data-discvalue="' + discvalue + '">' + discvalue + '</td>';
    //html += '<td class="pd-vehicletblText"  class="pd-editdeletetbn"><div><button  onclick="editTableRow(' + rowcount + ')"><i class="icon-pencil" ></i></button><button class="pd-btndelete"  onclick="removeTableRow(' + rowcount + ');"><i class="icon-trash"  ></i></button></div></td>';
    html += '<td class="pd-vehicletblText"  class="pd-editdeletetbn"><div><button class="pd-btndelete"  onclick="removeTableRow(' + rowcount + ');"><i class="icon-trash"  ></i></button></div></td>';

    html += '</tr>';
    $("#tblBillItem>tbody").append(html);
    rowcount += 1;
    totalAmt = parseFloat(totalAmt) + parseFloat(total) ;
    subTotal = parseFloat(subTotal) + parseFloat(subtotal);
    totalGst = parseFloat(totalGst) + parseFloat(gstvalue);
    totalQty = parseFloat(totalQty) + parseFloat(qty);
    totalDisc = parseFloat(totalDisc) + parseFloat(discvalue);

    $("#lblSubtotal").text(subTotal.toFixed(2));
    $("#lblIgst").text(totalGst.toFixed(2));
    $("#lblSgst").text((parseFloat(totalGst) / 2).toFixed(2));
    $("#lblCgst").text((parseFloat(totalGst) / 2).toFixed(2));
    $("#lblTotalQty").text(totalQty);
    $("#lblTotal").text(totalAmt.toFixed(2));
    $("#txtPaidAmt").val(totalAmt.toFixed(2));
    $("#lblBalanceTotal").text(0);
    $("#lblDiscTotal").text(totalDisc.toFixed(2));

    $("#txtRate").val(0);
     $("#txtQTY").val(1);
     $("#txtItemGST").val(0);
     $("#txtItemDisc").val(0);
    $("#txtBItemName").val("");
     $("#hndItemId").val("");
      $("#txtHSN").val("");
     total = $("#txtItemTotal").val(0);
    $("#txtBItemName").focus();
}
var editRowCount = 0;
var editTableRow = function (id) {
    editRowCount = id;

    var rowEdit = $('#tblBillItem tr[data-value="' + id + '"]');
    $("#hndItemId").val($(rowEdit).find("td:eq(0)").attr("data-itemid"));
    $('#txtBItemName').val($(rowEdit).find("td:eq(1)").attr("data-billitem"));
    $("#txtRate").val($(rowEdit).find("td:eq(2)").attr("data-rate"));
    $('#txtQTY').val($(rowEdit).find("td:eq(4)").attr("data-qty"));
    $('#txtItemDisc').val($(rowEdit).find("td:eq(5)").attr("data-disc"));
    $('#txtItemTotal').val($(rowEdit).find("td:eq(7)").attr("data-total"));
    //$('#txtItemDisc').val($(rowEdit).find("td:eq(5)").attr("data-disc"));
}
var removeTableRow = function (id) {

    $.confirm({
        title: 'Alert!',
        content: '"Are you sure you want to delete the data?"',
        type: 'red',
        buttons: {
            confirm: function () {
           
                var rowEdit = $('#tblBillItem tr[data-value="' + id + '"]');
                var totamt = $(rowEdit).find("td:eq(7)").attr("data-total");
                var totgst = $(rowEdit).find("td:eq(9)").attr("data-gstvalue");
                var subtot = $(rowEdit).find("td:eq(8)").attr("data-subtotal");
                var disctot = $(rowEdit).find("td:eq(10)").attr("data-discvalue");
                var totqty = $(rowEdit).find("td:eq(4)").attr("data-qty");
               

                totalQty = parseFloat(totalQty).toFixed(2) - parseFloat(totqty).toFixed(2);
                subTotal = parseFloat(subTotal).toFixed(2) - parseFloat(subtot).toFixed(2);
                totalAmt = parseFloat(totalAmt).toFixed(2) - parseFloat(totamt).toFixed(2);
                totalGst = parseFloat(totalGst).toFixed(2) - parseFloat(totgst).toFixed(2);
                totalDisc = parseFloat(totalDisc).toFixed(2) - parseFloat(disctot).toFixed(2);

                $("#lblSubtotal").text(subTotal.toFixed(2));
                $("#lblIgst").text(totalGst.toFixed(2));
                $("#lblSgst").text((parseFloat(totalGst) / 2).toFixed(2));
                $("#lblCgst").text((parseFloat(totalGst) / 2).toFixed(2));
                $("#lblTotalQty").text(totalQty);
                $("#lblTotal").text(totalAmt.toFixed(2));
                $("#txtPaidAmt").val(totalAmt.toFixed(2));
                $("#lblBalanceTotal").text(0);
                $("#lblDiscTotal").text(totalDisc.toFixed(2));

                $('#tblBillItem tr[data-value="' + id + '"]').remove();
            },
            cancel: function () {
            }
        }
    });
}
var submitInvoice = function () {
    var msg = "";
    invno = $("#txtInvoiceNo").val();
    qty = $("#lblTotalQty").text();
    invoiceDate = $("#txtInvDate").val();
    custId = $("#txtCustId").val();
    amount = $("#lblSubtotal").text();
    totalAmt = $("#lblTotal").text();
    advance = $("#txtPaidAmt").val();
    discount = $("#lblDiscTotal").text();
    cGST = $("#lblCgst").text();
    sGST = $("#lblSgst").text();
    iGST = $("#lblIgst").text();
    vat = $("#lblIgst").text();
    paid = "Paid",
    payMode = $("#ddlPayMode").val();
    person = $("#ddlSaleby").val();
    point = ($("#lblTotal").text()/100);

    var customername = $("#txtCustomerName").val();
    var address = $("#txtAddres").val();
    var mobile = $("#txtMobileNo").val();
    var Gst = $("#txtCustGst").val();

    if (!advance) {
        msg += " Please enter Paid Amount .<br />";
    }
    if (totalAmt == 0) {
        msg += " Please add Item .<br />";
    }
   
    if (msg != "") {
        $.alert({
            title: 'Alert!',
            content: msg,
            type: 'red'
        });
        return;
    }

    var billItemList = [];
    for (var i = 1; i < rowcount; i++) {
        var rowEdit = $('#tblBillItem tr[data-value="' + i + '"]');
        if (rowEdit.length > 0) {
            var itemid = $(rowEdit).find("td:eq(0)").attr("data-itemid");
            var rate = $(rowEdit).find("td:eq(2)").attr("data-rate");
            var qty = $(rowEdit).find("td:eq(4)").attr("data-qty");
            var disc = $(rowEdit).find("td:eq(5)").attr("data-disc");
            var gst = $(rowEdit).find("td:eq(6)").attr("data-gst");
            var total = $(rowEdit).find("td:eq(7)").attr("data-total");
            var gstval = $(rowEdit).find("td:eq(9)").attr("data-gstvalue");
            var discvalue = $(rowEdit).find("td:eq(10)").attr("data-discvalue");
            var data = {
                ItemId: itemid,
                Rate: rate,
                ItemSaleAmt: total,
                TaxAmt: (rate - discvalue).toFixed(2),
                ItemQty: qty,
                Disc: disc,
                GST: gst,
                Discount: discvalue,
                Vat: gstval,

            };
            billItemList.push(data);
        }
    }
 
    var model = {
        InvoiceId:invno,
        InvoiceDate : invoiceDate,
        CustId : custId,
        InvAmount: amount,
        TotalAmt : totalAmt,
        Advance : advance,
        InvDiscount: discount,
        CGST : cGST,
        SGST : sGST,
        IGST : iGST,
        InvVat: vat,
        Paid : "Paid",
        PayMode : payMode,
        Person : person,
        Point: point,
        BillItemList: billItemList,
        CustName: customername,
        Address: address,
        GST: Gst,
        Mobile: mobile,
    }
    var param = { model: model }
    $.ajax({
        url: "/Invoice/SaveInvoice",
        type: "post",
        data: JSON.stringify(model),
        contentType: "application/json; charset=utf-8", // content type sent to server
        dataType: "json", //Expected data format from server
        success: function (response) {
            if ($.trim(response.error) != "") {

            } else {
                if (response.id != 0) {
                    $.alert({
                        title: 'Msg!',
                        content: response.MSG,
                        type: 'blue',

                    });
                    getNotesList();

                }
                else {
                    $.alert({
                        title: 'Alert!',
                        content: "Error occured while saving data.<br/>Please try later.",
                        type: 'red'
                    });
                }
            }

        }

    });

    return false;
}
