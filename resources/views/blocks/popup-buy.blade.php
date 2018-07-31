<div class="popup-buy" id="popup-buy">
    <div class="popup-buy__wrap">
        <div class="popup-buy__left">
            <div class="order__head">
                <div class="order__phone">
						<span class="order__phone-icon">
							<svg class="icon-phone-order">
								<use xlink:href="#phone-mobile"></use>
							</svg>
						</span>
                    <span class="order__phone-text">Наш телефон</span>
                </div>
                <a href="tel:{{ setting('.phone') }}" class="order__phone-link">{{ setting('.phone') }}</a>
                <ul class="order__social-list">
                    <li class="order__social-item">
                        <a href="#" class="order__social-link">
                            <svg class="icon-order-whatsapp">
                                <use xlink:href="#whatsapp"></use>
                            </svg>
                        </a>
                    </li>
                    <li class="order__social-item">
                        <a href="#" class="order__social-link">
                            <svg class="icon-order-viber">
                                <use xlink:href="#viber"></use>
                            </svg>
                        </a>
                    </li>
                    <li class="order__social-item">
                        <a href="#" class="order__social-link">
                            <svg class="icon-order-telegram">
                                <use xlink:href="#telegram"></use>
                            </svg>
                        </a>
                    </li>
                </ul>
            </div>
            <span class="order__caption">Ваш заказ</span>
            <div class="order__goods scroll-pane">
                <div class="order__goods-inner">
                    @php
                        $order = [];
                        $basketOrder = session('basket');
                        if(!is_null($basketOrder))
                        foreach ($basketOrder as $key => $b) {
                            $explodeKey = explode('_', $key);
                            $basket = \App\Product::find($b['product_id']);
                            $basket->priceId = $explodeKey[1];
                            array_push($order, $basket);
                        }

                    @endphp
                    @foreach($order as $basketProduct)
                        <div class="order__goods-item" data-product-basket-id="{{ $basketProduct->id }}">
                            <div class="order__img-wrapp">
                                <img src="/storage/{{ $basketProduct->image }}" alt="">
                            </div>
                            <div class="order__delete-goods" onclick="MainFunction.deleteFromBasket(this, '{{ $basketProduct->id }}', '{{ $basketProduct->priceId }}');"></div>
                        </div>
                    @endforeach
                </div>
            </div>
            <span class="popup-buy__discount-txt popup-buy__discount-txt--mob">
				Оформите заказ сейчас и получите <span>скидку 15%</span>
				</span>
            <div class="order__value">
                <div class="order__value-top">
                    <span class="order__value-text">Сумма заказа:</span>
                    <span class="order__value-old"></span>
                </div>
                <span class="order__value-new"></span>
            </div>

        </div>
        <div class="popup-buy__right">
			<span class="popup-buy__discount-txt">
				Оформите заказ сейчас и получите <span>скидку 15%</span>
			</span>

            <div class="stock-counter  stock-counter--small">
                <span class="stock-counter__title">До конца акции осталось</span>
                <div class="stock-counter__inner">
                    <div class="stock-counter__middle js-stock-counter counter--small">
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
                    <input type="hidden" name="type" value="order">
                    <div class="stock-counter__row">
                        <input type="tel" name="phone" class="input stock-counter__input js-input-mask" placeholder="Номер телефона *" data-valid="\S+" required>
                    </div>
                    <div class="stock-counter__row">
                        <button class="btn btn--large stock-counter__btn" onclick="MainFunction.saveOrder(this);">СДЕЛАТЬ ЗАКАЗ</button>
                    </div>
                    <div class="stock-counter__row">
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
</div>