@extends('layouts.app2')
@section('content')

<br>
<div class="container mx-auto px-4">
    <h1 class="text-3xl py-4 border-b mb-10">Přidání výrobce</h1>

    <form method="POST" action="/vyrobce" class="bg-white shadow-md rounded-lg px-8 pt-6 pb-8 mb-4">
        @csrf

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="vyrobce_jmeno">
                Název:
            </label>
            <input class="input input-bordered w-full" id="vyrobce_jmeno" name="vyrobce_jmeno" type="text">
        </div>

        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="vyrobce_mesto">
                Město:
            </label>
            <input class="input input-bordered w-full" id="vyrobce_mesto" name="vyrobce_mesto" type="text" required>
        </div>
        
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="vyrobce_psc">
                PSČ:
            </label>
            <input class="input input-bordered w-full" id="vyrobce_psc" name="vyrobce_psc" type="number" required>
        </div>
        
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="vyrobce_ulice">
                Ulice:
            </label>
            <input class="input input-bordered w-full" id="vyrobce_ulice" name="vyrobce_ulice" type="text" required>
        </div>
        
        <div class="mb-4">
            <label class="block text-gray-700 text-sm font-bold mb-2" for="zeme">
                Země:
            </label>
            <select class="select select-bordered w-full" id="zeme" name="zeme" required>
                <option selected disabled value="0" class="info-content">Vyberte zemi</option>
                @foreach ($data as $zeme)
                    <option value="{{ $zeme->zeme_id }}">{{ $zeme->zeme_nazev }}</option>
                @endforeach
            </select>
        </div>

        <div class="flex items-center justify-between">
            <button class="btn btn-primary" type="submit">
                Potvrdit
            </button>
        </div>
    </form>
</div>
@endsection
