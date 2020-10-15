var saveUpdateAccount = function () {
    $("#divLoader").show();
    var msg = "";
    var barcode = $("#txtBarcode").val();
    var qty = $("#txtQty").val();
    var supplierid = $("#txtSuppId").val();
    var orderid = $("#txtOId").val();
    var itemid = $("#txtIId").val();
    var Purchaseprice = $("#txtPPrice").val();
    var saleprice = $("#txtSPrice").val();
    
     if (qty == "") {
        msg += " Please enter Quantity.<br />";
    }
    if (Purchaseprice == "") {
        msg += " Please enter purchase price.<br />";
    }

    if (saleprice == "") {
        msg += " Please enter Sale Price.<br />";
    }

    if (msg != "") {
        $("#divLoader").hide();
        $.alert({
            title: 'Alert!',
            content: msg,
            type: 'red'
        });
        return;
    }

    var model = {
        Barcode: barcode,
        Qty: qty,
        SupplierId: supplierid,
        OrderId: orderid,
        ItemId: itemid,
        PurchasePrice: Purchaseprice,
        SalePrice : saleprice,
        
    };


    $.ajax({
        url: "/Purchase/SavePurchase",
        type: "post",
        data: JSON.stringify(model),
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
            }
            else {
                if (response.SupplierId != 0) {
                    if ($("#txtSuppId").val() == "0") {

                        $.alert({
                            title: 'Msg!',
                            content: 'Data Saved Successfully.',
                            type: 'blue',
                            buttons: {
                                Ok: function () {
                                    // window.location = '/Employee/Edit/' + response.EmpId;
                                }
                            }
                        });
                    }
                    else {
                        $("#txtPPrice").val(firstname + ' ' + lastname);
                        $.alert({
                            title: 'Alert!',
                            content: "Data Updated Successfully.",
                            type: 'blue'
                        });
                    }
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