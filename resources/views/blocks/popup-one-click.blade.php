<div class="popup-order" id="popup-order">
    <div class="popup-order__wrap">
        <div class="popup-order__form">
            <form action="">
                {{ csrf_field() }}
                <input type="hidden" name="productId">
				<span class="popup-order__form-title">
					оформление заказа
				</span>
                <span class="popup-order__form-subtitle">
					Коричневый мишка (210см)
				</span>
                <div class="popup-order__form-item">
                    <input type="text" class="popup-order__form-input" name="name" placeholder="Ваше Имя*">
                </div>
                <div class="popup-order__form-item">
                    <input type="tel" class="popup-order__form-input js-input-mask" name="phone" placeholder="Номер телефона*" data-valid="\S+" required>
                </div>
                <button class="btn btn--small popup-order__form-btn" onclick="MainFunction.saveOrder(this);">
                    Купить товар
                </button>
                <div class="popup-order__form-checkbox">
                    <label class="checkbox">
                        <input type="checkbox" name="check" required checked>
                        <span>Я Cоглашаюсь на обработку персональных данных</span>
                    </label>
                </div>
                <input type="hidden" name="priceId" value="">
                <input type="hidden" name="type" value="oneclick">
            </form>
        </div>
        <div class="popup-order__desc">
			<span class="popup-order__desc-title">
				Бесплатная доставка по Санкт-Петербургу
			</span>
            <span class="popup-order__desc-text popup-order__desc-text--mod">
				Доставим медведя в течении 1 часа или к необходимому времени
			</span>
            <span class="popup-order__desc-text">
				Есть вопросы? звони :)
				<span class="popup-order__desc-phone-wrap">
					<span class="popup-order__desc-phone">{{ setting('.home_phone') }},</span>
					<span class="popup-order__desc-phone">{{ setting('.phone') }}</span>
				</span>
			</span>
            <span class="popup-order__desc-text popup-order__desc-text--mod">
				Оплата товара производится непосредственно при получении послетого, как Вы убедитесь в отличном качестве нашей продукции.
			</span>
            <span class="popup-order__desc-text">
				Если что-то не понравится, то можно и вернуть! :) Гарантия возврата в течении 2-х недель :)
			</span>
        </div>
    </div>
</div>