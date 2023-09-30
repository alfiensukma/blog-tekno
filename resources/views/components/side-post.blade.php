@php
    use Carbon\Carbon;
@endphp
@foreach($datajustAdded as $post)
<div class="card card-post pb-3">
  <div class="row no-gutters" style="cursor: pointer;" onclick="window.location.href = '/post-detail/{{$post->id}}';">
    <div class="col-md-7">
      <div class="card-body card-body-custom">
        <h5 class="card-title">{{ Str::limit(ucwords($post->post_title), 80, '...') ?? 'This is Title' }}</h5>
        <p class="card-text"><small class="text-muted">{{ Carbon::parse($post->updated_at)->diffForHumans() }}</small></p>
      </div>
    </div>
    <div class="col-md-5">
      <img src="/assets/image/{{ $post->post_image ?? 'default.png' }}" class="card-img-top" alt="...">
    </div>
  </div>
</div>
@endforeach