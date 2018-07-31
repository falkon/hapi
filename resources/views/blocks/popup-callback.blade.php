<div class="popup-feedback" id="popup-feedback">
    <form action="">
        {{ csrf_field() }}
        <div class="popup-feedback__wrap">
            <span class="popup-feedback__title">Обратный звонок</span>
            <span class="popup-feedback__txt">
				Наш менеджер ответит на все интересующие вас вопросы
			</span>
            <div class="popup-feedback__input-box">
                <input type="tel" name="phone" class="popup-feedback__input js-input-mask" placeholder="Номер телефона*" data-valid="\S+" required>
            </div>
            <button class="btn btn-small popup-feedback__btn" onclick="MainFunction.saveApplication(this, event);">
                Перезвоните мне
            </button>
            <div class="popup-feedback__checkbox-wrap">
                <label class="checkbox">
                    <input type="checkbox" name="check" checked required>
                    <span>Я Cоглашаюсь на обработку персональных данных</span>
                </label>
            </div>
        </div>
    </form>
</div>