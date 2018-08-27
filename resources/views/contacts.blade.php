@extends('layout')
@section('content')
    <style>
        .shares:first-child {
            display: none;
        }
    </style>
    <div class="shares shares--contacts" style="background-image: url(pic/bg/bg-contacts.jpg);">
        <div class="container">
            <div class="shares__box-left">
                <div class="shares__info">
                    <div class="shares__info-holder">
                        <div class="shares__info-header">
                            <span class="shares__info-title">Мы из Рязани!</span>
                            <span class="shares__info-title">Весь товар в наличии в шоу-руме в центре города!</span>
                        </div>
                        <ul class="shares__info-list">
                            <li class="shares__info-item">
                                <div class="shares__info-inner shares__info-inner--small">
                                    <svg class="shares__info-location icon-location">
                                        <use xlink:href="#location"></use>
                                    </svg>
                                </div>
                                <div class="shares__info-inner shares__info-inner--large">
                                    <span class="shares__info-caption">Шоу-рум</span>
                                    <span class="shares__info-desc">{{ setting('.address') }}</span>
                                </div>
                            </li>
                            <li class="shares__info-item">
                                <div class="shares__info-inner shares__info-inner--small">
                                    <svg class="icon-phone-call">
                                        <use xlink:href="#phone-call"></use>
                                    </svg>
                                </div>
                                <div class="shares__info-inner shares__info-inner--large">
                                    <span class="shares__info-caption">Телефон</span>
                                    <a href="tel: {{ setting('.home_phone') }}" class="shares__info-desc">{{ setting('.home_phone') }}</a>
                                </div>
                            </li>
                            <li class="shares__info-item">
                                <div class="shares__info-inner shares__info-inner--small">
                                    <svg class="icon-mobile-phone">
                                        <use xlink:href="#mobile-phone"></use>
                                    </svg>
                                </div>
                                <div class="shares__info-inner shares__info-inner--large">
                                    <span class="shares__info-caption">Мобильный телефон</span>
                                    <a href="tel: {{ setting('.phone') }}" class="shares__info-desc">{{ setting('.phone') }}</a>
                                </div>
                            </li>
                            <li class="shares__info-item">
                                <div class="shares__info-inner shares__info-inner--small">
                                    <svg class="shares__info-email icon-email">
                                        <use xlink:href="#email"></use>
                                    </svg>
                                </div>
                                <div class="shares__info-inner shares__info-inner--large">
                                    <span class="shares__info-caption">Электронный адрес</span>
                                    <a href="mailto: magazine@mail.ru" class="shares__info-desc">{{ setting('.email') }}</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="shares__box-right">
      <span class="shares__title">Сейчас действуют скидки! Чтобы их получить, оставьте свой телефон и <span
                  class="shares__title-large">мы перезвоним!</span></span>
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
                            <input type="tel" class="input stock-counter__input js-input-mask" placeholder="Номер телефона *" data-valid="\S+" required>
                        </div>
                        <div class="stock-counter__row">
                            <button class="btn btn--large stock-counter__btn">КУПИТЬ ПЛЮШЕВОГО МИШКУ</button>
                        </div>
                        <div class="stock-counter__row">
                            <label class="checkbox checkbox--small">
                                <input type="checkbox" name="check" required checked>
                                <span>Я Соглашаюсь на обработку персональных данных</span>
                            </label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="map">
        <div class="container">
            <div class="map__holder">
                <span class="map__title">Схема проезда</span>
                <div class="map__box" id="map"></div>
            </div>
            <div class="map__showroom">
                <span class="map__title">Фотографии нашего шоу-рума</span>
                <div class="map__showroom-holder">
                    <div class="map__showroom-item">
                        <a href="/pic/showroom/showroom-01.jpg" class="fancy map__showroom-item-inner">
                            <img src="pic/showroom/showroom-01.jpg" alt="photo">
                        </a>
                    </div>
                    <div class="map__showroom-item">
                        <a href="/pic/showroom/showroom-02.jpg" class="fancy map__showroom-item-inner">
                            <img src="pic/showroom/showroom-02.jpg" alt="photo">
                        </a>
                    </div>
                    <div class="map__showroom-item">
                        <a href="/pic/showroom/showroom-03.jpg" class="fancy    map__showroom-item-inner">
                            <img src="pic/showroom/showroom-03.jpg" alt="photo">
                        </a>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="social">
        <div class="container">
            <span class="social__caption">Мы в соцсетях</span>
            <div class="social__wrapp">
                <div class="social__item">
                    <div class="social__inner">
                        <div class="social__img-wrapp">
                            <img src="/social/social-01.jpg" alt="">
                        </div>
                        <div class="social__overflow-descr">
                            <div class="social__overflow-content">
							<span class="social__icon">
								<svg class="icon-vk">
									<use xlink:href="#vk"></use>
								</svg>
							</span>
                                <span class="social__name">VK</span>
                                <span class="social__line"></span>
                                <a href="{{ setting('.vk_link') }}" class="social__link">{{ setting('.vk_link') }}</a>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="social__item">
                    <div class="social__inner">
                        <div class="social__img-wrapp">
                            <img src="/social/social-02.jpg" alt="">
                        </div>
                        <div class="social__overflow-descr">
                            <div class="social__overflow-content">
							<span class="social__icon">
								<svg class="icon-instagram-large">
									<use xlink:href="#instagram-large"></use>
								</svg>
							</span>
                                <span class="social__name">Instagram</span>
                                <span class="social__line"></span>
                                <a href="{{ setting('.instagram') }}" class="social__link">{{ setting('.instagram') }}</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--div class="social__item">
                    <div class="social__inner">
                        <div class="social__img-wrapp">
                            <img src="pic/social/social-03.jpg" alt="">
                        </div>
                        <div class="social__overflow-descr">
                            <div class="social__overflow-content">
							<span class="social__icon">
								<svg class="icon-facebook">
									<use xlink:href="#facebook"></use>
								</svg>
							</span>
                                <span class="social__name">Facebook</span>
                                <span class="social__line"></span>
                                <a href="{{ setting('.facebook') }}" class="social__link">{{ setting('.facebook') }}</a>
                            </div>
                        </div>
                    </div>
                </div-->
                <!--div class="social__item">
                    <div class="social__inner">
                        <div class="social__img-wrapp">
                            <img src="pic/social/social-04.jpg" alt="">
                        </div>
                        <div class="social__overflow-descr">
                            <div class="social__overflow-content">
							<span class="social__icon">
								<svg class="icon-odnoklassniki">
									<use xlink:href="#odnoklassniki"></use>
								</svg>
							</span>
                                <span class="social__name">Одноклассники</span>
                                <span class="social__line"></span>
                                <a href="{{ setting('.odnoklassniki') }}" class="social__link">{{ setting('.odnoklassniki') }}</a>
                            </div>

                        </div>
                    </div>
                </div-->
            </div>
        </div>
    </div>
@endsection
