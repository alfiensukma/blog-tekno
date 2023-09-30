<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\Blog;

class LandingController extends Controller
{
    public function index(){
        $twoWeeksAgo = Carbon::now()->subWeeks(2);

        $dataHighlight = Blog::where('updated_at', '>=', $twoWeeksAgo)
            ->latest('updated_at')->take(3)->get();

        $datajustAdded = Blog::where('updated_at', '>=', $twoWeeksAgo)
            ->latest('updated_at')->take(3)->get();

        $dataAllPost = Blog::orderBy('updated_at', 'desc')->get();

        return view('blog.landing', [
            'dataHighlight' => $dataHighlight,
            'datajustAdded' => $datajustAdded,
            'dataAllPost'   => $dataAllPost,
        ]);
    }

    public function postDetail($id){
        $twoWeeksAgo = Carbon::now()->subWeeks(2);

        $data = Blog::where('id', $id)->first();
        $datajustAdded = Blog::where('updated_at', '>=', $twoWeeksAgo)
            ->latest('updated_at')->take(3)->get();

        return view('blog.detail', [
            'data' => $data,
            'datajustAdded' => $datajustAdded,
        ]);
    }
}
