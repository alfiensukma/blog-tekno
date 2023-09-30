<div class="nav-top pt-2">
  <div class="row container-nav-top">
    <div class="col-4"></div>
    <div class="col-4 text-center"><span class="fs-20 nav-text-bold">Tekno</span></div>
    <div class="col-4 text-end">
      @if(request()->route()->getName() === 'landing')
      <a class="btn btn-outline-primary" href="/login">
        <span class="nav-text-bold">Sign In</span>
      </a>
      @elseif(request()->is('dashboard'))
      <div class="align-items-center d-flex justify-content-md-end">
        <u>Hello, {{ Auth::user()->name }}</u>
        <form method="POST" action="/logout" style="margin-left: 20px;">
          @csrf
          <button type="submit" class="btn btn-outline-primary"><span class="nav-text-bold">Logout</span></button>
        </form>
      </div>
      @endif
    </div>
  </div>
</div>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg bg-body-tertiary mx-4">
  <div class="container-fluid">
    <a class="text-dark" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample"><i class="fa-solid fa-bars"></i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      @if(request()->route()->getName() === 'landing')
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown nav-text-bold">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Category#1
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown nav-text-bold">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Category#2
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown nav-text-bold">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Category#3
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      </ul>
      @elseif(request()->is('dashboard') || request()->is('manage-post') )
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li li class="nav-item nav-text-bold">
          <a class="nav-link active" aria-current="page" href="/dashboard">Dashboard</a>
        </li>
        <li class="nav-item nav-text-bold">
          <a class="nav-link active" aria-current="page" href="/manage-post">Manage Post</a>
        </li>
        <li class="nav-item nav-text-bold">
          <a class="nav-link active" aria-current="page" href="#">Profile</a>
        </li>
      </ul>
      @endif
      @if(request()->route()->getName() === 'landing')
      <form role="search" class="pt-3">
        <div class="input-group mb-3 px-3">
          <input type="text" class="form-control form-control-search" placeholder="What are you looking for" aria-label="Recipient's username" aria-describedby="button-addon2" required>
          <button class="btn btn-secondary btn-search" type="submit" id="button-addon2">
            <i class="fa-solid fa-magnifying-glass"></i>
          </button>
        </div>
      </form>
      @endif
      <div class="nav-item">
        <button class="btn btn-outline-secondary btn-outline-secondary-custom"><i class="fa-solid fa-circle-half-stroke"></i></button>
      </div>
    </div>
  </div>
</nav>

<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasExampleLabel">Offcanvas</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <div>
      Some text as placeholder. In real life you can have the elements you have chosen. Like, text, images, lists,
      etc.
    </div>
    <div class="dropdown mt-3">
      <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown">
        Dropdown button
      </button>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Action</a></li>
        <li><a class="dropdown-item" href="#">Another action</a></li>
        <li><a class="dropdown-item" href="#">Something else here</a></li>
      </ul>
    </div>
  </div>
</div>