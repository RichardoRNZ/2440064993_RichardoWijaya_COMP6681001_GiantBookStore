<nav class="navbar navbar-expand-lg navbar-light bg-warning fixed-top">
    <!-- Container wrapper -->
    <div class="container-fluid">
      <!-- Toggle button -->
      <button
        class="navbar-toggler"
        type="button"
        data-mdb-toggle="collapse"
        data-mdb-target="#navbarRightAlignExample"
        aria-controls="navbarRightAlignExample"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <i class="fas fa-bars"></i>
      </button>

      <!-- Collapsible wrapper -->

      <div class="collapse navbar-collapse mb-2" id="navbarRightAlignExample">
        <a class="navbar-brand text-white"  href="">Giant Book Supplier</a>
        <!-- Left links -->
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active text-white" aria-current="page" href="{{Route('home')}}">Home</a>
          </li>
          <!-- Navbar dropdown -->
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle text-white"
              href="#"
              id="navbarDropdown"
              role="button"
              data-mdb-toggle="dropdown"
              aria-expanded="false">
              Category
            </a>
            <!-- Dropdown menu -->
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li>
                <a class="dropdown-item" href="{{Route('book-category',['id' =>1])}}">Horror</a>
              </li>
              <li>
                <a class="dropdown-item" href="{{Route('book-category',['id' =>2])}}">Action</a>
              </li>
              <li><hr class="dropdown-divider" /></li>
              <li>
                <a class="dropdown-item" href="{{Route('book-category',['id' =>3])}}">Romance</a>
              </li>
              <li>
                <a class="dropdown-item" href="{{Route('book-category',['id' =>4])}}">Fantasy</a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="{{Route('publisher')}}">Publisher</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="{{Route('contact')}}">Contact</a>
          </li>
          </li>
        </ul>
        <!-- Left links -->
      </div>
      <!-- Collapsible wrapper -->
    </div>
    <!-- Container wrapper -->
  </nav>

