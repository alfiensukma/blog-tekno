<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;
use Illuminate\Support\Facades\File; 

class BlogController extends Controller
{   
    public function index(){
        $countPost = Blog::count();
        $countReadership = 17;
        $countArchive = 3;
        return view('blog.dashboard',[
            'countPost' => $countPost,
            'countReadership'=> $countReadership,
            'countArchive' => $countArchive
        ]);
    }

    public function show(){
        $posts = Blog::get();
        return view('blog.managePost', ['posts'=>$posts]);
    }

    public function store(Request $request){
        if ($request->hasfile('post_image')) {
            $image = $request->file('post_image');
            $imageName = time() . "_" . $image->getClientOriginalName();
            $path = public_path('assets/image');
            File::makeDirectory($path, 0777, true, true);
            $imgLoc = 'assets/image';
            $image->move($imgLoc, $imageName);
        } else {
            $imageName = 'default.png';
        }

        Blog::create([
            'user_id' => '1',
            'post_title' => $request->post_title,
            'post_content' => $request->post_content,
            'post_image' => $imageName,
        ]);

        return redirect()->back()->with('success', 'Blog successfully created.');
    }

    public function update(Request $request, $id){
        $ids = Blog::where('id', $id)->first();
        if ($request->hasfile('post_image')) {
            $image = $request->file('post_image');
            $imageName = time() . "_" . $image->getClientOriginalName();
            $path = public_path('assets/image');
            File::makeDirectory($path, 0777, true, true);
            $imgLoc = 'assets/image';
            $image->move($imgLoc, $imageName);
        } else {
            $imageName = $ids->post_image;
        }

        Blog::where('id', $id)->update([
            'user_id' => '1',
            'post_title' => $request->post_title,
            'post_content' => $request->post_content,
            'post_image' => $imageName,
        ]);

        return redirect()->back()->with('success', 'Blog changed successfully.');
    }

    public function destroy($id){
        Blog::where('id', $id)->delete();
        return redirect()->back()->with('success', 'Blog successfully deleted.');
    }
}
