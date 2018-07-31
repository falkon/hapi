<span class="popup-overview__caption">{{ $product->name }}</span>
<div class="popup-overview__wrapp">
    <div class="popup-overview__tabs js-tabs-wrap">
        <div class="popup-overview__content">
            <div class="popup-overview__content-item active js-tab-content">
                <div class="popup-overview__content-decor">
                    <img src="{{ $product->image }}" alt="">
                </div>
            </div>
            @if(count($product->images))
                @foreach($product->images as $img)
                    @if($img)
                    <div class="popup-overview__content-item js-tab-content">
                        <div class="popup-overview__content-decor">
                            <img src="/storage/{{ $img }}" alt="">
                        </div>
                    </div>
                    @endif
                @endforeach
            @endif
        </div>
        <div class="popup-overview__tab">
            <div class="popup-overview__tab-item active js-tab">
                <div class="popup-overview__tab-inner">
                    <img src="{{ $product->image }}" alt="">
                </div>
            </div>
            @if(count($product->images))
                @foreach($product->images as $img)
                    @if($img)
                    <div class="popup-overview__tab-item js-tab">
                        <div class="popup-overview__tab-inner">
                            <img src="/storage/{{ $img }}" alt="">
                        </div>
                    </div>
                    @endif
                @endforeach
            @endif
        </div>
    </div>
    <div class="popup-overview__descr">
        <ul class="popup-overview__characteristics">
            @foreach($product->productParameters as $param)
            <li class="popup-overview__characteristics-item">
                {{ $param->name }}: <span class="popup-overview__characteristics-value">{{ $param->value }}</span>
            </li>
            @endforeach
        </ul>
        <div class="popup-overview__price">
            <span class="popup-overview__price-new">{{ $product->priceNew }} р.</span> /
            <span class="popup-overview__price-old">{{ $product->priceOld }} р</span>
        </div>
        <div class="popup-overview__wrapp-basket">
            <div class="popup-overview__sale">
					<span class="popup-overview__sale-icon">
						<svg class="icon-sales">
							<use xlink:href="#sales"></use>
						</svg>
					</span>
                @if($product->type_view_price == 1)
                    <div class="popup-overview__sale-descr">
                        <span class="popup-overview__sale-text">Выгода</span>
                        <span class="popup-overview__sale-value">{{ $price->difference_price }}</span>
                    </div>
                @else
                    <div class="popup-overview__sale-descr">
                        <span class="popup-overview__sale-text">Скидка</span>
                        <span class="popup-overview__sale-value"> {{ $price->difference_price }}</span>
                    </div>
                @endif
            </div>
            <div class="popup-overview__basket">
                <a href="javascript:void(0);" onclick="MainFunction.addToBasket('{{ $product->id }}');" class="btn btn--border">В корзину</a>
            </div>
        </div>
        <div class="popup-overview__buy">
            <a data-fancybox data-src="#popup-order" data-product-name="{{ $product->name }}" data-product-id="{{ $product->id }}" href="javascript:void(0);" class="btn btn-one-click">Купить в один клик</a>
        </div>
    </div>
    <div class="popup-overview__descr-text">
        {{ strip_tags($product->description) }}
    </div>
    <input type="hidden" name="priceCurrent" value="{{ $price->id }}">
</div>