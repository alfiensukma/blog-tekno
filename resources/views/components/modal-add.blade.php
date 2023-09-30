<div class="modal fade modal-lg" id="modalAdd" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title fw-semibold" id="exampleModalLabel">Create Post</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="/addpost" enctype="multipart/form-data" method="post">
        <div class="modal-body">
          @csrf
          <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" name="post_title" required="required" value="{{old('post_title')}}" autocomplete="off" class="form-control" id="title" placeholder="Input the title here">
          </div>
          <div class="mb-3">
            <label for="content" class="form-label">Content</label>
            <textarea name="post_content" required="required" value="{{old('post_content')}}" class="form-control" id="content" rows="6" placeholder="Input the content here"></textarea>
          </div>
          <div class="mb-3">
            <label for="inputFile" class="form-label">Attachment</label>
            <div class="input-group">
              <input type="file" name="post_image" class="form-control" id="inputFile" aria-describedby="inputFile" aria-label="Upload" accept="image/*">
              <button class="btn btn-secondary" type="button" id="inputFile">Browse Files</button>
            </div>
            <div class="image-container mt-3">
              <div class="image-preview" id="imagePreview" style="display: none;">
                <img src="#" alt="Image Preview" id="previewImage">
                <button type="button" class="btn btn-danger" id="removeButton" style="display: none;">Remove Image</button>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
      </form>
    </div>
  </div>
</div>