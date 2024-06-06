<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Vyrobce;
use App\Models\Zeme;
use Config;
use Illuminate\Support\Facades\DB;
use Session;
use Auth;

class VyrobceController extends Controller
{
    public function vyrobce(Request $request)
    {
        $pocetvyrobcu = Vyrobce::count('vyrobce_id');
        $paginate = Config::get('pagination.pagination');
        $data = Vyrobce::join('zeme', 'vyrobce_letadla.zeme_zeme_id', '=', 'zeme.zeme_id')
                      ->select('vyrobce_letadla.*', 'zeme.zeme_nazev as country_name')
                      ->orderBy('vyrobce_letadla.vyrobce_id')
                      ->paginate($paginate);

        return view('vyrobce', [
            'data' => $data, 
            'pocetvyrobcu' => $pocetvyrobcu

        ]);
    }
    
    public function delete($vyrobce_id)
    {
        try {
            $vyrobce = Vyrobce::find($vyrobce_id);
            $vyrobce->delete();   
            return back()->with('success', 'Smazání proběhlo úspěšně!');

        } catch (\Exception $e) {
            return back()->with('error', 'Smazání se nepovedlo: ' . $e->getMessage());
        }
    }
    public function edit($name, $id)
    {
        $vyrobce = Vyrobce::findOrFail($id);
        $data = Zeme::all();
        return view('edit', ['vyrobce' => $vyrobce, 'data' => $data]);
    }
    public function update(Request $request, $id)
    {
        try {
        $vyrobce = Vyrobce::findOrFail($id);
        $vyrobce->vyrobce_jmeno = $request->input('vyrobce_jmeno');
        $vyrobce->vyrobce_mesto = $request->input('vyrobce_mesto'); 
        $vyrobce->vyrobce_psc = $request->input('vyrobce_psc');
        $vyrobce->vyrobce_ulice = $request->input('vyrobce_ulice');
        $vyrobce->zeme_zeme_id = $request->input('zeme');
        $zeme = Zeme::find($request->input('zeme'))->zeme_nazev;
        $vyrobce->save();
        $request->session()->flash('success', "Výrobce byl upraven na {$vyrobce->vyrobce_jmeno}, ze země {$zeme}!");
        return redirect ('/'); 
        }
        catch (\Exception $e)  {
            $vyrobce = Vyrobce::findOrFail($id);
            $request->session()->flash('error', "Nastala chyba při editaci výrobce {$vyrobce->vyrobce_jmeno}! {$e->getMessage()}");
            return redirect ('/'); 
        }
    
    }
    public function create()
    {
        $data = Zeme::all();
        return view('create', ['data' => $data]);
    }
    public function store(Request $request)
    {
        try {
            $vyrobce = new Vyrobce;
            $vyrobce->vyrobce_jmeno = $request->input('vyrobce_jmeno');
            $vyrobce->vyrobce_mesto = $request->input('vyrobce_mesto');
            $vyrobce->zeme_zeme_id = $request->input('zeme');
            $vyrobce->vyrobce_psc = $request->input('vyrobce_psc');
            $vyrobce->vyrobce_ulice = $request->input('vyrobce_ulice');
            $request->validate([
                'zeme' => 'required|not_in:0',
            ]);
            $vyrobce->save();
            $zeme = Zeme::find($request->input('zeme'))->zeme_nazev;
            $request->session()->flash('success', "Výrobce {$vyrobce->vyrobce_jmeno} ze země {$zeme} byl přidán!");

            return redirect ('/'); 
        } catch (\Exception $e) {

            $request->session()->flash('error', "Nastala chyba při přidávání výrobce! {$e->getMessage()}");
    
            return redirect ('/');
        }
    }
}
