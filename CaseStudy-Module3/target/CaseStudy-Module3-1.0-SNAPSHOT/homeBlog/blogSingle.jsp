<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2/26/2021
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Blog Single</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700" rel="stylesheet">

    <link rel="stylesheet" href="homeBlog/css/bootstrap.css">
    <link rel="stylesheet" href="homeBlog/css/animate.css">
    <link rel="stylesheet" href="homeBlog/css/owl.carousel.min.css">

    <link rel="stylesheet" href="homeBlog/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="homeBlog/fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="homeBlog/fonts/flaticon/font/flaticon.css">

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="homeBlog/css/style.css">
</head>
<body>



<header role="banner">
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-9 social">
                    <a href="#"><span class="fa fa-twitter"></span></a>
                    <a href="#"><span class="fa fa-facebook"></span></a>
                    <a href="#"><span class="fa fa-instagram"></span></a>
                    <a href="#"><span class="fa fa-youtube-play"></span></a>
                    <a href="#"><span class="fa fa-vimeo"></span></a>
                    <a href="#"><span class="fa fa-snapchat"></span></a>
                </div>
                <div class="col-3 search-top">
                    <!-- <a href="#"><span class="fa fa-search"></span></a> -->
                    <form action="/searchTitle" method="get" class="search-top-form">
                        <span class="icon fa fa-search"></span>
                        <input type="text" name="title" placeholder="Type keyword to search...">
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="container logo-wrap">
        <div class="row pt-5">
            <div class="col-12 text-center">
                <a class="absolute-toggle d-block d-md-none" data-toggle="collapse" href="#navbarMenu" role="button" aria-expanded="false" aria-controls="navbarMenu"><span class="burger-lines"></span></a>
                <h1><a href="/homeBlog">Ông Phước Blog</a></h1>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-expand-md  navbar-light bg-light">
        <div class="container">


            <div class="collapse navbar-collapse" id="navbarMenu">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="/homeBlog">Home</a>
                    </li>
<%--                    <li class="nav-item dropdown">--%>
<%--                        <a class="nav-link dropdown-toggle" href="category.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Travel</a>--%>
<%--                        <div class="dropdown-menu" aria-labelledby="dropdown04">--%>
<%--                            <a class="dropdown-item" href="#">Asia</a>--%>
<%--                            <a class="dropdown-item" href="#">Europe</a>--%>
<%--                            <a class="dropdown-item" href="#">Dubai</a>--%>
<%--                            <a class="dropdown-item" href="#">Africa</a>--%>
<%--                            <a class="dropdown-item" href="#">South America</a>--%>
<%--                        </div>--%>

<%--                    </li>--%>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categories</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown05">
                            <c:forEach items="${listCategory}" var="list">
                                <a class="dropdown-item" href="/category?id=${list.id}">${list.nameCategory}</a>
                            </c:forEach>
                        </div>

                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/aboutBlog">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact">Contact</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
</header>
<!-- END header -->

