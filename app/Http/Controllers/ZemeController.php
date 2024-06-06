<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Zeme;
use Config;
use Illuminate\Support\Facades\DB;

class ZemeController extends Controller
{
    public function zeme() {
    
        $data = Zeme::all();
        $paginate = Config::get('pagination.pagination');
        $data = Zeme::paginate($paginate);
        return view('zeme', ['data' => $data]);
    }
    public function delete($id)
    {
        $zeme = Zeme::find($id);
        $zeme->delete();
        return redirect('/zeme')->with('success', 'Země úspěšně smazána!');
    }
    public function create()
    {
        $zeme = Zeme::all();
        return view('zeme-create', ['zeme' => $zeme]);
    }
    public function save(Request $request)
    {
        $request->validate([
            'zeme_nazev' => 'required',
            'image' => 'required|image|mimes:jpeg,png|max:2048',
        ]);
    
        try {
            $imageName = time().'.'.$request->image->extension(); 
            $request->image->move(public_path('obrazky'), $imageName);  
    
            $zeme = new Zeme;
            $zeme->zeme_nazev = $request->input('zeme_nazev');
            $zeme->image = $imageName; 
            $zeme->save();
    
            return redirect('/zeme')
                ->with('success', "Země '{$zeme->zeme_nazev}' s obrázkem '/public/obrazky/{$zeme->image}' byla vytvořena")
                ->with('image', $imageName);
        } catch (\Exception $e) {
            return redirect('/zeme')
                ->with('error', "Nastala chyba při vytváření země: {$e->getMessage()}");
        }
    }
    
}