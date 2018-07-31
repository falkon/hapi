@extends('layout')

@section('content')


    <div class="card-head">
        <div class="container">
            <span class="card-head__caption">Выполним любой заказ! Посмотрите варианты для примера!</span>
            <div class="card-head__line"></div>
            <div class="card-head__subtitle-wrapp">
                <span class="card-head__subtitle">Не нашли нужный? Позвоните по телефону</span>
                <a href="tel:89038393730" class="card-head__phone">{{ setting('.phone') }}</a>
            </div>

        </div>
    </div>

    <div class="container">
        <aside class="sidebar">
            <div class="filter">
                <span class="filter__caption js-btn-show">Все игрушки</span>
                <div class="filter__show-mobile js-filter-show">
                    <span class="filter__title">По моделям</span>
                    <ul class="filter__list">
                        @foreach($types as $type)
                            <li class="filter__item">
                                <label class="checkbox">
                                    <input type="checkbox" onclick="MainFunction.filterCategory(this);" name="check[]" value="{{ $type->id }}">

                                    <span>{{ $type->name }} @if($type->count) ({{ $type->count }}) @endif</span>
                                </label>
                            </li>
                        @endforeach
                    </ul>
                </div>

            </div>
            <div class="order">
                <div class="order__head">
                    <div class="order__phone">
			<span class="order__phone-icon">
				<svg class="icon-phone-order">
					<use xlink:href="#phone-mobile"></use>
				</svg>
			</span>
                        <span class="order__phone-text">Наш телефон</span>
                    </div>
                    <a href="tel:+79038393730" class="order__phone-link">{{ setting('.phone') }}</a>
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
                    @foreach($basketOrder as $productBasket)
                        <div class="order__goods-item">
                            <div class="order__img-wrapp">
                                <img src="/storage/{{ $productBasket->image }}" alt="">
                            </div>
                            <div class="order__delete-goods" onclick="MainFunction.deleteFromBasket(this,'{{ $productBasket->id }}', '{{ $productBasket->priceId }}');"></div>
                        </div>
                    @endforeach
                </div>
                <span class="order__sale">Оформите заказ сейчас и получите <span class="order__sale-bold">скидку {{ $counter ? $counter->discount : 0 }}%</span></span>
                <div class="order__value">
                    <div class="order__value-top">
                        <span class="order__value-text">Сумма заказа:</span>
                        <span class="order__value-old">{{ $priceWithoutDiscount }} р</span>
                    </div>
                    <span class="order__value-new">{{ $price }} р.</span>
                </div>
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
                        <div class="stock-counter__row">
                            <input type="tel" name="phone" class="input stock-counter__input js-input-mask" placeholder="Номер телефона *" data-valid="\S+" required>
                        </div>
                        <div class="stock-counter__row">
                            <button onclick="MainFunction.saveOrder(this);"
                                    class="btn btn--large stock-counter__btn">СДЕЛАТЬ ЗАКАЗ</button>
                        </div>
                        <div class="stock-counter__row">
                            <label class="checkbox checkbox--small">
                                <input type="checkbox" name="check" required checked>
                                <span>Я Соглашаюсь на обработку персональных данных</span>
                            </label>
                        </div>
                        <input type="hidden" name="type" value="order">
                        {{ csrf_field() }}
                    </form>
                </div>
            </div>
        </aside>
        <div class="content">
            <div class="other-goods__wrapp other-goods__wrapp--card">
                @include('blocks.products')
            </div>
        </div>
    </div>
    <input type="hidden" name="categoryId" value="{{ $currentCategory->id }}">
    <div class="popup-overview" id="popup-overview">

    </div>


@endsection