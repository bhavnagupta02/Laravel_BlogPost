<x-layout>
    <div class="container py-md-5 container--narrow">
        <div class="d-flex justify-content-between">
          <h2>{{$postData->post_title}}</h2>
          @can('update', $postData)
          <span class="pt-2">
            <a href="#" class="text-primary mr-2" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fas fa-edit"></i></a>
            <form class="delete-post-form d-inline" action="/post/{{$postData->id}}" method="POST">
              @csrf
              @method('DELETE')
              <button class="delete-post-button text-danger" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fas fa-trash"></i></button>
            </form>
          </span>
          @endcan
        </div>
  
        <p class="text-muted small mb-4">
          <a href="#"><img class="avatar-tiny" src="https://gravatar.com/avatar/f64fc44c03a8a7eb1d52502950879659?s=128" /></a>
          Posted by <a href="#">{{ucfirst($postData->getUserDetail->username)}}</a> on {{$postData->created_at->format('dS M Y h:i:s a')}}
        </p>
  
        <div class="body-content">
          {{-- {!! $postData->post_content !!} --}} {{-- It will support in laravel v10.x --}}
          {!! html_entity_decode($postData->post_content) !!}
        </div>
      </div>
</x-layout>

{{-- @include('header'); --}}
    {{-- HTML container content here --}}
{{-- @include('footer'); --}}