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

   <div class="mt-3">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63574.48459137748!2d96.657142268714!3d5.198816513953561!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30474322df3bdf49%3A0xacf272f37d5cbba3!2sBireu%C3%ABn%2C%20Kuala%2C%20Bireuen%20Regency%2C%20Aceh!5e0!3m2!1sen!2sid!4v1667146419313!5m2!1sen!2sid" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
   </div>
  
@endsection

