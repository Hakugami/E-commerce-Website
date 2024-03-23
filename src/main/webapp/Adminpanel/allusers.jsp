<%@page session="false" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <title>View All Users</title>
  <link href="assets/images/logos/favicon.png" rel="shortcut icon" type="image/png" />
  <link href="assets/css/styles.min.css" rel="stylesheet" />
</head>

<body>
  <!--  Body Wrapper -->
  <div class="page-wrapper" data-header-position="fixed" data-layout="vertical" data-navbarbg="skin6" data-sidebar-position="fixed"
    data-sidebartype="full" id="main-wrapper">
    <aside class="left-sidebar">
      <!-- Sidebar scroll-->
      <div>
        <div class="brand-logo d-flex align-items-center justify-content-between">
          <a class="text-nowrap logo-img" href="/molla/view/admin/home">
            <img alt="" src="assets/images/logos/mollalogotransparent.png" width="180" />
          </a>
          <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
            <i class="ti ti-x fs-8"></i>
          </div>
        </div>
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
          <ul id="sidebarnav">
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">Home</span>
            </li>
            <li class="sidebar-item">
              <a aria-expanded="false" class="sidebar-link" href="/molla/view/admin/home">
                <span>
                  <i class="ti ti-layout-dashboard"></i>
                </span>
                <span class="hide-menu">Dashboard</span>
              </a>
            </li>
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">Users</span>
            </li>
            <li class="sidebar-item">
              <a aria-expanded="false" class="sidebar-link" href="/molla/view/admin/allusers">
                <span>
                  <i class="ti ti-user"></i>
                </span>
                <span class="hide-menu">View All Users</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a aria-expanded="false" class="sidebar-link" href="/molla/view/admin/adduser">
                <span>
                  <i class="ti ti-user-plus"></i>
                </span>
                <span class="hide-menu">Add new</span>
              </a>
            </li>
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">Products</span>
            </li>
            <li class="sidebar-item">
              <a aria-expanded="false" class="sidebar-link" href="/molla/view/admin/allproducts">
                <span>
                  <i class="ti ti-package"></i>
                </span>
                <span class="hide-menu">View All</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a aria-expanded="false" class="sidebar-link" href="/molla/view/admin/addproduct">
                <span>
                  <i class="ti ti-plus"></i>
                </span>
                <span class="hide-menu">Add Product</span>
              </a>
            </li>
          </ul>
        </nav>
        <!-- End Sidebar navigation -->
      </div>
      <!-- End Sidebar scroll-->
    </aside>
    <!--  Sidebar End -->
    <!--  Main wrapper -->
    <div class="body-wrapper">
      <!--  Header Start -->
      <header class="app-header">
        <nav class="navbar navbar-expand-lg navbar-light">
          <ul class="navbar-nav">
            <li class="nav-item d-block d-xl-none">
              <a class="nav-link sidebartoggler nav-icon-hover" href="javascript:void(0)" id="headerCollapse">
                <i class="ti ti-menu-2"></i>
              </a>
            </li>

          </ul>
          <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
            <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
              <span>Welcome Hamada </span>
              <li class="nav-item dropdown">
                <a aria-expanded="false" class="nav-link nav-icon-hover" data-bs-toggle="dropdown" href="javascript:void(0)"
                  id="drop2">
                  <img alt="" class="rounded-circle" height="35" src="assets/images/profile/user-1.jpg" width="35">
                </a>
                <div aria-labelledby="drop2" class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up">
                  <div class="message-body">
                    <a class="d-flex align-items-center gap-2 dropdown-item" href="javascript:void(0)">
                      <i class="ti ti-user fs-6"></i>
                      <p class="mb-0 fs-3">My Profile</p>
                    </a>
                    <a class="d-flex align-items-center gap-2 dropdown-item" href="javascript:void(0)">
                      <i class="ti ti-mail fs-6"></i>
                      <p class="mb-0 fs-3">My Account</p>
                    </a>
                    <a class="d-flex align-items-center gap-2 dropdown-item" href="javascript:void(0)">
                      <i class="ti ti-list-check fs-6"></i>
                      <p class="mb-0 fs-3">My Task</p>
                    </a>
                    <a class="btn btn-outline-primary mx-3 mt-2 d-block" href="./authentication-login.html">Logout</a>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!--  Header End -->
      <div class="container-fluid">
        <div class="col-lg-8 d-flex align-items-stretch">
          <div>
              <h5 class="card-title fw-semibold mb-4">All Users</h5>
              <div class="table-responsive">
                <table class="table text-nowrap  align-middle" id="usersTable">
                  <thead class="text-dark fs-4">
                      <tr>
                        <th class="border-bottom-0">
                          <h6 class="fw-semibold mb-0">Id</h6>
                        </th>
                        <th class="border-bottom-0">
                          <h6 class="fw-semibold mb-0">FullName</h6>
                        </th>
                        <th class="border-bottom-0">
                          <h6 class="fw-semibold mb-0">BirthDay</h6>
                        </th>
                        <th class="border-bottom-0">
                          <h6 class="fw-semibold mb-0">Gender</h6>
                        </th>
                        <th class="border-bottom-0">
                          <h6 class="fw-semibold mb-0">Email</h6>
                        </th>
                        <th class="border-bottom-0">
                          <h6 class="fw-semibold mb-0">Job</h6>
                        </th>
                        <th class="border-bottom-0">
                          <h6 class="fw-semibold mb-0">Interests</h6>
                        </th>
                        <th class="border-bottom-0">
                          <h6 class="fw-semibold mb-0">CreditLimit</h6>
                        </th>
                        <th class="border-bottom-0">
                          <h6 class="fw-semibold mb-0"></h6>
                        </th>
                      </tr>
                  </thead>
                  <tbody>

  <c:forEach items="${users}" var="user">

                      <tr>
                        <td ><h6 class="fw-semibold mb-0">${user.id}</h6></td>

                        <td >
                          <h6 class="fw-semibold mb-1">${user.name}</h6>
                        </td>

                        <td >
                          <h6 class="fw-semibold mb-1">${user.birthday}</h6>
                        </td>

                        <td >
                            <div class="d-flex align-items-center gap-2">
        <c:choose>
            <c:when test="${user.gender == 'Male'}">
                                <span class="badge bg-primary rounded-3 fw-semibold">Male</span>
            </c:when>
            <c:otherwise>
                                <span class="badge bg-danger rounded-3 fw-semibold">Female</span>
            </c:otherwise>
        </c:choose>
                            </div>
                        </td>

                        <td >
                          <h6 class="fw-semibold mb-1">${user.email}</h6>
                        </td>

                        <td >
                          <h6 class="fw-semibold mb-1">${user.job}</h6>
                        </td>

                        <td >
                          <h6 class="fw-semibold mb-1">${user.interest}</h6>
                        </td>

                        <td >
                          <h6 class="fw-semibold mb-1">${user.creditLimit}</h6>
                        </td>
                        <td>
                          <a href="viewuser?id=${user.id}">
                                <button type="button" class="btn btn-outline-secondary m-1">View</button></a>
                        </td>

                      </tr>

  </c:forEach>

                  </tbody>
                </table>

                <div class="text-center">
                    <button id="show-more-btn" type="button" class="btn btn-outline-secondary m-1">Show More</button>
                </div>

              </div>
          </div>
        </div>
      </div>
      </div>

  </div>
  <script src="assets/libs/jquery/dist/jquery.min.js"></script>
  <script src="assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/sidebarmenu.js"></script>
  <script src="assets/js/allusers.js"></script>
  <script src="assets/js/app.min.js"></script>
  <script src="assets/libs/simplebar/dist/simplebar.js"></script>
</body>

</html>