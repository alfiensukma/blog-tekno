<x-app-layout>
    <x-slot name="header">
        <div class="fixed-top nav-shadow">
            <x-navigation />
        </div>
    </x-slot>
</x-app-layout>

<x-sidebar-blog/>

<div class="row mx-0">
    <div class="col-8">
        <section class="m-carousel" id="highlight">
            <span class="title-black">Hightlights</span>
            <div class="pt-4"><x-carousel :posts="$posts" /></div>
        </section>
    </div>
    <div class="col-4">
        <div class="container">
            <section class="m-side-post mx-4" id="just-added">
                <span class="title-red">Just Added</span>
                <div class="pt-4"><x-side-post :posts="$posts" /></div>
            </section>
        </div>
    </div>

    <section class="pt-4" id="top-views">
        <div class="m-main-post">
            <span class="title-blue">Top Views</span>
            <div class="pt-4"><x-main-post :posts="$posts" /></div>
        </div>
    </section>
</div>