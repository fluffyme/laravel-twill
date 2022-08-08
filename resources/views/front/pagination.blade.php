@if($paginator->hasPages())
    <div class="pagging">
        @if (!$paginator->onFirstPage())
            <a href="{{ $paginator->previousPageUrl() }}" class="pagging__arrow pagging__arrow_l"></a>
        @endif
        <ul class="pagging__list">
            @foreach ($elements as $element)

                @if (is_string($element))
                    <span class="pagging__item">{{ $element }}</span>
                @endif

                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        <li>
                            @if ($page == $paginator->currentPage())
                                <a href="{{ $url }}" class="pagging__item _active">{{ $page }}</a>
                            @else
                                <a href="{{ $url }}" class="pagging__item">{{ $page }}</a>
                            @endif
                        </li>
                    @endforeach
                @endif
            @endforeach
        </ul>
        @if ($paginator->hasMorePages())
            <a href="{{ $paginator->nextPageUrl() }}" class="pagging__arrow pagging__arrow_r"></a>
        @endif
    </div>
@endif
