var MainFunction = {

    filterCategory:function(element) {
        var array = [];
        $.each($('input[name="check[]"]'), function(indx, element) {
            var el = $(element);
            if(el.prop('checked')) {
                array.push(el.val());
            }
        });

        var categoryId = $('input[name="categoryId"]').val();
        $.ajax({
            type:'post',
            url: '/filter-category',
            data: {'_token': $('meta[name="csrf-token"]').attr('content'), ids:array, categoryId:categoryId},
            success:function(result) {
                $('.other-goods__wrapp--card').html(result['html']);
            }
        });
    },

    showInfo:function(element) {
        $('#popup-overview').empty();
        var el = $(element);
        var id = el.attr('data-product-id');
        var priceId = el.closest('.js-goods-inner').find('#priceIdField').val();
        console.log(priceId);
        $.ajax({
            type:'post',
            url:'/get-info-product',
            data: {'_token': $('meta[name="csrf-token"]').attr('content'), productId:id, priceId:priceId},
            success:function(result) {
                $('#popup-overview').html(result['html']);
                var $wrap = $('body').find('.js-tabs-wrap');
                if ($wrap.length) {
                    $wrap.each(function () {
                        var $that = $(this),
                            $tab = $that.find('.js-tab'),
                            $content = $that.find('.js-tab-content');
                        $tab.on('click touchstart', function (e) {
                            e.preventDefault();
                            var self = $(this),
                                index = self.index();
                            self.addClass('active').siblings().removeClass('active');
                            $content.eq(index).addClass('active').siblings().removeClass('active');
                        });
                    });
                }
            }
        });
    },

    saveOrder:function(element) {

        var el = $(element);

        var wrap = el.closest('.popup-order');

        var form = el.closest('form');
        var phone = form.find('input[name="phone"]');

        if(!phone.val()) {
            phone.addClass('error');
            return false;
        }
        else {
            phone.removeClass('error');
        }
        var data = form.serialize();

        var products = $('.order__goods-item').length;


        console.log('click');

        if(!products && !wrap) {
            return false;
        }

        $.ajax({
            type: 'post',
            url: '/save-order',
            data:data,
            success:function(result) {
                window.location.href = '/success-order/' + result;
            }
        });
    },

    addToBasket:function(id, element) {

        var el = $(element);
        var priceId = el.closest('.js-goods-inner').find('#priceIdField').val();
        var priceId2 = $('input[name="priceCurrent"]').val();
        if(!priceId) {
            priceId = priceId2;
        }

        $.ajax({
            type: 'post',
            url: '/add-to-basket',
            data:{'_token': $('meta[name="csrf-token"]').attr('content'), productId:id, priceId:priceId},
            success:function(result) {
                if(result) {
                    if($('.fancybox-button--close')[0]) {
                        $('.fancybox-button--close')[0].click();
                    }

                    $('.header__basket-value').text(result.countItem);
                    $('.footer__basket-value').text(result.countItem);

                    $('.order__value-old').text(result.priceOld + ' р');
                    $('.order__value-new').text(result.priceNew + ' р');


                    $('#success-message').find('span').text('Товар успешно добавлен!');
                    $('#success-message').animate({top:'30%'});
                    setTimeout(function () {
                        $('#success-message').animate({top: '-10%'});
                    }, 2000);

                    if(result.newProduct) {
                        $('body').find('.jspPane').append('<div class="order__goods-item"><div class="order__img-wrapp"><img src="'+ result.img +'" alt=""></div>' +
                            '<div class="order__delete-goods" onclick="MainFunction.deleteFromBasket(this, '+ id +', '+ priceId +');"></div></div>');
                    }
                }



            }
        });
    },

    deleteFromBasket:function(element, id, priceId) {

        var el = $(element);
        el.closest('.order__goods-item').remove();
        $('[data-product-basket-id="'+ id +'"]').remove();

        $.ajax({
            type: 'post',
            url: '/delete-from-basket',
            data:{'_token': $('meta[name="csrf-token"]').attr('content'), productId:id, priceId:priceId},
            success:function(result) {
                $('.header__basket-value').text(result.countItem);
                $('.footer__basket-value').text(result.countItem);

                $('.order__value-old').text(result.priceOld + ' р');
                $('.order__value-new').text(result.priceNew + ' р');

                $('#success-message').find('span').text('Товар успешно удален!');
                $('#success-message').animate({top:'30%'});
                setTimeout(function () {
                    $('#success-message').animate({top: '-10%'});
                }, 2000);
            }
        });
    },

    saveApplication:function(element, e) {
        e.preventDefault();
        var el = $(element);
        var form = el.closest('form');
        var phone = form.find('input[name="phone"]');

        if(!phone.val()) {
            phone.addClass('error');
            return false;
        }
        else {
            phone.removeClass('error');
        }

        var data = form.serialize();
        $.ajax({
            type: 'post',
            url: '/save-application',
            data:data,
            success:function(result) {
                if($('.fancybox-close-small')[0]) {
                    $('.fancybox-close-small')[0].click();
                }

                $('#success-message').find('span').text('Заявка успешно добавлена!');
                $('#success-message').animate({top:'30%'});
                setTimeout(function () {
                    $('#success-message').animate({top: '-10%'});
                }, 2000);

            }
        });
    },

    priceReplace:function(element) {

        var el = $(element);
        var priceWithoutDiscount = el.attr('data-price-without');
        var price = el.attr('data-price');
        $('.order__value-old').text(priceWithoutDiscount + ' р');
        $('.order__value-new').text(price + ' р');
        var phone = $('.stock-counter--small input').val();
        $('.popup-buy__wrap input[name="phone"]').val(phone);
    },

    changePrice:function (element) {
        var el = $(element);
        var id = el.val();
        var img = el.find('option:selected').attr('data-img');

        console.log(img);

        $.ajax({
            type:'post',
            url: '/change-price',
            data: {'_token': $('meta[name="csrf-token"]').attr('content'), priceId:id},
            success:function(result) {
                el.closest('.js-goods-inner').find('.other-goods__price-new').text(result.price + ' р');
                el.closest('.js-goods-inner').find('.other-goods__price-old').text(result.price_old + ' р');
                el.closest('.js-goods-inner').find('.other-goods__sale-value').text(result.difference_price);
                if(img) {
                    el.closest('.js-goods-inner').find('.other-goods__img-wrapp').css('background-image', 'url('+ '/storage/' + img +')');
                }

            }
        });
    },

    mailIs:function(element) {
        var el = $(element);
        if(!el.attr('data-is-mail')) {
            el.attr('data-is-mail', 1);
            var id = el.attr('data-product-id');
            $.ajax({
                type: 'post',
                url: '/mail-is',
                data: {'_token': $('meta[name="csrf-token"]').attr('content'), productId:id, orderId: $('input[name="orderId"]').val()},
                success:function(result) {

                }
            });
        }
    }


};

$(document).ready(function() {
    $('body').on('click', '.btn-one-click', function() {
        var el = $(this);
        var productId = el.attr('data-product-id');
        var productName = el.attr('data-product-name');
        var priceId = el.closest('.other-goods__item--card').find('select').val();
        $('body').find('.popup-order__form-subtitle').text(productName);
        $('body').find('input[name="productId"]').val(productId);
        if(priceId) {
            $('body').find('input[name="priceId"]').val(priceId);
        }
        else {
            $('body').find('input[name="priceId"]').val($('body').find('input[name="priceCurrent"]').val());
        }


    });
});