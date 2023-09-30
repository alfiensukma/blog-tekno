<div class="modal fade modal-lg" id="modalView{{$post->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title fw-semibold" id="exampleModalLabel">Preview Post</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-4">
                        <img src="/assets/image/{{$post->post_image ?? 'default.png'}}" alt="" class="card-img-top">
                    </div>
                    <div class="col-sm-8">
                        <p style="text-align: justify;" class="fw-semibold">{{$post->post_title}}</p>
                        <p style="text-align: justify;">{{$post->post_content}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>