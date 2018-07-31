<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>@if($data){{ $data->title }}@endif</title>
    <meta name="keywords" content="@if($data){{ $data->meta_keywords }}@endif">
    <meta name="description" content="@if($data){{ $data->meta_description }}@endif">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="stylesheet" href="/css/main.css">
</head>
<body class="">
<script>
    //for preloader
    //document.body.classList.add("overflow-hidden");
    function getScrollbarWidth() {
        var outer = document.createElement("div");
        outer.style.visibility = "hidden";
        outer.style.width = "100px";
        outer.style.msOverflowStyle = "scrollbar"; // needed for WinJS apps

        document.body.appendChild(outer);

        var widthNoScroll = outer.offsetWidth;
        // force scrollbars
        outer.style.overflow = "scroll";

        // add innerdiv
        var inner = document.createElement("div");
        inner.style.width = "100%";
        outer.appendChild(inner);

        var widthWithScroll = inner.offsetWidth;

        // remove divs
        outer.parentNode.removeChild(outer);

        return widthNoScroll - widthWithScroll;
    }
    var scrollW = getScrollbarWidth();
    document.body.style.paddingRight = scrollW + 'px';
    document.body.className = "overflow-hidden";
</script>


<div id="preloader">
    <div class="preloader-wrapper big active">
        <div class="spinner-layer">
            <div class="circle-clipper left">
                <div class="circle"></div>
            </div><div class="gap-patch">
                <div class="circle"></div>
            </div><div class="circle-clipper right">
                <div class="circle"></div>
            </div>
        </div>
    </div>
</div>
<div style="height: 0; width: 0; position: absolute;overflow: hidden;" id="svg-sprite-container">

</div>
    @include('blocks.header')
