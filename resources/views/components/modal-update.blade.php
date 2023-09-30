<div class="modal fade modal-lg" id="modalUpdate{{$post->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title fw-semibold" id="exampleModalLabel">Update Post</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/updatepost/{{$post->id}}" enctype="multipart/form-data" method="post">
                <div class="modal-body">
                    @csrf
                    <div class="mb-3">
                        <label for="title" class="form-label">Title</label>
                        <input type="text" name="post_title" required="required" value="{{$post->post_title}}" autocomplete="off" class="form-control" id="title" placeholder="Input the title here">
                    </div>
                    <div class="mb-3">
                        <label for="content" class="form-label">Content</label>
                        <textarea name="post_content" required="required" class="form-control" id="content" rows="6" placeholder="Input the content here">{{ $post->post_content }}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="inputFile" class="form-label">Attachment</label>
                        <div class="form-group">
                            <input type="file" class="form-control" id="updateImageInput" name="post_image" accept="image/*">
                        </div>
                        <div class="form-group">
                            <div class="image-preview" id="updateImagePreview">
                                @if (isset($post->post_image))
                                <img src="{{ asset('assets/image/' . $post->post_image) }}" alt="Image Preview" class="img-thumbnail" id="updatePreviewImage">
                                <button type="button" class="btn btn-danger" id="updateRemoveButton">Remove</button>
                                @else
                                <img src="" alt="Image Preview" class="img-thumbnail" id="updatePreviewImage" style="display: none;">
                                <button type="button" class="btn btn-danger" id="updateRemoveButton" style="display: none;">Remove</button>
                                @endif
                            </div>
                        </div>
                        <small>Latest image: {{ $post->post_image }}</small>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>