<!DOCTYPE html>
<html>
    <head>
        <title>Hotel Richmond</title>

        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
        <link rel="icon" type="image/png" href="assets/1.png"/>

        <!-- Import lib -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css">
        <link rel="stylesheet" type="text/css" href="fontawesome-free/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <!-- End import lib -->

        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body class="overlay-scrollbar">
        <!-- navbar -->
        <div class="navbar">


            <!-- nav left -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link">
                        <i class="fas fa-bars" onclick="collapseSidebar()"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <img src="assets/2.png" alt="ATPro logo" class="logo logo-light">
                    <img src="assets/2.png" alt="ATPro logo" class="logo logo-dark">
                </li>
            </ul>
            <!-- end nav left -->


            <!-- form -->
            <form class="navbar-search">
                <input type="text" name="Search" class="navbar-search-input" placeholder="search.....">
                <i class="fas fa-search"></i>
            </form>
            <!-- end form -->


            <!-- nav right -->
            <ul class="navbar-nav nav-right">
                <li class="nav-item mode">
                    <a class="nav-link" href="#" onclick="switchTheme()">
                        <i class="fas fa-moon dark-icon"></i>
                        <i class="fas fa-sun light-icon"></i>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link">
                        <i class="fas fa-bell dropdown-toggle" data-toggle="notification-menu"></i>
                        <span class="navbar-badge">15</span>
                    </a>
                    <ul id="notification-menu" class="dropdown-menu notification-menu">
                        <div class="dropdown-menu-header">
                            <span>
                                Notifications
                            </span>
                        </div>
                        <div class="dropdown-menu-content overlay-scrollbar scrollbar-hover">
                            <li class="dropdown-menu-item">
                                <a href="#" class="dropdown-menu-link">
                                    <div>
                                        <i class="fas fa-gift"></i>
                                    </div>
                                    <span>
                                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                                        <br>
                                        <span>
                                            15/07/2020
                                        </span>
                                    </span>
                                </a>
                            </li>
                            <li class="dropdown-menu-item">
                                <a href="#" class="dropdown-menu-link">
                                    <div>
                                        <i class="fas fa-tasks"></i>
                                    </div>
                                    <span>
                                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                                        <br>
                                        <span>
                                            15/07/2020
                                        </span>
                                    </span>
                                </a>
                            </li>

                        </div>
                        <div class="dropdown-menu-footer">
                            <span>
                                View all notifications
                            </span>
                        </div>
                    </ul>
                </li>

                <li class="nav-item avt-wrapper">
                    <div class="avt dropdown">
                        <img src="assets/3.png" alt="User image" class="dropdown-toggle" data-toggle="user-menu">
                        <ul id="user-menu" class="dropdown-menu">
                            <li  class="dropdown-menu-item">
                                <a class="dropdown-menu-link">
                                    <div>
                                        <i class="fas fa-user-tie"></i>
                                    </div>
                                    <span>Profile</span>
                                </a>
                            </li>
                            <li class="dropdown-menu-item">
                                <a href="#" class="dropdown-menu-link">
                                    <div>
                                        <i class="fas fa-cog"></i>
                                    </div>
                                    <span>Settings</span>
                                </a>
                            </li>
                            <li  class="dropdown-menu-item">
                                <a href="#" class="dropdown-menu-link">
                                    <div>
                                        <i class="far fa-credit-card"></i>
                                    </div>
                                    <span>Payments</span>
                                </a>
                            </li>
                            <li  class="dropdown-menu-item">
                                <a href="#" class="dropdown-menu-link">
                                    <div>
                                        <i class="fas fa-spinner"></i>
                                    </div>
                                    <span>Projects</span>
                                </a>
                            </li>
                            <li  class="dropdown-menu-item">
                                <a href="#" class="dropdown-menu-link">
                                    <div>
                                        <i class="fas fa-sign-out-alt"></i>
                                    </div>
                                    <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
            <!-- end nav right -->
        </div>
        <!-- end navbar -->


        <!-- sidebar -->
        <div class="sidebar">
            <ul class="sidebar-nav">
                <li class="sidebar-nav-item">
                    <a href="#" class="sidebar-nav-link">
                        <div>
                            <i class="fa fa-cutlery" ></i>
                        </div>
                        <span>
                            Food Menu Handling
                        </span>
                    </a>
                </li>
                <li class="sidebar-nav-item">
                    <a href="roomReservation.jsp" class="sidebar-nav-link">
                        <div>
                            <i class="fa fa-bed"></i>
                        </div>
                        <span>
                            Room Reservation
                        </span>
                    </a>
                </li>
                <li class="sidebar-nav-item">
                    <a href="#" class="sidebar-nav-link">
                        <div>
                            <i class="fa fa-users"></i>
                        </div>
                        <span>
                            Hotel Staff Management
                        </span>
                    </a>
                </li>
                <li class="sidebar-nav-item">
                    <a href="#" class="sidebar-nav-link">
                        <div>
                            <i class="fa fa-user-o" ></i>
                        </div>
                        <span>
                            Employee Management
                        </span>
                    </a>
                </li>

                <li class="sidebar-nav-item">
                    <a href="salaryAndLeave.jsp" class="sidebar-nav-link">
                        <div>
                            <i class="fa fa-money" ></i>
                        </div>
                        <span>
                            Salary & Leave Management
                        </span>
                    </a>
                </li>

                <li class="sidebar-nav-item">
                    <a href="#" class="sidebar-nav-link">
                        <div>
                            <i class="fa fa-user-o" ></i>
                        </div>
                        <span>
                            Supplier Management
                        </span>
                    </a>
                </li>

                <li class="sidebar-nav-item">
                    <a href="#" class="sidebar-nav-link">
                        <div>
                            <i class="fa fa-user" ></i>
                        </div>
                        <span>
                            Customers Management
                        </span>
                    </a>
                </li>

                <li class="sidebar-nav-item">
                    <a href="#" class="sidebar-nav-link">
                        <div>
                            <i class="fas fa-tachometer-alt"></i>
                        </div>
                        <span>
                            Inventry Management
                        </span>
                    </a>
                </li>
                <li class="sidebar-nav-item">
                    <a href="#" class="sidebar-nav-link">
                        <div>
                            <i class="fa fa-calendar" ></i>
                        </div>
                        <span>
                            Event Management
                        </span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- end sidebar -->


        <!-- main content -->
        <div class="wrapper">
            <div class="row">
                <div  class="col-3 col-m-6 col-sm-6">

                    <div  class="counter bg-primary">
                        <p><a href="SearchE.jsp" style="color:#FFFFFF">
                                <i class="fa fa-money"></i>					</p>
                        <h3>100+</h3>
                        <p>Search User</p>
                    </div>
                </div>
                <div class="col-3 col-m-6 col-sm-6">
                    <div class="counter bg-warning">
                        <a href="addinventry.jsp" style="color:#FFFFFF">
                            <p>
                                <i class="fa fa-money"></i>
                            </p>
                            <h3>100+</h3>
                            <p>Add User Details</p>
                    </div>
                </div>

                <div class="col-3 col-m-6 col-sm-6">
                    <div class="counter bg-danger">
                        <a href="inventryaccount.jsp" style="color:#FFFFFF">
                            <p>
                                <i class="fa fa-money"></i>
                            </p>
                            <h3>100+</h3>
                            <p>Update and Delate</p>
                    </div>
                </div>
            </div>
        </div>



    </div>
</div>

<!-- end main content -->
<!-- import script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
<script src="js/index.js"></script>
<!-- end import script -->
</body>
</html>