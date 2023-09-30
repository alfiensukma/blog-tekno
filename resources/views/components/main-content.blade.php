@php
use Carbon\Carbon;
@endphp
<div class="px-2">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Detail Post</li>
        </ol>
    </nav>
    <section class="pt-2">
        <h1 class="fw-medium" >{{ucwords($data->post_title)}}</h1>
    </section>
    <section class="pt-2">
        <small>By <b>Author's Name</b></small><br>
        <div class="row">
            <div class="col-10 d-flex align-items-center">
                <small>{{ Carbon::parse($data->updated_at)->format('F d, Y g:i A e') }} |
                    Updated {{ Carbon::parse($data->updated_at)->diffForHumans() }}
                </small>
            </div>
            <div class="col-2 d-flex align-items-center justify-content-end">
                <button class="btn btn-outline-secondary"><i class="fa-solid fa-link"></i></button>
            </div>
        </div>
    </section>
    <section class="pt-3">
        <img src="/assets/image/{{ $data->post_image ?? 'default.png' }}" alt="" class="main-content-img">
    </section>
    <section class="pt-3">
        <p style="text-align: justify;">{{$data->post_content}}</p>
    </section>
</div>