<section class="site-section py-lg">
    <div class="container">

        <div class="row blog-entries">
            <div class="col-md-12 col-lg-8 main-content">
                <h1 class="mb-4">${postListPageSingle.title}</h1>
                <div class="post-meta">
                    <span class="category">${postListPageSingle.category.nameCategory}</span>
                    <span class="mr-2">${postListPageSingle.publisht}</span> &bullet;
                    <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                </div>
                <div class="post-content-body">
                    <p>${postListPageSingle.shortContent}</p>
                    <div class="row mb-5">
                        <div class="col-md-12 mb-4 element-animate">
                            <img src="${postListPageSingle.image}" alt="Image placeholder" class="img-fluid">
                        </div>
                    </div>
                    <p>${postListPageSingle.fullContent}</p>
                </div>


                <div class="pt-5">
                    <p>Categories:  <a href="#">Food</a>, <a href="#">Travel</a>  Tags: <a href="#">#manila</a>, <a href="#">#asia</a></p>
                </div>


                <div class="pt-5">
                    <h3 class="mb-5">6 Comments</h3>
                    <ul class="comment-list">
                        <li class="comment">
                            <div class="vcard">
                                <img src="homeBlog/images/person_1.jpg" alt="Image placeholder">
                            </div>
                            <div class="comment-body">
                                <h3>Jean Doe</h3>
                                <div class="meta">January 9, 2018 at 2:21pm</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                <p><a href="#" class="reply">Reply</a></p>
                            </div>
                        </li>

                        <li class="comment">
                            <div class="vcard">
                                <img src="homeBlog/images/person_1.jpg" alt="Image placeholder">
                            </div>
                            <div class="comment-body">
                                <h3>Jean Doe</h3>
                                <div class="meta">January 9, 2018 at 2:21pm</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                <p><a href="#" class="reply">Reply</a></p>
                            </div>

                            <ul class="children">
                                <li class="comment">
                                    <div class="vcard">
                                        <img src="homeBlog/images/person_1.jpg" alt="Image placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Jean Doe</h3>
                                        <div class="meta">January 9, 2018 at 2:21pm</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                        <p><a href="#" class="reply">Reply</a></p>
                                    </div>


                                    <ul class="children">
                                        <li class="comment">
                                            <div class="vcard">
                                                <img src="homeBlog/images/person_1.jpg" alt="Image placeholder">
                                            </div>
                                            <div class="comment-body">
                                                <h3>Jean Doe</h3>
                                                <div class="meta">January 9, 2018 at 2:21pm</div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                <p><a href="#" class="reply">Reply</a></p>
                                            </div>

                                            <ul class="children">
                                                <li class="comment">
                                                    <div class="vcard">
                                                        <img src="homeBlog/images/person_1.jpg" alt="Image placeholder">
                                                    </div>
                                                    <div class="comment-body">
                                                        <h3>Jean Doe</h3>
                                                        <div class="meta">January 9, 2018 at 2:21pm</div>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                        <p><a href="#" class="reply">Reply</a></p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                        <li class="comment">
                            <div class="vcard">
                                <img src="homeBlog/images/person_1.jpg" alt="Image placeholder">
                            </div>
                            <div class="comment-body">
                                <h3>Jean Doe</h3>
                                <div class="meta">January 9, 2018 at 2:21pm</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                <p><a href="#" class="reply">Reply</a></p>
                            </div>
                        </li>
                    </ul>
                    <!-- END comment-list -->

                    <div class="comment-form-wrap pt-5">
                        <h3 class="mb-5">Leave a comment</h3>
                        <form action="#" class="p-5 bg-light">
                            <div class="form-group">
                                <label for="name">Name *</label>
                                <input type="text" class="form-control" id="name">
                            </div>
                            <div class="form-group">
                                <label for="email">Email *</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="website">Website</label>
                                <input type="url" class="form-control" id="website">
                            </div>

                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Post Comment" class="btn btn-primary">
                            </div>

                        </form>
                    </div>
                </div>

            </div>

            <!-- END main-content -->

            <div class="col-md-12 col-lg-4 sidebar">
                <div class="sidebar-box search-form-wrap">
                    <form action="#" class="search-form">
                        <div class="form-group">
                            <span class="icon fa fa-search"></span>
                            <input type="text" class="form-control" id="s" placeholder="Type a keyword and hit enter">
                        </div>
                    </form>
                </div>
                <!-- END sidebar-box -->
                <div class="sidebar-box">
                    <div class="bio text-center">
                        <img src="homeBlog/images/person_1.jpg" alt="Image Placeholder" class="img-fluid">
                        <div class="bio-body">
                            <h2>${postListPageSingle.author.name}</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem facilis sunt repellendus excepturi beatae porro debitis voluptate nulla quo veniam fuga sit molestias minus.</p>
                            <p><a href="#" class="btn btn-primary btn-sm">Read my bio</a></p>
                            <p class="social">
                                <a href="#" class="p-2"><span class="fa fa-facebook"></span></a>
                                <a href="#" class="p-2"><span class="fa fa-twitter"></span></a>
                                <a href="#" class="p-2"><span class="fa fa-instagram"></span></a>
                                <a href="#" class="p-2"><span class="fa fa-youtube-play"></span></a>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- END sidebar-box -->
                <div class="sidebar-box">
                    <h3 class="heading">Popular Posts</h3>
                    <div class="post-entry-sidebar">
                        <ul>
                            <c:forEach items="${list}" var="listRandom">
                                <li>
                                    <a href="/blogSingle?id=${listRandom.idPost}">
                                        <img src="${listRandom.image}" alt="Image placeholder" class="mr-4">
                                        <div class="text">
                                            <h4>${listRandom.title}</h4>
                                            <div class="post-meta">
                                                <span class="mr-2">${listRandom.publisht}</span> &bullet;
                                                <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <!-- END sidebar-box -->

                <div class="sidebar-box">
                    <h3 class="heading">Categories</h3>
                    <ul class="categories">
                        <li><a href="#">Courses <span>(12)</span></a></li>
                        <li><a href="#">News <span>(22)</span></a></li>
                        <li><a href="#">Design <span>(37)</span></a></li>
                        <li><a href="#">HTML <span>(42)</span></a></li>
                        <li><a href="#">Web Development <span>(14)</span></a></li>
                    </ul>
                </div>
                <!-- END sidebar-box -->

                <div class="sidebar-box">
                    <h3 class="heading">Tags</h3>
                    <ul class="tags">
                        <li><a href="#">Travel</a></li>
                        <li><a href="#">Adventure</a></li>
                        <li><a href="#">Food</a></li>
                        <li><a href="#">Lifestyle</a></li>
                        <li><a href="#">Business</a></li>
                        <li><a href="#">Freelancing</a></li>
                        <li><a href="#">Travel</a></li>
                        <li><a href="#">Adventure</a></li>
                        <li><a href="#">Food</a></li>
                        <li><a href="#">Lifestyle</a></li>
                        <li><a href="#">Business</a></li>
                        <li><a href="#">Freelancing</a></li>
                    </ul>
                </div>
            </div>
            <!-- END sidebar -->

        </div>
    </div>
