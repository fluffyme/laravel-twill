
$(document).ready(function () {

    // Contact Form

    $("form#contactForm").submit(function (event) {
        event.preventDefault();
        $(".contact-form__input").removeClass("errorForm");

        var formData = $('form#contactForm').serialize();
        var url = $('form#contactForm').attr('action');

        $.ajax({
            type: "POST",
            url: url,
            data: formData,
            dataType: "json",
            encode: true,
            success:function(data) {
                $("form#contactForm").html(
                    '<div class="alert alert-success">' + data.message + "</div>"
                );
            },
            error: function (err) {
                if (err.status === 422) { // when status code is 422, it's a validation issue
                    // console.warn(err.responseJSON.errors);
                    $.each(err.responseJSON.errors, function (key) {
                        var el = $(document).find('[name="' + key + '"]');
                        el.addClass('errorForm');
                    });
                }else {
                    $("form#contactForm").html(
                        '<div class="alert alert-success">' + "Let's Talk Form encountered an internal Error. Please try later." + "</div>"
                    );
                }
            }
        });
        event.preventDefault();
    });

    // Subscribe form

    $("form#subscribeForm").submit(function (event) {
        event.preventDefault();
        $(".form__input").removeClass("errorForm");

        var formData = $('form#subscribeForm').serialize();
        var url = $('form#subscribeForm').attr('action');

        $.ajax({
            type: "POST",
            url: url,
            data: formData,
            dataType: "json",
            encode: true,
            success:function(response) {
                $("form#subscribeForm").html(
                    '<div class="alert alert-success">' + response.message + "</div>"
                );
            },
            error: function (err) {
                if (err.status === 422) { // when status code is 422, it's a validation issue
                    // console.warn(err.responseJSON.message);
                    $.each(err.responseJSON.message, function (key) {
                        var el = $(document).find('[name="' + key + '"]');
                        el.addClass('errorForm');
                    });
                }else {
                    $("form#subscribeForm").html(
                        '<div class="alert alert-success">' + "Subscribe Form encountered an internal Error. Please try later." + "</div>"
                    );
                }
            }
        });
        event.preventDefault();
    });

    // Search form header

    function load_data() {
        var url = $('form#searchForm').attr('action');
        var formData = $('form#searchForm').serialize();

        $.ajax({
            url: url,
            method: "POST",
            data: formData,
            dataType: "html",
        })
            .done(function (data) {
                $('#searchResults').empty();
                if (data.length > 0) {
                    $('.page').html(data);
                } else {
                    $('.page').html('<li>No Data Found</li>');
                }
            })
            .fail(function (jqXHR, ajaxOptions, thrownError) {
                console.warn('Search went wrong.');
            });
    }

    // $('#searchInput').keyup(function () {
    //     load_data();
    // });
    $("form#searchForm").submit(function (event) {
        event.preventDefault();
        load_data();
    });

    $("form#registerForm").submit(function (event) {
        event.preventDefault();
        $(".contact-form__input").removeClass("errorForm");

        var formData = $('form#registerForm').serialize();
        var url = $('form#registerForm').attr('action');

        $.ajax({
            type: "POST",
            url: url,
            data: formData,
            dataType: "json",
            encode: true,
            success:function(data) {
                $("form#registerForm").html(
                    '<div class="alert alert-success">' + data.message + "</div>"
                );
            },
            error: function (err) {

                if (err.status === 422) { // when status code is 422, it's a validation issue
                    // console.warn(err.responseJSON.errors);
                    $.each(err.responseJSON.errors, function (key) {
                        var el = $(document).find('[name="' + key + '"]');
                        el.addClass('errorForm');
                    });
                }else if(err.responseText) {
                    $(".page").html(err.responseText);
                } else {
                    $("form#registerForm").html(
                        '<div class="alert alert-success">' + "Registration Form encountered an internal Error. Please try later." + "</div>"
                    );
                }
            }
        });
        event.preventDefault();
    });

    $("form#editUserForm").submit(function (event) {
        event.preventDefault();
        $(".contact-form__input").removeClass("errorForm");

        var formData = $('form#editUserForm').serialize();
        var url = $('form#editUserForm').attr('action');

        $.ajax({
            type: "POST",
            url: url,
            data: formData,
            dataType: "json",
            encode: true,
            success:function(data) {
                const currentUrl = window.location.href;
                location.href = currentUrl;
            },
            error: function (err) {

                if (err.status === 422) { // when status code is 422, it's a validation issue
                    // console.warn(err.responseJSON.errors);
                    $.each(err.responseJSON.errors, function (key) {
                        var el = $(document).find('[name="' + key + '"]');
                        el.addClass('errorForm');
                    });
                } else {
                    $("form#editUserForm").html(
                        '<div class="alert alert-success">' + "Registration Form encountered an internal Error. Please try later." + "</div>"
                    );
                }
            }
        });
        event.preventDefault();
    });

    $("form#orderService").submit(function (event) {
        event.preventDefault();
        $(".contact-form__input").removeClass("errorForm");

        var formData = $('form#serviceDetails').serialize() + $('form#orderService').serialize();
        var url = $('form#orderService').attr('action');

        $.ajax({
            type: "POST",
            url: url,
            data: formData,
            dataType: "json",
            encode: true,
            success:function(data) {
                const currentUrl = window.location.href;
                location.href = currentUrl;
            },
            error: function (err) {

                if (err.status === 422) { // when status code is 422, it's a validation issue
                    // console.warn(err.responseJSON.errors);
                    $.each(err.responseJSON.errors, function (key) {
                        var el = $(document).find('[name="' + key + '"]');
                        el.addClass('errorForm');
                    });
                } else {
                    $("form#orderService").html(
                        '<div class="alert alert-success">' + "Service Form encountered an internal Error. Please try later." + "</div>"
                    );
                }
            }
        });
        event.preventDefault();
    });

});
