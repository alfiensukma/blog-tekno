<x-app-layout>
    <x-slot name="header">
        <div class="fixed-top">
            <x-navigation />
        </div>
    </x-slot>
</x-app-layout>

<section>
    <div class="row d-flex justify-content-center mx-4 mt-6 px-2">
        <div class="col-10">
            <h2>Manage Post</h2>
        </div>
        <div class="col-2 d-flex align-items-center justify-content-end">
            <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalAdd" title="Add"><i class="fa-solid fa-plus"></i></button>
        </div>
        @if (Session::has('success'))
        <div class="px-2 pt-2"><x-alert-success/></div>
        @endif
    </div>
    <div class="mx-4 px-custom pt-3"><x-table-post :posts="$posts" /></div>
    <x-modal-add/>
</section>