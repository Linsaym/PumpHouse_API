<?php

namespace App\Http\Controllers;
use App\Models\Residents;
use Illuminate\Http\Request;

class ResidentsController extends Controller
{
    public function index()
    {
        $query = Residents::all();
        if ($query->count()>1){
            return $query;
        }else{
            $resident = new Residents;
            $resident->fio='Добавьте нового пользователя';
            $resident->area=0;
            $resident->start_date='2000-01-01';
            $result = $resident->save();
            if ($result){return $resident;}
            else{
                return 'error';
            }
            $resident = new Residents;
            $resident->fio='Иванов Иван Иванович';
            $resident->area=0;
            $resident->start_date='2000-01-01';
            $result = $resident->save();
            if ($result){return $resident;}
            else{
                return 'error';
            }
            return Residents::all();
        }
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
    public function deleteResident($id)
    {
        $resident = Residents::find($id);

        if ($resident) {
            $resident->delete();

            return response()->json(['message' => 'Resident deleted successfully.']);
        } else {
            return response()->json(['message' => 'Resident not found.'], 404);
        }
    }
    public function updateResident(Request $request, $id)
    {
        $resident = Residents::find($id);

        if ($resident) {
            $resident->update($request->all());
            return response()->json(['message' => 'Resident updated successfully.']);
        } else {
            return response()->json(['message' => 'Resident not found.'], 404);
        }
    }
}
