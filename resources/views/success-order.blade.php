@extends('layout')
@section('content')
    <div class="success">
        <div class="container">
            <div class="success__wrapp">
                <div class="success__order">
                    <div class="success__title">
					<span class="success__title-text">
						<span class="success__title-text-first">Ваш заказ </span>
						<span class="success__title-img">
							@foreach($arrayProducts as $product)
                                <span class="success__img-item">
                                    <img src="/storage/{{ $product->image }}" alt="" class="success__img">
                                </span>
                            @endforeach
						</span>
						<span class="success__title-text-second">на сумму</span>
						<span class="success__title-value">{{ $order->fullPrice }} р.</span>
						<span class="success__title-text-third">принят</span>
						<span class="success__title-text-hide-mobile">в работу</span>
					</span>
                    </div>
                    <div class="success__descr-wrapp">
                        <span class="success__descr">Наш менеджер по продажам ликует и пустился в пляс.</span>
                        <span class="success__descr">Как только он устанет танцевать - тогда сразу же вам позвонит!</span>
                        <span class="success__descr">Мы думаем его хватит минут на 5-10. Но если у вас совсем нет времени ждать, просто позвоните по телефону: <a href="tel: {{ setting('.phone') }}" class="success__descr-tel">{{ setting('.phone') }}</a></span>
                    </div>
                    <div class="success__descr-mobile">
                        <span class="success__descr-mobile-text">Телефон для быстрой связи:</span>
                        <a href="tel: {{ setting('.phone') }}" class="success__descr-mobile-tel">{{ setting('.phone') }}</a>
                    </div>
                </div>
                <div class="success__img-bg">
                    <div class="success__img-first">
                        <img src="/pic/order/order-01.png" alt="">
                    </div>
                    <div class="success__img-second">
                        <img src="/pic/order/order-02.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    @if(count($otherProducts))
        <div class="other-goods">
            <div class="container">
                <span class="other-goods__caption">Посмотрите, что еще обычно берут с этим заказом</span>
                <span class="other-goods__line"></span>
                <span class="other-goods__subtitle">Сделайте быстрый выбор, кликнув в то, что вам понравилось</span>
                <div class="other-goods__wrapp">
                    @include('blocks.products', ['products' => $arrayOtherProducts, 'mailIs' => 1])

                </div>
            </div>
        </div>
    @endif
    <div class="popup-overview" id="popup-overview">

    </div>
    <input type="hidden" name="orderId" value="{{ $order->id }}">
@endsection