<div class="wrapper">
    @if(Route::currentRouteName() != 'success-order')
        <div class="shares" style="background-image: url(@if(Route::currentRouteName() == 'category' && $counter)/storage/{{ $counter->image }} @else /pic/bg/bg-main.jpg @endif);">
            <div class="container">
                <div class="shares__box-right">
                    @if(Route::currentRouteName() == 'category' && $counter)

                        <span class="shares__title">Закажите подарок сейчас и получите <span class="shares__title-large">скидку {{ $counter ? $counter->discount : '' }}%</span></span>
                    @else
                        <span class="shares__title">Закажите подарок сейчас и получите <span class="shares__title-large">скидку {{ setting('.counter_discount_home') }}%</span></span>
                    @endif


                    <div class="stock-counter  ">
                        <span class="stock-counter__title">До конца акции осталось</span>
                        <div class="stock-counter__inner">
                            <div class="stock-counter__middle js-stock-counter ">
                            </div>
                            <div class="stock-counter__bottom">
                                <ul class="stock-counter__list">
                                    <li class="stock-counter__item">дней</li>
                                    <li class="stock-counter__item">часов</li>
                                    <li class="stock-counter__item">минут</li>
                                    <li class="stock-counter__item">секунд</li>
                                </ul>
                            </div>
                        </div>

                        <form action="" class="stock-counter__form">
                            <div class="stock-counter__row">
                                <input type="tel" name="phone" class="input stock-counter__input js-input-mask" placeholder="Номер телефона *" data-valid="\S+" required>
                            </div>
                            <div class="stock-counter__row">
                                <button class="btn btn--large stock-counter__btn" onclick="MainFunction.saveApplication(this, event);">ЗАКАЗАТЬ ПОДАРОК</button>
                            </div>
                            <div class="stock-counter__row">
                                <label class="checkbox checkbox--small">
                                    <input type="checkbox" name="check" required checked>
                                    <span>Я Соглашаюсь на обработку персональных данных</span>
                                </label>
                            </div>
                            <input type="hidden" name="category_id" value="{{ isset($currentCategory) ? $currentCategory->id : '' }}">
                            {{ csrf_field() }}
                        </form>
                    </div>
                </div>
            </div>
        </div>
    @endif
    @yield('content')
    <div class="reviews">
        <div class="container">
            <span class="reviews__title">Отзывы</span>
            <div class="reviews__holder">
                <div class="reviews__left">
                    <div class="reviews__item">
					<span class="reviews__item-icon">
						<svg class="icon-quote">
							<use xlink:href="#quote"></use>
						</svg>
					</span>
                        <div class="reviews__item-txt">
                            <p>
                                Не следует, однако забывать, что реализация намеченных плановых заданий позволяет оценить значение дальнейших направлений развития. Значимость этих проблем настолько очевидна, что начало повседневной работы по формированию позиции требуют определения и уточнения дальнейших направлений.
                            </p>
                        </div>
                        <div class="reviews__item-client">
                            <div class="reviews__item-img">
                                <img src="/pic/userpic.png" alt="user">
                            </div>
                            <div class="reviews__item-box">
							<span class="reviews__item-name">
								Алексей Иванов <span>- довольный клиент</span>
							</span>
                                <a href="#" class="reviews__item-social-icon">
                                    <svg class="icon-vk">
                                        <use xlink:href="#vk"></use>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="reviews__right">
                    <div class="reviews__row">
                        <ul class="reviews__box">
                            <li class="reviews__elem ">
                                <div class="reviews__elem-head">
                                    <div class="reviews__elem-img">
                                        <img src="/pic/userpic.png" alt="user">
                                    </div>
                                    <div class="reviews__elem-box">
                                        <span class="reviews__elem-name">Андрей Соболев</span>
                                        <a href="#" class="reviews__elem-icon">
                                            <svg class="icon-vk">
                                                <use xlink:href="#vk"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="reviews__elem-txt">
                                    <p>
                                        Супер! Заказывал неделю назад подарок для девушки на день рождения и остался очень доволен тем, что ...
                                    </p>
                                </div>
                            </li><li class="reviews__elem reviews__elem--center">
                                <div class="reviews__elem-head">
                                    <div class="reviews__elem-img">
                                        <img src="/pic/userpic.png" alt="user">
                                    </div>
                                    <div class="reviews__elem-box">
                                        <span class="reviews__elem-name">Андрей Соболев</span>
                                        <a href="#" class="reviews__elem-icon">
                                            <svg class="icon-vk">
                                                <use xlink:href="#vk"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="reviews__elem-txt">
                                    <p>
                                        Супер! Заказывал неделю назад подарок для девушки на день рождения и остался очень доволен тем, что ...
                                    </p>
                                </div>
                            </li><li class="reviews__elem ">
                                <div class="reviews__elem-head">
                                    <div class="reviews__elem-img">
                                        <img src="/pic/userpic.png" alt="user">
                                    </div>
                                    <div class="reviews__elem-box">
                                        <span class="reviews__elem-name">Андрей Соболев</span>
                                        <a href="#" class="reviews__elem-icon">
                                            <svg class="icon-vk">
                                                <use xlink:href="#vk"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="reviews__elem-txt">
                                    <p>
                                        Супер! Заказывал неделю назад подарок для девушки на день рождения и остался очень доволен тем, что ...
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="reviews__row">
                        <ul class="reviews__box">
                            <li class="reviews__elem ">
                                <div class="reviews__elem-head">
                                    <div class="reviews__elem-img">
                                        <img src="/pic/userpic.png" alt="user">
                                    </div>
                                    <div class="reviews__elem-box">
                                        <span class="reviews__elem-name">Андрей Соболев</span>
                                        <a href="#" class="reviews__elem-icon">
                                            <svg class="icon-vk">
                                                <use xlink:href="#vk"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="reviews__elem-txt">
                                    <p>
                                        Супер! Заказывал неделю назад подарок для девушки на день рождения и остался очень доволен тем, что ...
                                    </p>
                                </div>
                            </li><li class="reviews__elem reviews__elem--center">
                                <div class="reviews__elem-head">
                                    <div class="reviews__elem-img">
                                        <img src="/pic/userpic.png" alt="user">
                                    </div>
                                    <div class="reviews__elem-box">
                                        <span class="reviews__elem-name">Андрей Соболев</span>
                                        <a href="#" class="reviews__elem-icon">
                                            <svg class="icon-vk">
                                                <use xlink:href="#vk"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="reviews__elem-txt">
                                    <p>
                                        Супер! Заказывал неделю назад подарок для девушки на день рождения и остался очень доволен тем, что ...
                                    </p>
                                </div>
                            </li><li class="reviews__elem ">
                                <div class="reviews__elem-head">
                                    <div class="reviews__elem-img">
                                        <img src="/pic/userpic.png" alt="user">
                                    </div>
                                    <div class="reviews__elem-box">
                                        <span class="reviews__elem-name">Андрей Соболев</span>
                                        <a href="#" class="reviews__elem-icon">
                                            <svg class="icon-vk">
                                                <use xlink:href="#vk"></use>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="reviews__elem-txt">
                                    <p>
                                        Супер! Заказывал неделю назад подарок для девушки на день рождения и остался очень доволен тем, что ...
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="help">
        <div class="container">
            <div class="help__wrap">

                <div class="help__holder help__holder--large">
                    <div class="help__inner">
                        <div class="help__header">
                            <div class="help__heading">
                                <h1 class="help__title">Не можете определиться?</h1>
                                <span class="help__desc">Мы поможем подобрать лучший подарок!</span>
                            </div>
                            <img src="/pic/help/help-01.jpg" alt="" class="help__decor">
                        </div>

                        <div class="help__body">
                            <form action="#" class="help__form js-form-validation">
                                <div class="help__form-row">
                                    <div class="help__form-col">
                                        <select name="whom" class="js-select" data-placeholder="Кому">
                                            <option></option>
                                            <option value="Себе">Себе</option>
                                        </select>
                                    </div>
                                    <div class="help__form-col">
                                        <select name="reason" class="js-select" data-placeholder="Повод">
                                            <option></option>
                                            <option value="Без повода">Без повода</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="help__form-row">
                                    <div class="help__form-col">
                                        <select name="price" class="js-select" data-placeholder="Бюджет">
                                            <option></option>
                                            <option value="1000">1000</option>
                                            <option value="2000">2000</option>
                                            <option value="3000">3000</option>
                                            <option value="4000">4000</option>
                                            <option value="5000">5000</option>
                                        </select>
                                    </div>
                                    <div class="help__form-col">
                                        <select name="growth" class="js-select" data-placeholder="Рост">
                                            <option></option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="help__form-row">
                                    <div class="help__form-col">
                                        <input type="text" class="help__form-input js-input-mask" name="phone" placeholder="Номер телефона *" required data-valid="\S+">
                                    </div>
                                    <div class="help__form-col">
                                        <button class="btn btn--small help__form-btn" type="submit" onclick="MainFunction.saveApplication(this, event);">Узнать идеальный подарок</button>
                                    </div>
                                </div>
                                <div class="help__form-row help__form-row--compliance">
                                    <label class="checkbox checkbox--small">
                                        <input type="checkbox" name="check" required checked>
                                        <span>Я Соглашаюсь на обработку персональных данных</span>
                                    </label>
                                </div>

                                {{ csrf_field() }}
                            </form>
                        </div>
                    </div>
                </div>

                <div class="help__holder help__holder--small">
                    <img src="/pic/help/help-02.png" alt="" class="help__img">
                </div>

            </div>
        </div>
    </div>

    <div class="advantages">
        <div class="container">
            <h1 class="advantages__title">Преимущества покупки в нашем магазине</h1>
            <ul class="advantages__list">

                <li class="advantages__item">
                    <div class="advantages__holder advantages__holder--small">
                        <svg class="icon-delivery">
                            <use xlink:href="#delivery"></use>
                        </svg>
                    </div>
                    <div class="advantages__holder advantages__holder--large">
                        <span class="advantages__caption">Бесплатная</span>
                        <span class="advantages__desc">доставка за 1 час (24 часа)</span>
                    </div>
                </li>

                <li class="advantages__item">
                    <div class="advantages__holder advantages__holder--small">
                        <svg class="icon-checklist">
                            <use xlink:href="#checklist"></use>
                        </svg>
                    </div>
                    <div class="advantages__holder advantages__holder--large">
                        <span class="advantages__caption">Товар</span>
                        <span class="advantages__desc">всегда в наличии</span>
                    </div>
                </li>

                <li class="advantages__item">
                    <div class="advantages__holder advantages__holder--small">
                        <svg class="icon-transfer">
                            <use xlink:href="#transfer"></use>
                        </svg>
                    </div>
                    <div class="advantages__holder advantages__holder--large">
                        <span class="advantages__caption">Возврат / Обмен</span>
                        <span class="advantages__desc">в день вашего обращения</span>
                    </div>
                </li>

                <li class="advantages__item">
                    <div class="advantages__holder advantages__holder--small">
                        <svg class="icon-employee">
                            <use xlink:href="#employee"></use>
                        </svg>
                    </div>
                    <div class="advantages__holder advantages__holder--large">
                        <span class="advantages__caption">Принимаем платежи</span>
                        <span class="advantages__desc">от юридических лиц</span>
                    </div>
                </li>

                <li class="advantages__item">
                    <div class="advantages__holder advantages__holder--small">
                        <svg class="icon-credit-card">
                            <use xlink:href="#credit-card"></use>
                        </svg>
                    </div>
                    <div class="advantages__holder advantages__holder--large">
                        <span class="advantages__caption">Возможна</span>
                        <span class="advantages__desc">оплата по карте</span>
                    </div>
                </li>

                <li class="advantages__item">
                    <div class="advantages__holder advantages__holder--small">
                        <svg class="icon-map-location">
                            <use xlink:href="#map-location"></use>
                        </svg>
                    </div>
                    <div class="advantages__holder advantages__holder--large">
                        <span class="advantages__caption">Шоу-рум</span>
                        <span class="advantages__desc">в центре Санкт-Петербурга</span>
                    </div>
                </li>

            </ul>
        </div>
    </div>

