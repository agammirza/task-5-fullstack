   @extends('layouts.main')
   
   <section class="bg-dark text-white p-5 p-lg-0 pt-lg-5 text-center text-sm-start mt-5">
      <div class="container">
        <div class="d-sm-flex align-items-center justify-content-between">
          <div>
            <h1 class="p-3 mb-3 mt-3">Welcome AMZ Blog</h1>
            <p class="lead my-4">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur, perferendis. Quod, deleniti! Nihil rem inventore deserunt, nulla accusantium distinctio suscipit. Labore quas voluptates nobis molestias quasi deserunt
              maxime saepe tempora.
            </p>
            <button class="btn btn-success">Hubungi Kami</button>
          </div>
          <img src="/img/showcase.png" class="img-fluid w-50 d-none d-sm-block" />
        </div>
      </div>
    </section>

    <section>
      <div class="row align-items-center justify-content-between bg-primary text-light">
        <div class="col-md-5">
          <img src="/img/slide1.png" alt="materi" class="img-fluid" />
        </div>
        <div class="col-md p-5">
          <h2>Mulai Belajar Programming</h2>
          <p class="lead">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Recusandae, ducimus suscipit minima accusantium sunt ipsa sequi nam praesentium illo.</p>
          <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolores in veritatis enim temporibus pariatur, nemo inventore architecto illo. modi repellendus possimus facere, cupiditate laboriosam saepe cum? Minima debitis</p>
          <a href="#" class="btn btn-success mt-3">Selanjutnya</a>
        </div>
      </div>
    </section>
  
    <section class="bg-dark text-light p-5">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <h3 class="mb-3">Berlangganan Berita</h3>
          </div>
          <div class="col-md-8">
            <div class="input-group news-input">
              <input type="text" class="form-control" placeholder="Masukan Email Anda" />
              <button class="btn btn-primary">Kirim</button>
            </div>
          </div>
        </div>
      </div>
    </section> 

    @section('container')
   
   
   @endsection
