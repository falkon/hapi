@extends('layout')

@section('content')

    <div class="categories">
        <div class="container">
            <h1 class="categories__title">Искренний подарок от сердца покажет всю красоту вашей души</h1>
            <div class="categories__body">
                <ul class="categories__list">

                    @foreach($categories as $category)
                        <li class="categories__item">
                            <a href="{{ route('category', $category->slug) }}" class="categories__link">
                                <span class="categories__holder" style="background-image: url({{ $category->getCroppedPhoto('image', 'image', 'norm') }});">
                                  <span class="categories__inner">
                                    <h2 class="categories__caption">{{ $category->name }}</h2>
                                    <span class="btn categories__btn">Выбрать подарок <span class="arrow arrow--right"></span></span>
                                  </span>
                                </span>
                            </a>
                        </li>
                    @endforeach

                </ul>
            </div>
        </div>
    </div>


@endsection