@extends('layouts.app2')

@section('content')
    <div class="container mx-auto px-4">
        <h1 class="text-3xl py-4 border-b mb-10">Přidání země</h1>

        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        @if (session('error'))
            <div class="alert alert-danger">
                {{ session('error') }}
            </div>
        @endif

        <br>
        <br>

        <form method="POST" action="/zeme/add" class="bg-white shadow-md rounded-lg px-8 pt-6 pb-8 mb-4" enctype="multipart/form-data">
            @csrf

            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="zeme_nazev">
                    Název země:
                </label>
                <input class="input input-bordered w-full" id="zeme_nazev" name="zeme_nazev" type="text" required>
            </div>

            <div class="mb-4">
                <label class="block text-gray-700 text-sm font-bold mb-2" for="image">
                    Obrázek vlajky:
                </label>
                <input class="input input-bordered w-full" id="image" name="image" type="file" required accept="image/png, image/jpeg">
            </div>

            <div class="flex items-center justify-between">
                <button class="btn btn-primary" type="submit">
                    Potvrdit
                </button>
            </div>
        </form>
    </div>
@endsection
