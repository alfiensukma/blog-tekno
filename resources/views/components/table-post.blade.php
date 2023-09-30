<div class="card shadow py-3 px-3">
    <div class="card-body">
        <div class="table-responsive py-1 px-1">
            <table id="table" class="table table-striped table-hover display nowrap align-middle" style="width:100%">
                <thead class="table-control text-center">
                    <tr>
                        <th>#</th>
                        <th>Title</th>
                        <th>Published at</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $id = 1 ?>
                    @forelse($posts as $post)
                    <tr>
                        <td>{{$id++}}</td>
                        <td>{{ Str::limit(ucwords($post->post_title), 90, '...') }}</td>
                        <td>{{$post->updated_at}}</td>
                        <td>
                            <button class="btn btn-primary text-black" data-bs-toggle="modal" data-bs-target="#modalView{{$post->id}}"><i class="fa-regular fa-eye"></i></button>
                            <button class="btn btn-warning text-black" data-bs-toggle="modal" data-bs-target="#modalUpdate{{$post->id}}"><i class="fa-solid fa-pencil"></i></button>
                            <button class="btn btn-danger text-black" data-bs-toggle="modal" data-bs-target="#modalDelete{{$post->id}}"><i class="fa-regular fa-trash-can"></i></button>
                        </td>
                        <x-modal-update :post="$post"/>
                        <x-modal-delete :post="$post"/>
                        <x-modal-view :post="$post"/>
                    </tr>
                    @empty
                    <tr><td colspan="4" class="text-center">Data not found.</td></tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#table').DataTable();
    });
</script>