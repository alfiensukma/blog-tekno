<div id="carouselExampleCaptions" class="carousel slide">
    <div class="carousel-indicators">
        @foreach ($dataHighlight as $key => $post)
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="{{ $key }}" @if ($loop->first) class="active" @endif aria-label="Slide {{ $key }}"></button>
        @endforeach
    </div>
    <div class="carousel-inner rounded">
        @foreach ($dataHighlight as $key => $post)
            <div class="item carousel-item @if ($loop->first) active @endif">
                <img src="/assets/image/{{ $post->post_image ?? 'default.png' }}" class="carousel-img d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>{{ Str::limit(ucwords($post->post_title), 50, '...') ?? 'Default Slide Label' }}</h5>
                </div>
            </div>
        @endforeach
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>