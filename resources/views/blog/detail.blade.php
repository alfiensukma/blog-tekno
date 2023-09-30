<x-app-layout>
    <x-slot name="header">
        <div class="fixed-top nav-shadow">
            <x-navigation />
        </div>
    </x-slot>
</x-app-layout>

<x-sidebar-blog/>

<div class="row mx-4">
    <div class="col-sm-8 p-custom-detail-post">
        <x-main-content :data="$data"/>
    </div>  
    <div class="col-sm-4 p-custom-side-detail-post">
        <h4 class="fw-semibold pb-3">Next Read/Editor's Pick</h4>
        <x-side-post-detail-card :datajustAdded="$datajustAdded"/>
    </div>

</div>