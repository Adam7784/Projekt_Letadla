@extends('layouts.app2')
@section('content')

<br>
@if (session('success'))
    <br>
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
    <br>
@endif

@if (session('error'))
    <br>
    <div class="alert alert-danger">
        {{ session('error') }}
    </div>
    <br>
@endif

<br>
<title>Výrobci</title>
<br>
<h1 class="text-3xl font-bold mb-4">Počet řádků v tabulce je {{ $pocetvyrobcu }}</h1>
<div class="overflow-x-auto">
    <table class="table w-full">
        <thead class="bg-blue-500 text-white">
            <tr>
                <th class="px-4 py-2">Název</th>
                <th class="px-4 py-2">Město</th>
                <th class="px-4 py-2">PSČ</th>
                <th class="px-4 py-2">Ulice</th>
                <th class="px-4 py-2">Země</th>
                <th class="px-4 py-2">Akce</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $item)
                <tr class="bg-white border-b">
                    <td class="px-4 py-2">{{ $item->vyrobce_jmeno }}</td>
                    <td class="px-4 py-2">{{ $item->vyrobce_mesto }}</td>
                    <td class="px-4 py-2">{{ $item->vyrobce_psc }}</td>
                    <td class="px-4 py-2">{{ $item->vyrobce_ulice }}</td>
                    <td class="px-4 py-2">{{ $item->country_name }}</td>
                    <td class="px-4 py-2 flex space-x-2">
                        <button class="btn btn-error" data-id="{{ $item->vyrobce_id }}" onclick="setFormAction('{{ $item->vyrobce_id }}')">Smazat</button>
                        <a href="/{{ $item->vyrobce_jmeno }}/{{ $item->vyrobce_id }}/edit" class="btn btn-warning">Editovat</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

<div id="myModal" class="fixed z-10 inset-0 overflow-y-auto hidden" aria-labelledby="modal-title" role="dialog" aria-modal="true">
    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>
        <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">​</span>
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <div class="sm:flex sm:items-start">
                    <div class="mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left">
                        <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">Tuto akci nebude možné vrátit!</h3>
                    </div>
                </div>
            </div>
            <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                <form id="deleteForm" method="POST">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-error" type="submit" id="deleteButton1">Smazat</button>
                </form>
                <button type="button" class="btn btn-primary" id="cancelButton">Zrušit</button>
            </div>
        </div>
    </div>
</div>
@endsection

<script>
    function setFormAction(id) {
        const form = document.getElementById('deleteForm');
        form.action = `/vyrobce/${id}`;
        document.getElementById('myModal').classList.remove('hidden');
    }

    document.getElementById('cancelButton').addEventListener('click', () => {
        document.getElementById('myModal').classList.add('hidden');
    });
</script>
