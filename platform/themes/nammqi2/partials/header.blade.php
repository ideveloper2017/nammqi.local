<!DOCTYPE html>
<html {!! Theme::htmlAttributes() !!}>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="robots" content="noindex, follow" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.png">
        <style>
            :root {
                --primary-color: {{ theme_option('primary_color', '#ff2b4a') }};
            }
        </style>

        {!! Theme::header() !!}
    </head>
    <body class="rbt-header-sticky" {!! Theme::bodyAttributes() !!}>
        {!! apply_filters(THEME_FRONT_BODY, null) !!}
        <header class="rbt-header rbt-header-4">
            <div class="rbt-sticky-placeholder"></div>
            <!-- Start Header Top -->
            <div class="rbt-header-top rbt-header-top-1 variation-height-50 header-space-betwween bg-color-white border-top-bar-primary-color rbt-border-bottom d-none d-xl-block">
                <div class="container-fluid">
                    <div class="top-expended-wrapper">
                        <div class="top-expended-inner rbt-header-sec align-items-center ">
                            <div class="rbt-header-sec-col rbt-header-left d-none d-xl-block">
                                <div class="rbt-header-content">
                                    <!-- Start Header Information List  -->
                                    <div class="header-info">
                                        <ul class="rbt-information-list">
                                            <li>
                                                <a href="#"><i class="feather-phone"></i>+1-202-555-0174</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- End Header Information List  -->
                                </div>
                            </div>
                            <div class="rbt-header-sec-col rbt-header-center">
                                <div class="rbt-header-content justify-content-start justify-content-xl-center">

                                </div>
                            </div>
                            <div class="rbt-header-sec-col rbt-header-right mt_md--10 mt_sm--10">
                                <div class="rbt-header-content justify-content-start justify-content-lg-end">
                                    <div class="header-info d-none d-xl-block">
                                        <ul class="social-share-transparent">
                                            <li>
                                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fab fa-twitter"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fab fa-linkedin-in"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fab fa-instagram"></i></a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="rbt-separator d-none d-xl-block"></div>

                                    <div class="header-info">
                                        <ul class="rbt-dropdown-menu switcher-language">
                                            <li class="has-child-menu">
                                                <a href="#">
                                                    <img class="left-image" src="assets/images/icons/en-us.png" alt="Language Images">
                                                    <span class="menu-item">English</span>
                                                    <i class="right-icon feather-chevron-down"></i>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="#">
                                                            <img class="left-image" src="assets/images/icons/fr.png" alt="Language Images">
                                                            <span class="menu-item">Français</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#">
                                                            <img class="left-image" src="assets/images/icons/de.png" alt="Language Images">
                                                            <span class="menu-item">Deutsch</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="header-info">
                            <div class="top-bar-expended d-block d-lg-none">
                                <button class="topbar-expend-button rbt-round-btn"><i class="feather-plus"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Header Top -->

            <div class="rbt-header-wrapper header-space-betwween bg-color-white header-sticky">
                <div class="container-fluid">
                    <div class="mainbar-row rbt-navigation-start align-items-center" >
                        <div class="header-left">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="assets/images/logo/logo.png" alt="Education Logo Images">
                                </a>
                            </div>
                        </div>
                        <div class="rbt-main-navigation d-none d-xl-block">
                            <nav class="mainmenu-nav">
                                {!!
                            Menu::renderMenuLocation('main-menu', [
                           'options' => ['class' => 'mainmenu'],
                           'view'    => 'main-menu',
                              ])
                           !!}
                                <ul class="mainmenu" style="display: none">
                                    <li class="with-megamenu has-menu-child-item position-static">
                                        <a href="#">Home</a>
                                    </li>

                                    <li class="with-megamenu has-menu-child-item">
                                        <a href="#">Courses <i class="feather-chevron-down"></i></a>
                                        <!-- Start Mega Menu  -->
                                        <div class="rbt-megamenu grid-item-2">
                                            <div class="wrapper">
                                                <div class="row row--15">
                                                    <div class="col-lg-12 col-xl-6 col-xxl-6 single-mega-item">
                                                        <h3 class="rbt-short-title">Course Layout</h3>
                                                        <ul class="mega-menu-item">
                                                            <li><a href="course-filter-one-toggle.html">Filter One Toggle</a></li>
                                                            <li><a href="course-filter-one-open.html">Filter One Open</a></li>
                                                            <li><a href="course-filter-two-toggle.html">Filter Two Toggle</a></li>
                                                            <li><a href="course-filter-two-open.html">Filter Two Open</a></li>
                                                            <li><a href="course-with-tab.html">Course With Tab</a></li>
                                                            <li><a href="course-with-tab-two.html">Course With Tab Two</a></li>
                                                            <li><a href="course-card-2.html">Course Card Two</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-12 col-xl-6 col-xxl-6 single-mega-item">
                                                        <h3 class="rbt-short-title">Course Layout</h3>
                                                        <ul class="mega-menu-item">
                                                            <li><a href="course-card-3.html">Course Card Three</a></li>
                                                            <li><a href="course-masonry.html">Course Masonry</a></li>
                                                            <li><a href="course-with-sidebar.html">Course With Sidebar</a></li>
                                                            <li><a href="course-details.html">Course Details</a></li>
                                                            <li><a href="course-details-2.html">Course Details Two</a></li>
                                                            <li><a href="lesson.html">Course Lesson <span class="rbt-badge-card">New</span></a></li>
                                                            <li><a href="create-course.html">Create Course <span class="rbt-badge-card">New</span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End Mega Menu  -->
                                    </li>

                                    <li class="has-dropdown has-menu-child-item">
                                        <a href="#">Dashboard
                                            <i class="feather-chevron-down"></i>
                                        </a>
                                        <ul class="submenu">
                                            <li class="has-dropdown"><a href="#">Instructor Dashboard</a>
                                                <ul class="submenu">
                                                    <li><a href="instructor-dashboard.html">Dashboard</a></li>
                                                    <li><a href="instructor-profile.html">Profile</a></li>
                                                    <li><a href="instructor-enrolled-courses.html">Enrolled Courses</a></li>
                                                    <li><a href="instructor-wishlist.html">Wishlist</a></li>
                                                    <li><a href="instructor-reviews.html">Reviews</a></li>
                                                    <li><a href="instructor-my-quiz-attempts.html">My Quiz Attempts</a></li>
                                                    <li><a href="instructor-order-history.html">Order History</a></li>
                                                    <li><a href="instructor-course.html">My Course</a></li>
                                                    <li><a href="instructor-announcements.html">Announcements</a></li>
                                                    <li><a href="instructor-quiz-attempts.html">Quiz Attempts</a></li>
                                                    <li><a href="instructor-assignments.html">Assignments</a></li>
                                                    <li><a href="instructor-settings.html">Settings</a></li>
                                                </ul>
                                            </li>
                                            <li class="has-dropdown"><a href="#">Student Dashboard</a>
                                                <ul class="submenu">
                                                    <li><a href="student-dashboard.html">Dashboard</a></li>
                                                    <li><a href="student-profile.html">Profile</a></li>
                                                    <li><a href="student-enrolled-courses.html">Enrolled Courses</a></li>
                                                    <li><a href="student-wishlist.html">Wishlist</a></li>
                                                    <li><a href="student-reviews.html">Reviews</a></li>
                                                    <li><a href="student-my-quiz-attempts.html">My Quiz Attempts</a></li>
                                                    <li><a href="student-order-history.html">Order History</a></li>
                                                    <li><a href="student-settings.html">Settings</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>

                                    <li class="with-megamenu has-menu-child-item">
                                        <a href="#">Courses <i class="feather-chevron-down"></i></a>
                                        <!-- Start Mega Menu  -->
                                        <div class="rbt-megamenu grid-item-2">
                                            <div class="wrapper">
                                                <div class="row row--15">
                                                    <div class="col-lg-12 col-xl-6 col-xxl-6 single-mega-item">
                                                        <h3 class="rbt-short-title">Course Layout</h3>
                                                        <ul class="mega-menu-item">
                                                            <li><a href="course-filter-one-toggle.html">Filter One Toggle</a></li>
                                                            <li><a href="course-filter-one-open.html">Filter One Open</a></li>
                                                            <li><a href="course-filter-two-toggle.html">Filter Two Toggle</a></li>
                                                            <li><a href="course-filter-two-open.html">Filter Two Open</a></li>
                                                            <li><a href="course-with-tab.html">Course With Tab</a></li>
                                                            <li><a href="course-with-tab-two.html">Course With Tab Two</a></li>
                                                            <li><a href="course-card-2.html">Course Card Two</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-12 col-xl-6 col-xxl-6 single-mega-item">
                                                        <h3 class="rbt-short-title">Course Layout</h3>
                                                        <ul class="mega-menu-item">
                                                            <li><a href="course-card-3.html">Course Card Three</a></li>
                                                            <li><a href="course-masonry.html">Course Masonry</a></li>
                                                            <li><a href="course-with-sidebar.html">Course With Sidebar</a></li>
                                                            <li><a href="course-details.html">Course Details</a></li>
                                                            <li><a href="course-details-2.html">Course Details Two</a></li>
                                                            <li><a href="lesson.html">Course Lesson <span class="rbt-badge-card">New</span></a></li>
                                                            <li><a href="create-course.html">Create Course <span class="rbt-badge-card">New</span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End Mega Menu  -->
                                    </li>

                                    <li class="with-megamenu has-menu-child-item position-static">
                                        <a href="#">Elements</a>

                                    </li>

                                    <li class="with-megamenu has-menu-child-item position-static">
                                        <a href="#">Blog</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="header-right">
                            <!-- Navbar Icons -->
                            <ul class="quick-access">

                                <li class="access-icon">
                                    <a class="search-trigger-active rbt-round-btn" href="#">
                                        <i class="feather-search"></i>
                                    </a>
                                </li>
                            </ul>
                            <!-- Start Mobile-Menu-Bar -->
                            <div class="mobile-menu-bar d-block d-xl-none">
                                <div class="hamberger">
                                    <button class="hamberger-button rbt-round-btn">
                                        <i class="feather-menu"></i>
                                    </button>
                                </div>
                            </div>
                            <!-- Start Mobile-Menu-Bar -->
                        </div>
                    </div>
                </div>
                <!-- Start Search Dropdown  -->
                <div class="rbt-search-dropdown">
                    <div class="wrapper">
                        <div class="row">
                            <div class="col-lg-12">
                                <form action="#">
                                    <input type="text" placeholder="What are you looking for?">
                                    <div class="submit-btn">
                                        <a class="rbt-btn btn-gradient btn-md" href="#">Search</a>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="rbt-separator-mid">
                            <hr class="rbt-separator m-0">
                        </div>
                    </div>
                </div>
                <!-- End Search Dropdown  -->
            </div>



        </header>
