<div class="card p-3">
    <div class="card-body pb-0">
        <div class="row justify-content-center">
            <div class="col-md-7 d-flex align-items-center">
                <h5 class="card-title">{{$title}}</h5>
            </div>
            <div class="col-md-5 d-flex align-items-center justify-content-end">
                <div class="card-icon fs-4 d-flex justify-content-center align-items-center">
                @isset($icon)
                    <span><i class="fa-solid {{$icon}}"></i></span>
                @endisset
                </div>
            </div>
        </div>
        <div class="pt-2 row justify-content-start">
        @isset($countPost)
            <p class="fs-1">{{$countPost}}</p>
        @endisset
        @isset($countArchive)
            <p class="fs-1">{{$countArchive}}</p>
        @endisset
        @isset($countReadership)
            <p class="fs-1">{{$countReadership}}</p>
        @endisset
        </div>
    </div>
</div>