<footer class="footer js-footer">
    <div class="container">
        <div class="footer__top">
            <div class="footer__logo">
                <a href="/" class="footer__logo-link">
					<span class="footer__logo-icon">
						<svg class="icon-logo">
   	           <use xlink:href="#logo"></use>
   	         </svg>
					</span>
                    <span class="footer__logo-text">
   	       <span class="footer__logo-name">ХАПИ ПОДАРКИ</span>
   	       <span class="footer__logo-city">Санкт-Петербург</span>
   	     </span>
                </a>
            </div>
            <div class="footer__contacts">
                <ul class="footer__contacts-list">
                    <li class="footer__contacts-item">
                        <a href="tel: {{ setting('.home_phone') }}" class="footer__contacts-link">
							<span class="footer__contacts-icon">
								<svg class="icon-phone">
									<use xlink:href="#phone"></use>
								</svg>
							</span>
                            {{ setting('.home_phone') }}
                        </a>
                    </li>
                    <li class="footer__contacts-item">
                        <a href="tel: {{ setting('.phone') }}" class="footer__contacts-link">
							<span class="footer__contacts-icon">
								<svg class="icon-phone-mobile">
									<use xlink:href="#phone-mobile"></use>
								</svg>
							</span>
                            {{ setting('.phone') }}
                        </a>
                        <div class="footer__contacts-social">
                            <a href="#" class="footer__contacts-social-link">
                                <svg class="icon-whatsapp">
                                    <use xlink:href="#whatsapp"></use>
                                </svg>
                            </a>
                            <a href="#" class="footer__contacts-social-link">
                                <svg class="icon-viber">
                                    <use xlink:href="#viber"></use>
                                </svg>
                            </a>
                            <a href="#" class="footer__contacts-social-link">
                                <svg class="icon-telegram">
                                    <use xlink:href="#telegram"></use>
                                </svg>
                            </a>
                        </div>
                    </li>
                    <li class="footer__contacts-item footer__contacts-item--feedback">
                        <a data-fancybox data-src="#popup-feedback" href="javascript:;" class="btn btn--small footer__btn">
                            Обратный звонок
                        </a>
                    </li>
                </ul>
                <div class="footer__basket">
                    <a href="#" class="footer__basket-link">
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
                        <span class="footer__basket-value">{{ $basket }}</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="footer__middle">
            <div class="footer__menu">
                <ul class="footer__menu-inner">
                    <li class="footer__menu-item">
                        <a href="{{ route('page', 'kontakty') }}" class="footer__menu-link">Контакты</a>
                    </li>
                    <li class="footer__menu-item">
                        <a href="{{ route('page', 'dostavka') }}" class="footer__menu-link">Доставка</a>
                    </li>
                    <li class="footer__menu-item">
                        <a href="{{ route('page', 'oplata') }}" class="footer__menu-link">Оплата</a>
                    </li>
                    <li class="footer__menu-item">
                        <a href="{{ route('page', 'blog') }}" class="footer__menu-link">Блог</a>
                    </li>
                    <li class="footer__menu-item">
                        <a href="{{ route('page', 'otzyvy') }}" class="footer__menu-link">Отзывы</a>
                    </li>
                </ul>
            </div>
            <div class="footer__address">
                <ul class="footer__address-inner">
                    <li class="footer__address-item">
                        <a href="#" class="footer__address-link">
							<span class="footer__address-icon">
								<svg class="icon-location">
									<use xlink:href="#location"></use>
								</svg>
							</span>
                            <span class="footer__address-txt">{{ setting('.address') }}</span>
                        </a>
                    </li>
                    <li class="footer__address-item">
                        <a href="mailto: magazine@mail.ru" class="footer__address-link">
							<span class="footer__address-icon">
								<svg class="icon-email">
									<use xlink:href="#email"></use>
								</svg>
							</span>
                            <span class="footer__address-txt">{{ setting('.email') }}</span>
                        </a>
                    </li>
                    <li class="footer__address-item">
                        <a href="#" class="footer__address-link">
							<span class="footer__address-icon">
								<svg class="icon-clock">
									<use xlink:href="#clock"></use>
								</svg>
							</span>
                            <span class="footer__address-txt">Доставка 24 часа без выходных</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="footer__bottom">
            <div class="footer__social">
                <span class="footer__social-txt">Мы в соцсетях</span>
                <ul class="footer__social-list">
                    <li class="footer__social-item">
                        <a href="{{ setting('.youtube') }}" class="footer__social-link">
                            <svg class="icon-youtube">
                                <use xlink:href="#youtube"></use>
                            </svg>
                        </a>
                    </li>
                    <li class="footer__social-item">
                        <a href="{{ setting('.facebook') }}" class="footer__social-link">
                            <svg class="icon-facebook">
                                <use xlink:href="#facebook"></use>
                            </svg>
                        </a>
                    </li>
                    <li class="footer__social-item">
                        <a href="{{ setting('.instagram') }}" class="footer__social-link">
                            <svg class="icon-instagram">
                                <use xlink:href="#instagram"></use>
                            </svg>
                        </a>
                    </li>
                    <li class="footer__social-item">
                        <a href="{{ setting('.odnoklassniki') }}" class="footer__social-link">
                            <svg class="icon-odnoklassniki">
                                <use xlink:href="#odnoklassniki"></use>
                            </svg>
                        </a>
                    </li>
                    <li class="footer__social-item">
                        <a href="{{ setting('.vk_link') }}" class="footer__social-link">
                            <svg class="icon-vk">
                                <use xlink:href="#vk"></use>
                            </svg>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="footer__copy">
				<span class="footer__copy-txt">
					ООО "Подарки Санкт-Петербург" &copy; Все права защищены, 2018.<span> Сайт не является публичной офертой.</span>
				</span>
            </div>
        </div>
    </div>
</footer>