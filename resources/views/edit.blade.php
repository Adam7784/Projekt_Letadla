@extends('layouts.app2')
@section('content')

<div class="container mx-auto px-4">
    <h1 class="text-3xl py-4 border-b mb-10">Editace výrobce {{ $vyrobce->vyrobce_jmeno }}</h1>
    <form method="POST" action="/vyrobce/{{ $vyrobce->vyrobce_id }}" class="bg-white shadow-md rounded-lg px-8 pt-6 pb-8 mb-4">
        @csrf
        @method('PUT')

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="vyrobce_jmeno">
                Název:
            </label>
            <input class="input input-bordered w-full" id="vyrobce_jmeno" name="vyrobce_jmeno" type="text" value="{{ $vyrobce->vyrobce_jmeno }}">
        </div>

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="vyrobce_mesto">
                Město:
            </label>
            <input class="input input-bordered w-full" id="vyrobce_mesto" name="vyrobce_mesto" type="text" value="{{ $vyrobce->vyrobce_mesto }}" required>
        </div>
        
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="vyrobce_psc">
                PSČ:
            </label>
            <input class="input input-bordered w-full" id="vyrobce_psc" name="vyrobce_psc" type="number" value="{{ $vyrobce->vyrobce_psc }}" required>
        </div>
        
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="vyrobce_ulice">
                Ulice:
            </label>
            <input class="input input-bordered w-full" id="vyrobce_ulice" name="vyrobce_ulice" type="text" value="{{ $vyrobce->vyrobce_ulice }}" required>
        </div>
        
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="zeme">
                Země:
            </label>
            <select class="select select-bordered w-full" id="zeme" name="zeme" required>
                <option selected disabled class="info-content">Vyberte zemi</option>
                @foreach ($data as $zeme)
                    <option value="{{ $zeme->zeme_id }}" {{ $vyrobce->zeme_zeme_id == $zeme->zeme_id ? 'selected' : '' }}>{{ $zeme->zeme_nazev }}</option>
                @endforeach
            </select>
        </div>

        <div class="flex items-center justify-between">
            <button class="btn btn-primary" type="submit">
                Uložit
            </button>
        </div>
    </form>
</div>
@endsection
