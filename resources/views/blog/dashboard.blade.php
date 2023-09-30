<x-app-layout>
    <x-slot name="header">
        <div class="fixed-top">
            <x-navigation/>
        </div>
    </x-slot>
</x-app-layout>

<section>
    <div class="row d-flex justify-content-center mx-4 mt-6">
        <div class="row">
            <div class="col-4">
                <x-dashboard-card :title="'Posts Create'" :icon="'fa-upload'" :countPost="$countPost"/>
            </div>
            <div class="col-4">
                <x-dashboard-card :title="'Archived Posts'" :icon="'fa-inbox'" :countArchive="$countArchive"/>
            </div>
            <div class="col-4">
            <x-dashboard-card :title="'Readership'" :icon="'fa-book-open-reader'" :countReadership="$countReadership"/> 
            </div>
        </div>
    </div>
</section>