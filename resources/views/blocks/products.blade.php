@foreach($products as $product)
    <div class="other-goods__item other-goods__item--card js-goods-item">
        <div class="other-goods__inner js-goods-inner">
            <div class="other-goods__head js-height">
                <span class="other-goods__title">{{ $product->name }}</span>
            </div>
            <div data-fancybox data-src="#popup-overview" class="other-goods__body js-goods-visited" data-product-id="{{ $product->id }}"
                 onclick="MainFunction.showInfo(this); @if(isset($mailIs)) MainFunction.mailIs(this); @endif">
                @if($product->parametr)
                    <span class="other-goods__bottom-descr">{{ $product->parametr }}</span>
                @endif
                {{--<div class="other-goods__img-wrapp" style="background-image: url({{ $product->getCroppedPhoto('image', 'image', 'norm') }});">--}}
                    @if(count($product->prices) && isset($product->prices[0]) && $product->prices[0]->image)
                        <div class="other-goods__img-wrapp" style="background-image: url({{ '/storage/'.$product->prices[0]->image }});"></div>
                    @else
                        <div class="other-goods__img-wrapp" style="background-image: url({{ '/storage/'.$product->image }});"></div>
                    @endif
                <div class="other-goods__overflow">
                    <div class="other-goods__overflow-content">

                        <span class="other-goods__overflow-loupe" data-product-id="{{ $product->id }}" onclick="MainFunction.showInfo(this);">
							<svg class="icon-loupe">
								<use xlink:href="#search"></use>
							</svg>
						</span>

                    </div>
                </div>
            </div>

            <div class="other-goods__price">
                @if(count($product->prices))
                    <span class="other-goods__price-new">{{ $product->prices[0]->price }} р.</span> /
                    <span class="other-goods__price-old">{{ $product->prices[0]->price_old }} р.</span>
                @endif
            </div>
            @if($product->category->is_show_dynamic)
                <div class="other-goods__select">
                    <select name="test" id="priceIdField" class="js-select" onchange="MainFunction.changePrice(this);">
                        @foreach($product->prices as $price)
                            <option data-img="{{ $price->image }}" value="{{ $price->id }}">{{ $price->name }} ({{ $price->price }} р.)</option>
                        @endforeach
                    </select>
                </div>
            @else
                <input data-img="{{ $product->prices[0]->image }}" value="{{ $product->prices[0]->id }}" type="hidden" id="priceIdField">
            @endif
            <div class="other-goods__wrapp-basket">
                <div class="other-goods__sale">
                    @if(count($product->prices) && $product->prices[0]->difference_price)
                        <span class="other-goods__sale-icon">
                            <svg class="icon-sales">
                                <use xlink:href="#sales"></use>
                            </svg>
                        </span>
                    @endif
                    <div class="other-goods__sale-descr">
                        @if(count($product->prices) && $product->prices[0]->difference_price)
                            <span class="other-goods__sale-text">Скидка</span>
                            <span class="other-goods__sale-value"> {{ $product->prices[0]->difference_price }}</span>
                        @endif
                    </div>
                </div>
                <div class="other-goods__basket">
                    <a href="javascript:void(0);" onclick="MainFunction.addToBasket('{{ $product->id }}', this);" class="btn btn--border">В корзину</a>
                </div>
            </div>
            <div class="other-goods__buy">
                <a data-fancybox data-src="#popup-order" data-product-id="{{ $product->id }}" data-product-name="{{ $product->name }}" href="javascript:void(0);" class="btn btn-one-click">Купить в один клик</a>
            </div>

        </div>
    </div>
@endforeach