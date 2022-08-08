$(document).ready(function () {

    // wishlist
    $(".w-add").click(function () {
        var currentWish = $(this);
        var url = $(this).data('wish');
        var tok = $('meta[name="csrf-token"]').attr('content');
        var counter = parseFloat($('#wishCounter').text());
        $.ajax({
            type: "POST",
            url: url,
            data: {"_token": tok},
            dataType: "json",
            encode: true,
            success: function (data) {
                if (data.success) {
                    currentWish.addClass('_active');
                    toastr.options.positionClass = 'toast-bottom-right';
                    toastr.success(data.message);
                    $('#wishCounter').text(counter+1);
                }
            },
            error: function (err) {
                console.log(err)
            }
        });
        event.preventDefault();
    });

    $(".w-remove").click(function () {
        var currentWish = $(this);
        var url = $(this).data('wish');
        var tok = $('meta[name="csrf-token"]').attr('content');
        var counter = parseFloat($('#wishCounter').text());
        $.ajax({
            type: "POST",
            url: url,
            data: {"_token": tok},
            dataType: "json",
            encode: true,
            success: function (data) {
                if (data.success) {
                    currentWish.parent().parent().hide();
                    toastr.success(data.message);
                    $('#wishCounter').text(counter-1);
                }
            },
            error: function (err) {
                console.log(err)
            }
        });
        event.preventDefault();
    });

    // compare
    $(".co-add").click(function () {
        var currentWish = $(this);
        var url = $(this).data('compare');
        var tok = $('meta[name="csrf-token"]').attr('content');
        var counter = parseFloat($('#compareCounter').text());
        $.ajax({
            type: "POST",
            url: url,
            data: {"_token": tok},
            dataType: "json",
            encode: true,
            success: function (data) {
                if (data.success) {
                    currentWish.addClass('_active');
                    toastr.success(data.message);
                    $('#compareCounter').text(counter+1);
                }
            },
            error: function (err) {
                console.log(err)
            }
        });
        event.preventDefault();
    });

    $(".co-remove").click(function () {
        var currentWish = $(this);
        var url = $(this).data('compare');
        var tok = $('meta[name="csrf-token"]').attr('content');
        var counter = parseFloat($('#compareCounter').text());
        $.ajax({
            type: "POST",
            url: url,
            data: {"_token": tok},
            dataType: "json",
            encode: true,
            success: function (data) {
                if (data.success) {
                    currentWish.parent().parent().hide();
                    toastr.success(data.message);
                    $('#compareCounter').text(counter-1);
                }
            },
            error: function (err) {
                console.log(err)
            }
        });
        event.preventDefault();
    });

    // share on Fb
    $('.btnShareFb').click(function () {
        elem = $(this);
        postToFeed(elem.data('title'), elem.data('desc'), elem.prop('href'), elem.data('image'));

        return false;
    });

    // cart
    $(".c-add").click(function () {
        var counter = parseFloat($('#cartCounter').text());
        var total = parseFloat($('#cartTotal').text().replace(/,/g, '.'));
        var currentWish = $(this);
        var input = $("input[name='qty']")[0];
        if (input) {
            var qty = input.value;
        }
        var url = $(this).data('cart');
        var price = parseFloat($(this).data('price'));
        var tok = $('meta[name="csrf-token"]').attr('content');

        if (qty) {
            url = url + '/' + qty;
        }

        var newCartTotal = total + price;

        $.ajax({
            type: "POST",
            url: url,
            data: {"_token": tok},
            dataType: "json",
            encode: true,
            success: function (data) {
                if (data.success) {
                    currentWish.addClass('_added');
                    toastr.success(data.message);
                    $('#cartCounter').text(counter+1);
                    $('#cartTotal').text(newCartTotal.toFixed(2) + ' MDL');
                }
            },
            error: function (err) {
                console.log(err)
            }
        });
        event.preventDefault();
    });

    $(".c-plus").click(function () {
        var currentWish = $(this);
        var ItemId = $(this).data('id');
        var $classPriceItem = "itemPrice"+ItemId;
        var $classPriceItems = "priceItems"+ItemId;
        var pricePerItem = $('.' + $classPriceItem).text().replace(/,/g, '.');
        var priceItems = $('.' + $classPriceItems).first().text().replace(/,/g, '.');
        var cartPrice = $('.cartPrice').text().replace(/,/g, '.');
        var url = $(this).data('cart');
        var tok = $('meta[name="csrf-token"]').attr('content');

        $.ajax({
            type: "POST",
            url: url,
            data: {"_token": tok},
            dataType: "json",
            encode: true,
            success: function (data) {
                if (pricePerItem) {
                    var priceToUpdate = parseFloat(priceItems) + parseFloat(pricePerItem);
                    var cartToUpdate = parseFloat(cartPrice) + parseFloat(pricePerItem);

                    $('.' + $classPriceItems).html(priceToUpdate.toFixed(2));

                    $('.cartPrice').html(cartToUpdate.toFixed(2));
                    $('#cartTotal').text(cartToUpdate.toFixed(2) + ' MDL');

                    toastr.success('+ 1 item');

                }
            },
            error: function (err) {
                console.log(err)
            }
        });
        event.preventDefault();
    });

    $(".c-remove").click(function () {
        var counter = parseFloat($('#cartCounter').text());
        var total = parseFloat($('#cartTotal').text().replace(/,/g, '.'));
        var currentWish = $(this);
        var url = $(this).data('cart');
        var price = parseFloat($(this).data('price'));
        var tok = $('meta[name="csrf-token"]').attr('content');
        var newCartTotal = total - price;
        $.ajax({
            type: "POST",
            url: url,
            data: {"_token": tok},
            dataType: "json",
            encode: true,
            success: function (data) {
                if (data.success) {
                    currentWish.parent().hide();
                    toastr.success(data.message);
                    $('#cartCounter').text(counter-1);
                    $('#cartTotal').text(newCartTotal.toFixed(2) + ' MDL');
                }
            },
            error: function (err) {
                console.log(err)
            }
        });
        event.preventDefault();
    });

    $(".c-minus").click(function () {
        var currentWish = $(this);
        var ItemId = $(this).data('id');
        var inputname = "qty" + ItemId;
        var input = document.getElementsByName(inputname)[0];
        var $classPriceItem = "itemPrice" + ItemId;
        var $classPriceItems = "priceItems" + ItemId;
        var pricePerItem = parseFloat($('.' + $classPriceItem).text().replace(/,/g, '.'));
        var cartPrice = parseFloat($('.cartPrice').text().replace(/,/g, '.'));

        if (input) {
            var qty = input.value;
        }

        var url = $(this).data('cart');
        var tok = $('meta[name="csrf-token"]').attr('content');

        if (qty) {
            url = url + '/' + qty;
        }

        $.ajax({
            type: "POST",
            url: url,
            data: {"_token": tok},
            dataType: "json",
            encode: true,
            success: function (data) {
                if (qty && pricePerItem) {
                    var priceToUpdate = pricePerItem * (qty - 1);
                    var cartToUpdate = cartPrice - pricePerItem;
                    console.log(qty);
                    if (qty > 1) {
                        $('.' + $classPriceItems).html(priceToUpdate.toFixed(2));

                    } else {
                        $('.' + $classPriceItems).parent().hide();
                        currentWish.parent().parent().parent().hide();
                    }
                    $('.cartPrice').html(cartToUpdate.toFixed(2));
                    $('#cartTotal').text(cartToUpdate.toFixed(2) + ' MDL');

                    toastr.success('- 1 item');
                }
            },
            error: function (err) {
                console.log(err)
            }
        });
        event.preventDefault();
    });

});
