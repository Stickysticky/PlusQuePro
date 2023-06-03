<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Films populaires
        </h2>
    </x-slot>

    <div id="movies" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <div class="mb-6 mt-6 ml-6 mr-6">
            <h2 class="text-2xl font-bold mb-4">Tendances du jour</h2>
            @foreach ($dayMovies as $movie)
                <a href="{{ route('movie', ['movie' => $movie->id]) }}">
                    <div class="bg-white shadow-lg rounded-lg">
                        <h2 class="text-xl font-bold mt-4 ml-4 mr-4">{{ $movie->title }}</h2>
                        <p class="text-gray-600  mb-4 ml-4 mr-4">Date de sortie: {{ \Carbon\Carbon::parse($movie->release_date)->format('d/m/Y') }}</p>
                        <div class="flex justify-center">
                            <img src="{{ $movie->getPosterUrlAttribute() }}" alt="{{ $movie->title }}" class="h-30 object-cover mt-4 mb-4">
                        </div>
                    </div>
                </a>
            @endforeach
        </div>

        <div class="mb-6 mt-6 ml-6 mr-6">
            <h2 class="text-2xl font-bold mb-4">Tendances de la semaine</h2>
            @foreach ($weekMovies as $movie)
                <a href="{{ route('movie', ['movie' => $movie->id]) }}">
                    <div class="bg-white shadow-lg rounded-lg">
                        <h2 class="text-xl font-bold mt-4 ml-4 mr-4">{{ $movie->title }}</h2>
                        <p class="text-gray-600  mb-4 ml-4 mr-4">Date de sortie: {{ \Carbon\Carbon::parse($movie->release_date)->format('d/m/Y') }}</p>
                        <div class="flex justify-center">
                            <img src="{{ $movie->getPosterUrlAttribute() }}" alt="{{ $movie->title }}" class="h-30 object-cover mt-4 mb-4">
                        </div>
                    </div>
                </a>
            @endforeach
        </div>
    </div>
    
</x-app-layout>
