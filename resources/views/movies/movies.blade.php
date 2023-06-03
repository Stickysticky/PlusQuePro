<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Films populaires
        </h2>
    </x-slot>

    <div id="movies" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <div class="mb-6 mt-6 ml-6 md-6">
            <h2 class="text-2xl font-bold mb-4">Tendances du jour</h2>
            @foreach ($dayMovies as $movie)
                <div class="bg-white shadow-lg rounded-lg">
                    <h2 class="text-xl font-bold mt-4 ml-4 md-4">{{ $movie->title }}</h2>
                    <p class="text-gray-600  mb-4 ml-4 md-4">Date de sortie: {{ \Carbon\Carbon::parse($movie->release_date)->format('d/m/Y') }}</p>
                    <img src="{{ $movie->getPosterUrlAttribute() }}" alt="{{ $movie->title }}" class="w-full h-64 object-cover mt-4">
                    <p class="text-gray-600  mb-4 mt-4 ml-4 md-4">{{ $movie->overview }}</p>
                </div>
            @endforeach
        </div>

        <div class="mb-6 mt-6 ml-6 md-6">
            <h2 class="text-2xl font-bold mb-4">Tendances de la semaine</h2>
            @foreach ($weekMovies as $movie)
                <div class="bg-white shadow-lg rounded-lg">
                    <h2 class="text-xl font-bold mt-4 ml-4 md-4">{{ $movie->title }}</h2>
                    <p class="text-gray-600  mb-4 ml-4 md-4">Date de sortie: {{ \Carbon\Carbon::parse($movie->release_date)->format('d/m/Y') }}</p>
                    <img src="{{ $movie->getPosterUrlAttribute() }}" alt="{{ $movie->title }}" class="w-full h-64 object-cover mt-4">
                    <p class="text-gray-600  mb-4 mt-4 ml-4 md-4">{{ $movie->overview }}</p>
                </div>
            @endforeach
        </div>
    </div>
    
</x-app-layout>
