<?php
 // Added by BGU
namespace App\Http\Controllers;

use App\Post;
// use Illuminate\Support\Str; //markdown is supported only in laravel v10.x
use Illuminate\Http\Request;

class PostController extends Controller
{
    //
    public function showCreatePost() {
        // if (auth()->check()) { // This is not require as we acheive this same with middleware('auth') by routes url in web.php file
        //     return view('create-post');
        // } else {
        //     return redirect('/')->with('failure', 'You must be logged in!!');
        // }
        return view('create-post');
    }

    public function saveNewPost(Request $request) {
        // return 'Hey save your post...';
        $postFields = $request->validate([
            'title' => 'required',
            'body' => 'required'
        ]);
        $postFields['post_title'] = strip_tags($postFields['title']);
        $postFields['post_content'] = strip_tags($postFields['body'], '<p><b><i><ul><li><ol><strong><h1><h2><h3><h4><h5><h6><a><br>'); //Allow specific HTML tags in blog content as Markdown not support in laravel < 10.x version
        $postFields['user_id'] = auth()->id(); //Get current login user id by id() fun
        $blogPost = Post::create($postFields);
        return redirect("post/{$blogPost->id}")->with('success', 'Your new blog post has been created successfully.');
    }

    public function viewSinglePost(Post $postId) {
        //$postId['post_content'] = strip_tags(Str::markdown($postId->post_content)); // Commenting this line as Markdown not support in laravel < 10.x version
        return view('single-post', ['postData' => $postId]);
    }

    //1. Delete by Controller way method
    public function deletePost(Post $postId) {
        if (auth()->user()->cannot('delete', $postId)) {
            return 'You cannot delete this';
        }
        $postId->delete();
        return redirect('profile/' . auth()->user()->username)->with('success', 'Post deleted successfully.');
    }
}
