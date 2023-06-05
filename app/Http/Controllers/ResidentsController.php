<?php

namespace App\Http\Controllers;
use App\Models\Residents;
use Illuminate\Http\Request;

class ResidentsController extends Controller
{
    public function index()
    {
        return Residents::all();
    }
    public function addResident(Request $request)
    {
        $resident = new Residents;
        $resident->fio=$request->fio;
        $resident->area=$request->area;
        $resident->start_date=$request->start_date;
        $result = $resident->save();
        if ($result){return $resident;}
        else{
            return 'error';
        }
    }
}