</section>

<section class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-3 ">Related Post</h2>
            </div>
        </div>
        <div class="row">
            <c:forEach var="lists" items="${list}">
                <div class="col-md-6 col-lg-4">
                    <a href="/blogSingle?id=${lists.idPost}" class="a-block d-flex align-items-center height-md" style="background-image: url('${lists.image}'); ">
                        <div class="text">
                            <div class="post-meta">
                                <span class="category">${lists.category.nameCategory}</span>
                                <span class="mr-2">${lists.publisht}</span> &bullet;
                                <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                            </div>
                            <h3>${lists.title}</h3>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>


</section>
<!-- END section -->

<footer class="site-footer">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-4">
                <h3>Paragraph</h3>
                <img src="homeBlog/images/img_1.jpg" alt="Image placeholder" class="img-fluid">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi, accusantium optio unde perferendis eum illum voluptatibus dolore tempora, consequatur minus asperiores temporibus reprehenderit.</p>
            </div>
            <div class="col-md-6 ml-auto">
                <div class="row">
                    <div class="col-md-7">
                        <h3>Latest Post</h3>
                        <div class="post-entry-sidebar">
                            <ul>
                                <c:forEach var="lists" items="${list}">
                                    <li>
                                        <a href="/blogSingle?id=${lists.idPost}">
                                            <img src="${lists.image}" alt="Image placeholder" class="mr-4">
                                            <div class="text">
                                                <h4>${lists.title}</h4>
                                                <div class="post-meta">
                                                    <span class="mr-2">${lists.publisht}</span> &bullet;
                                                    <span class="ml-2"><span class="fa fa-comments"></span> 3</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-1"></div>

                    <div class="col-md-4">

                        <div class="mb-5">
                            <h3>Quick Links</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Travel</a></li>
                                <li><a href="#">Adventure</a></li>
                                <li><a href="#">Courses</a></li>
                                <li><a href="#">Categories</a></li>
                            </ul>
                        </div>

                        <div class="mb-5">
                            <h3>Social</h3>
                            <ul class="list-unstyled footer-social">
                                <li><a href="#"><span class="fa fa-twitter"></span> Twitter</a></li>
                                <li><a href="#"><span class="fa fa-facebook"></span> Facebook</a></li>
                                <li><a href="#"><span class="fa fa-instagram"></span> Instagram</a></li>
                                <li><a href="#"><span class="fa fa-vimeo"></span> Vimeo</a></li>
                                <li><a href="#"><span class="fa fa-youtube-play"></span> Youtube</a></li>
                                <li><a href="#"><span class="fa fa-snapchat"></span> Snapshot</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>
        </div>
    </div>
</footer>
<!-- END footer -->

<!-- loader -->
<div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>

<script src="homeBlog/js/jquery-3.2.1.min.js"></script>
<script src="homeBlog/js/jquery-migrate-3.0.0.js"></script>
<script src="homeBlog/js/popper.min.js"></script>
<script src="homeBlog/js/bootstrap.min.js"></script>
<script src="homeBlog/js/owl.carousel.min.js"></script>
<script src="homeBlog/js/jquery.waypoints.min.js"></script>
<script src="homeBlog/js/jquery.stellar.min.js"></script>


<script src="homeBlog/js/main.js"></script>
</body>
</html>
