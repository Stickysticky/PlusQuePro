<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Détails du film
        </h2>
    </x-slot>

    <div id="movie" class="max-w-2xl mx-auto">
    <div class="bg-white shadow-lg rounded-lg flex">
        <div class="w-1/2 mt-6 mb-6 ml-6">
            <img src="{{ $movie->getPosterUrlAttribute() }}" alt="{{ $movie->title }}" class="w-full h-30 object-cover">
        </div>
        <div class="w-1/2 p-6">
            <h2 class="text-2xl font-bold mb-4">{{ $movie->title }}</h2>
            <p class="text-gray-600 mb-4">Date de sortie: {{ \Carbon\Carbon::parse($movie->release_date)->format('d/m/Y') }}</p>
            <p class="text-gray-600">{{ $movie->overview }}</p>
        </div>
    </div>
</div>



</x-app-layout>   