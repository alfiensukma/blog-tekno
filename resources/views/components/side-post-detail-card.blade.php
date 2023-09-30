@php
    use Carbon\Carbon;
@endphp
<div class="row">
    @foreach($datajustAdded as $post)
    <div class="col-12 pb-3">
        <div class="card card-post" style="width: 18rem; cursor: pointer;">
            <img src="/assets/image/{{ $post->post_image ?? 'default.png' }}" class="card-img-top" alt="...">
            <div class="card-body card-body-custom pt-3 ">
                <p class="card-text"><small class="text-muted">{{ Carbon::parse($post->updated_at)->diffForHumans() }}</small></p>
                <h5 class="card-title">{{ Str::limit(ucwords($post->post_title), 80, '...') ?? 'This is Title' }}</h5>
            </div>
        </div>
    </div>
    @endforeach
</div>
'