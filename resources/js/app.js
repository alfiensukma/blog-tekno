import './bootstrap';

const inputFile = document.getElementById('inputFile');
const imagePreview = document.getElementById('imagePreview');
const previewImage = document.getElementById('previewImage');
const removeButton = document.getElementById('removeButton');

  inputFile.addEventListener('change', function() {
    const fileInput = this;

    if (fileInput.files && fileInput.files[0]) {
      const reader = new FileReader();

      reader.onload = function(e) {
        imagePreview.style.display = 'block';
        previewImage.src = e.target.result;
        removeButton.style.display = 'block'; // Menampilkan tombol hapus saat gambar dipilih
      };

      reader.readAsDataURL(fileInput.files[0]);
    } else {
      imagePreview.style.display = 'none';
      previewImage.src = '#';
      removeButton.style.display = 'none'; // Menyembunyikan tombol hapus saat tidak ada gambar yang dipilih
    }
  });

  removeButton.addEventListener('click', function() {
    // Menghapus gambar pratinjau dan mengosongkan input file
    imagePreview.style.display = 'none';
    previewImage.src = '#';
    inputFile.value = ''; // Mengosongkan input file
    removeButton.style.display = 'none'; // Menyembunyikan tombol hapus
  });

  // Optional: Add event listener to browse button to trigger file input
  document.getElementById('browseButton').addEventListener('click', function() {
    inputFile.click();
  });

  $(document).ready(function () {
    // Fungsi untuk mengatur tampilan awal gambar dan tombol "Remove"
    function setInitialImage() {
        var postImage = "{{ isset($post->post_image) ? asset('assets/image/' . $post->post_image) : '' }}";
        if (postImage) {
            $('#updatePreviewImage').attr('src', postImage);
            $('#updatePreviewImage').show();
            $('#updateRemoveButton').show();
        } else {
            $('#updatePreviewImage').hide();
            $('#updateRemoveButton').hide();
        }
    }

    // Panggil fungsi setInitialImage saat halaman dimuat
    setInitialImage();

    // Event handler untuk input file ketika ada perubahan
    $('#updateImageInput').change(function () {
        var input = this;
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#updatePreviewImage').attr('src', e.target.result);
                $('#updatePreviewImage').show();
                $('#updateRemoveButton').show();
            };
            reader.readAsDataURL(input.files[0]);
        }
    });

    // Event handler untuk tombol "Remove"
    $('#updateRemoveButton').click(function () {
        $('#updateImageInput').val('');
        $('#updatePreviewImage').attr('src', '');
        $('#updatePreviewImage').hide();
        $('#updateRemoveButton').hide();
    });
});