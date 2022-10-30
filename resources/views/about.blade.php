@extends('layouts.main')
<section class="p-5 bg-dark text-light">
   <h1 class="text-center mt-5">About</h1>
</section>
@section('container')
  
   <div class="row align-items-center justify-content-center">
      <div class="col-md-5">
         <h3>{{ $name }}</h3>
      {{-- <p>{{ $email }}</p> --}}
      
      <img src="img/{{ $image }}" alt="{{ $name }}" width="200" class="img-thumbnail rounded-circle">
      </div>
     <div class="col-md-5">
      <p>
         Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat, optio exercitationem voluptates delectus temporibus neque impedit fuga esse, iusto ad odit dolores voluptate quam ipsa culpa velit molestias consequuntur animi a! Veniam, excepturi officiis. Odio dolores in ea vitae neque laudantium incidunt saepe autem repudiandae sit, eaque odit dolore? Itaque voluptate veritatis, dolorem, exercitationem molestias quisquam dolore hic quia, ad rem quaerat fugiat ullam! Porro maxime iusto voluptatem enim labore, nihil amet quidem omnis natus vitae nemo! Rem, repudiandae fugiat? Soluta, quo. Itaque, nam possimus, assumenda voluptatibus blanditiis labore animi dolor repellendus iusto temporibus provident similique quasi corporis dolores error.
      </p>
     </div>
      
   </div>
  
@endsection