</div>


@include('blocks.footer')
@include('blocks.popup-one-click')
@include('blocks.popup-callback')
@include('blocks.popup-buy')
<script src="/js/vendor.js"></script>

<script src="/js/main.js"></script>
<script src="/js/script.js"></script>

<script>
    function stockCounter() {

        @if(Route::currentRouteName() == 'category' || Route::currentRouteName() == 'home' || Route::currentRouteName() == 'page')

        var data = '{{ $date }}';
        @endif


        $('.js-stock-counter').countdown(data, function (event) {
            var $this = $(this).html(event.strftime(''
                + '<div class="counter__item time day flip"><span class="count curr top">%d</span><span class="count next top">%d</span><span class="count next bottom">%d</span><span class="count curr bottom">%d</span></div>'
                + '<div class="counter__item time hours flip"><span class="count curr top">%H</span><span class="count next top">%H</span><span class="count next bottom">%H</span><span class="count curr bottom">%H</span></div>'
                + '<div class="counter__item time minutes flip"><span class="count curr top">%M</span><span class="count next top">%M</span><span class="count next bottom">%M</span><span class="count curr bottom">%M</span></div>'
                + '<div class="counter__item time seconds flip"><span class="count curr top">%S</span><span class="count next top">%S</span><span class="count next bottom">%S</span><span class="count curr bottom">%S</span></div>'));
        })
    }
    stockCounter();
</script>

@include('blocks.popup-success')
@include('blocks.svg')

<script>
    $(function() {
        $("a.fancy").fancybox({
            'zoomSpeedIn': 300,
            'zoomSpeedOut': 300,
            'overlayShow': false
        });
    });
</script>
</body>
</html>