<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class SiswaController extends Controller
{
    //
    public function index()
    {
        $data['judul'] = 'Siswa';
        $data['kelas'] = DB::table('kelas')->get();
        return view('admin.siswa-list',$data);
    }
    public function get_data(Request $request)
    {
            $data = DB::table('siswa as s')
            ->join('users as u','s.id_user','u.id')
            ->leftjoin('kelas as k','s.id_kelas','k.id')
            ->select(DB::raw('
                s.*,
                u.name nama,
                u.email email,
                k.nama nama_kelas
            '))
            ->orderBy('id','desc')
            ->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    //$actionBtn = '<a href="javascript:void(0)" data-toggle="modal" data-id="'.$row->id.'" class="edit btn btn-success btn-sm">Edit</a> <a href="javascript:void(0)" data-toggle="modal" data-id="'.$row->id.'" class="delete btn btn-danger btn-sm ">Delete</a>';
                    $actionBtn = '<button type="button" class="edit btn btn-success btn-sm" id="btn_edit" data-id="'.$row->id.'">Edit</button> <button type="button" class="delete btn btn-danger btn-sm" id="btn_hapus" data-id="'.$row->id.'">Hapus</button>'.
                        '<input type="hidden" id="id'.$row->id.'" value="'.$row->id.'">';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);

    }
    public function simpan(Request $request)
    {
        $id = $request->get('id');
        $id_user = $request->get('id_user');
        $users['no_induk'] = $request->get('no_induk');
        $users['name'] = $request->get('nama');
        $users['email'] = $request->get('email');
        $siswa['id_kelas'] = $request->get('kelas');


        DB::beginTransaction();
        try{
            if($id == ''){
                $data['created_at'] = Carbon::now();
                DB::table('pasien')->insert($data);
                //$arr = ['status' => '1'];
            }else{
                $users['updated_at'] = Carbon::now();
                $siswa['updated_at'] = Carbon::now();
                DB::table('siswa')->where('id',$id)->update($siswa);
                DB::table('users')->where('id',$id_user)->update($users);
                $arr = ['status' => '1'];
            }
            DB::commit();

		}catch (Exception $e){
			DB::rollback();
			$arr = ['status' => '0'];
		}
        //return redirect()->to('pendaftaranpasien');
        return response()->json($arr);
    }
    public function edit($id){
        $data = DB::table('siswa as s')
        ->join('users as u','s.id_user','u.id')
        ->leftjoin('kelas as k','s.id_kelas','k.id')
        ->select(DB::raw('
            s.*,
            u.no_induk no_induk,
            u.name nama,
            u.email email,
            s.id_kelas id_kelas,
            k.nama nama_kelas
        '))
        ->where('s.id','=',$id)->first();

        return response()->json($data);
    }
    public function hapus($id){
        $data = DB::table('pasien')->delete($id);
        DB::commit();
        return response()->json($data);

    }
}
