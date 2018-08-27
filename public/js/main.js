function preloader() {
    if ($('#preloader').length) {
        setTimeout(function() {
            $('#preloader').fadeOut('slow', function() {
                $('body').removeClass('overflow-hidden').css('padding', '');
            });
        }, 1000);
    }
}
$(window).on('load', preloader);
//---------------------------------------//
// Подключаем набор написаных скриптов (requare/developRequare.js)
//---------------------------------------//
// выполняем их после того, как DOM построится
$(document).ready(function() {
            $.reject({
                //	header: 'Your browser is not supported here', // Header Text
                //	paragraph1: 'You are currently using an unsupported browser', // Paragraph 1
                //	paragraph2: 'Please install one of the many optional browsers below to proceed',
                //	closeMessage: 'Close this window at your own demise!' // Message below close window link
                reject: {
                    all: false,
                    msie: 9,
                    chrome: 40,
                    firefox: 30,
                    safari4: 4
                },
                display: [], // What browsers to display and their order (default set below)
                browserShow: true, // Should the browser options be shown?
                browserInfo: { // Settings for which browsers to display
                    chrome: {
                        // Text below the icon
                        text: 'Google Chrome',
                        // URL For icon/text link
                        url: 'http://www.google.com/chrome/'
                        // (Optional) Use "allow" to customized when to show this option
                        // Example: to show chrome only for IE users
                        // allow: { all: false, msie: true }
                    },
                    firefox: {
                        text: 'Mozilla Firefox',
                        url: 'http://www.mozilla.com/firefox/'
                    },
                    safari: {
                        text: 'Safari',
                        url: 'http://www.apple.com/safari/download/'
                    },
                    opera: {
                        text: 'Opera',
                        url: 'http://www.opera.com/download/'
                    },
                    msie: {
                        text: 'Microsoft Edge',
                        url: 'http://www.microsoft.com/'
                    }
                },
                // Pop-up Window Text
                header: 'Did you know that your Internet Browser is out of date?',
                paragraph1: 'Your browser is out of date, and may not be compatible with ' +
                    'our website. A list of the most popular web browsers can be ' +
                    'found below.',
                paragraph2: 'Just click on the icons to get to the download page',
                // Allow closing of window
                close: true,
                // Message displayed below closing link
                closeMessage: 'By closing this window you acknowledge that your experience ' +
                    'on this website may be degraded',
                closeLink: 'Close This Window',
                closeURL: '#',
                // Allows closing of window with esc key
                closeESC: true,
                // Use cookies to remmember if window was closed previously?
                closeCookie: false,
                // Cookie settings are only used if closeCookie is true
                cookieSettings: {
                    // Path for the cookie to be saved on
                    // Should be root domain in most cases
                    path: '/',
                    // Expiration Date (in seconds)
                    // 0 (default) means it ends with the current session
                    expires: 0
                },
                // Path where images are located
                imagePath: './img/browsers/',
                // Background color for overlay
                overlayBgColor: '#000',
                // Background transparency (0-1)
                overlayOpacity: 0.8,
                // Fade in time on open ('slow','medium','fast' or integer in ms)
                fadeInTime: 'fast',
                // Fade out time on close ('slow','medium','fast' or integer in ms)
                fadeOutTime: 'fast',
                // Google Analytics Link Tracking (Optional)
                // Set to true to enable
                // Note: Analytics tracking code must be added separately
                analytics: false
            });
            //---------------------------------------//
            // Подключаем скрипты компонентов страниц ( modules )
            //---------------------------------------//
            var flag = false;

            function showFilter() {
                if ($(window).width() < 767) {
                    if (!flag) {
                        $('.js-btn-show').on('click', function() {
                            $('.js-filter-show').slideToggle(500);
                            $(this).toggleClass('active');
                        });
                        flag = true;
                    }
                } else {
                    if (flag) {
                        $('.js-filter-show').removeAttr('style');
                        $('.js-btn-show').off('click');
                        flag = false;
                    }
                }
            }
            showFilter();
            $(window).resize(function() {
                showFilter();
            });
            (function() {
                var footer = $('.js-footer');

                function autoFooter() {
                    if ($('.js-footer').length) {
                        var wrapper = $('.wrapper');
                        var footerHeight = footer.outerHeight();
                        footer.css('margin-top', -footerHeight);
                        wrapper.css('padding-bottom', footerHeight);
                    }
                }
                setTimeout(autoFooter, 100);
                $(window).on('resize', autoFooter);
            })();

            function headerNav() {
                if ($(window).width() <= '1024') {
                    $('.js-nav-open').on('click', function() {
                        $('.js-nav-collpase').addClass('show');
                    })
                    $('.js-nav-closed').on('click', function() {
                        $('.js-nav-collpase').removeClass('show');
                    })
                    $('.js-nav-bg').on('click', function() {
                        $('.js-nav-collpase').removeClass('show');
                    })
                }
            }
            headerNav();

            function contactsMap() {
                var mapBlock = $('#map ');
                    if (mapBlock.length) {
                        try {
                            jQuery.getScript('https://api-maps.yandex.ru/2.1/?lang=ru_RU', function() {
                                ymaps.ready(init);
                                var myMap;

                                function init() {
                                    var multiRoute = new ymaps.multiRouter.MultiRoute({
                                        // Описание опорных точек мультимаршрута.
                                        referencePoints: [
                                            [59.894138, 30.382595],
                                            "улица Стройкова, 20"
                                        ],
                                        // Параметры маршрутизации.
                                        params: {
                                            results: 2
                                        }
                                    }, {
                                        // Автоматически устанавливать границы карты так, чтобы маршрут был виден целиком.
                                        boundsAutoApply: true,
                                        routeActiveStrokeWidth: 7,
                                        routeActiveStrokeColor: "#00b3fd"
                                    });
									myPlacemark = new ymaps.Placemark([54.618431, 39.72101], {
										// Чтобы балун и хинт открывались на метке, необходимо задать ей определенные свойства.
										balloonContentHeader: "Хапи подарки!",
										balloonContentBody: "Шоу-рум<br>Рязань, ул.Стройкова 20<br><br>Телефон<br>+7 (4912) 99 37 30<br><br>Мобильный телефон<br>+7 (903) 839 37 30",
										hintContent: "Хапи подарки!"
									});
                                    var myMap = new ymaps.Map('map', {
                                        center: [54.618431, 39.721014],
                                        zoom: 15,
                                        controls: []
                                    });
									myMap.geoObjects.add(myPlacemark);
                                    // Добавляем мультимаршрут на карту.
                                    //myMap.geoObjects.add(multiRoute);
                                }
                            })
                        } catch (e) {
                            console.log(e);
                        }
                    }
                }
                contactsMap();

                function visitedGoods() {
                    $('.js-goods-visited').on('click', function() {
                        $(this).closest('.js-goods-item').find('.js-goods-inner').addClass('visited');
                    });
                }
                visitedGoods();

                //---------------------------------------//
                // Подключаем основные скрипты ( develop )
                //---------------------------------------//
                ;
                (function($) {
                    function select() {
                        var _dropdown;
                        var settings = {
                            autoReinitialise: true
                        };
                        $('.js-select').styler({
                            selectSearch: false,
                            onFormStyled: function() {
                                _dropdown = $('.jq-selectbox__dropdown');
                                _dropdown.find('ul').wrap('<div class="scroll-pane" ></div>');
                            },
                            onSelectOpened: function() {
                                var _ul = $(this).find('.jq-selectbox__dropdown ul');
                                var height = _ul.height();
                                var _srollPane = _dropdown.find('.scroll-pane');
                                _srollPane.height(height);
                                _ul.css('max-height', 'none');
                                _srollPane.jScrollPane(settings);
                            }
                        });
                    }
                    select();
                    $('.scroll-pane').jScrollPane();

                    function selectError() {}
                    selectError();

                    function phoneMask() {
                        $('.js-input-mask').inputmask({
                            "mask": "+7 (999)-999-99-99"
                        });
                    }
                    phoneMask();

                    function validationForms() {
                        $('form').each(function() {
                            var objForm = $(this);
                            if (objForm.find('[data-valid]').length) {
                                objForm.validate({
                                    errorClass: "error",
                                    validClass: [],
                                    ignore: [],
                                    errorPlacement: function(error, element) {},
                                    highlight: function(element, errorClass, validClass) {
                                        $(element).addClass(errorClass).removeClass(validClass);
                                    },
                                    unhighlight: function(element, errorClass, validClass) {
                                        $(element).removeClass(errorClass).addClass(validClass);
                                    },
                                    submitHandler: function(form, e) {
                                        var cur_seria = objForm.serialize();
                                        e.preventDefault();
                                    }
                                });
                            }
                        });
                    }
                    validationForms();

                    function popups() {
                        $('[data-fancybox]').fancybox({
                            afterLoad: function() {
                                var settings = {
                                    autoReinitialise: true
                                };
                                $('.scroll-pane').jScrollPane(settings);
                            }
                        })
                    }
                    popups();

                    function tabs() {
                        var $wrap = $('body').find('.js-tabs-wrap');
                        if ($wrap.length) {
                            $wrap.each(function() {
                                var $that = $(this),
                                    $tab = $that.find('.js-tab'),
                                    $content = $that.find('.js-tab-content');
                                $tab.on('click touchstart', function(e) {
                                    e.preventDefault();
                                    var self = $(this),
                                        index = self.index();
                                    self.addClass('active').siblings().removeClass('active');
                                    $content.eq(index).addClass('active').siblings().removeClass('active');
                                });
                            });
                        }
                    }

                    tabs();

                    if ($('.js-height').length) {
                        $('.js-height').matchHeight({
                            byRow: true,
                            property: 'height',
                            target: null,
                            remove: false
                        });
                    }
                }($));
            })
