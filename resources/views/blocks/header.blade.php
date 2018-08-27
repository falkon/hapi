<header class="header">
    <div class="container">
        <div class="header__wrap">
            <div class="header__top">
                <div class="header__menu">
                    <ul class="header__menu-list">
                        <li class="header__menu-item">
                            <a href="{{ route('page', 'kontakty') }}" class="header__menu-link">Контакты</a>
                        </li>
                        <li class="header__menu-item">
                            <a href="{{ route('page', 'dostavka') }}" class="header__menu-link">Доставка</a>
                        </li>
                        <li class="header__menu-item">
                            <a href="{{ route('page', 'oplata') }}" class="header__menu-link">Оплата</a>
                        </li>
                        <li class="header__menu-item">
                            <a href="{{ route('page', 'blog') }}" class="header__menu-link">Блог</a>
                        </li>
                        <li class="header__menu-item">
                            <a href="{{ route('page', 'otzyvy') }}" class="header__menu-link">Отзывы</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="header__middle">
                <div class="header__logo">
                    <a href="/" class="header__logo-link">
          <span class="header__logo-icon">
            <svg class="icon-logo">
              <use xlink:href="#logo"></use>
            </svg>
          </span>
                        <span class="header__logo-inner">
            <span class="header__logo-name">ХАПИ ПОДАРКИ</span>
            <span class="header__logo-city">Рязань</span>
          </span>
                    </a>
                </div>

                <div class="header__holder">
                    <div class="header__nav js-nav-collpase">
                        <div class="header__nav-bg js-nav-bg"></div>
                        <span class="header__nav-closed js-nav-closed"></span>
                        <div class="header__nav-inner header__nav-inner--contacts">
                            <ul class="header__nav-list">
                                <li class="header__nav-item header__nav-item--top">
                                    <div class="header__basket"><a data-fancybox data-src="#popup-buy" href="javascript:void(0);" class="header__basket-link">
                                            <svg class="icon-basket">
                                                <use xlink:href="#basket"></use>
                                            </svg>
                                            @php
                                                $basket = 0;
                                                $basketSession = session('basket');
                                                if(!is_null($basketSession))
                                                foreach ($basketSession as $b) {
                                                    $basket += $b['count'];
                                                }

                                            @endphp
                                            <span class="header__basket-value">{{ $basket }}</span></a>
                                    </div>
                                    <div class="header__feedback"><a data-fancybox data-src="#popup-feedback" href="javascript:;" class="btn btn--small header__feedback-btn">ОБРАТНЫЙ
                                            ЗВОНОК</a></div>
                                </li>
                                <li class="header__nav-item">
                                    <a href="tel: {{ setting('.home_phone') }}" class="header__nav-link"><span class="header__nav-icon"><svg
                                                    class="icon-phone"><use xlink:href="#phone"></use></svg></span>{{ setting('.home_phone') }}</a>
                                </li>
                                <li class="header__nav-item">
                                    <a href="tel: setting('.phone')" class="header__nav-link"><span class="header__nav-icon"><svg
                                                    class="icon-phone-mobile"><use xlink:href="#phone-mobile"></use></svg></span>{{ setting('.phone') }}</a>
                                    <div class="header__social">
                                        <ul class="header__social-list">
                                            <li class="header__social-item">
                                                <a href="#" class="header__social-link">
                                                    <svg class="icon-whatsapp">
                                                        <use xlink:href="#whatsapp"></use>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li class="header__social-item">
                                                <a href="#" class="header__social-link">
                                                    <svg class="icon-viber">
                                                        <use xlink:href="#viber"></use>
                                                    </svg>
                                                </a>
                                            </li>
                                            <li class="header__social-item">
                                                <a href="#" class="header__social-link">
                                                    <svg class="icon-telegram">
                                                        <use xlink:href="#telegram"></use>
                                                    </svg>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="header__nav-inner header__nav-inner--top">
                            <div class="header__address">
                                <ul class="header__address-list">
                                    <li class="header__address-item">
                    <span class="header__address-link"><span class="header__address-icon"><svg class="icon-location"><use
                                        xlink:href="#location"></use></svg></span>{{ setting('.address') }}</span>
                                    </li>
                                    <li class="header__address-item">
                                        <a href="mailto: magazine@mail.ru" class="header__address-link"><span class="header__address-icon"><svg
                                                        class="icon-email"><use xlink:href="#email"></use></svg></span>{{ setting('.email') }}</a>
                                    </li>
                                    <li class="header__address-item">
                    <span class="header__address-link"><span class="header__address-icon"><svg class="icon-clock"><use
                                        xlink:href="#clock"></use></svg></span>Доставка 24 часа без выходных</span>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="header__nav-inner header__nav-inner--networks">
                            <span class="header__nav-title">Мы в соц сетях</span>
                            <div class="header__networks">
                                <ul class="header__networks-list">
                                    <li class="header__networks-item">
                                        <a href="" class="header__networks-link">
                                            <svg class="icon-youtube">
                                                <use xlink:href="#youtube"></use>
                                            </svg>
                                        </a>
                                    </li>
                                    <li class="header__networks-item">
                                        <a href="" class="header__networks-link">
                                            <svg class="icon-facebook">
                                                <use xlink:href="#facebook"></use>
                                            </svg>
                                        </a>
                                    </li>
                                    <li class="header__networks-item">
                                        <a href="" class="header__networks-link">
                                            <svg class="icon-instagram">
                                                <use xlink:href="#instagram"></use>
                                            </svg>
                                        </a>
                                    </li>
                                    <li class="header__networks-item">
                                        <a href="" class="header__networks-link">
                                            <svg class="icon-odnoklassniki">
                                                <use xlink:href="#odnoklassniki"></use>
                                            </svg>
                                        </a>
                                    </li>
                                    <li class="header__networks-item">
                                        <a href="" class="header__networks-link">
                                            <svg class="icon-vk">
                                                <use xlink:href="#vk"></use>
                                            </svg>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="header__info">
            <span class="header__info-inner">
              <a href="tel: +74912993730" class="header__info-link">
                <svg class="icon-phone-main">
                  <use xlink:href="#phone-main"></use>
                </svg>
              </a>
            </span>
                        <ul class="header__info-list">
                            <li class="header__info-item header__info-item--phone"></li>
                            <li class="header__info-item"><a href="#" class="header__info-link">
                                    <svg class="icon-whatsapp">
                                        <use xlink:href="#whatsapp"></use>
                                    </svg>
                                </a></li>
                            <li class="header__info-item"><a href="#" class="header__info-link">
                                    <svg class="icon-viber">
                                        <use xlink:href="#viber"></use>
                                    </svg>
                                </a></li>
                            <li class="header__info-item"><a href="#" class="header__info-link">
                                    <svg class="icon-telegram">
                                        <use xlink:href="#telegram"></use>
                                    </svg>
                                </a></li>
                        </ul>
                    </div>

                    <div class="header__open js-nav-open">
                        <span class="header__open-btn"><span class="header__open-decor"></span></span>
                    </div>
                </div>

            </div>

            <div class="header__bottom">
                <div class="header__categories">
                    <ul class="header__categories-list">
                        @foreach($categories as $category)
                            <li class="header__categories-item">
                                <a href="{{ route('category', $category->slug) }}" class="header__categories-link">{{ $category->name }}</a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
