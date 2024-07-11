<section class="blog blog-two padding-120">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="blog-items">
                    @foreach($categories as $category)
                        @foreach($category->posts as $post)
                    <div class="blog-item blog-item-wide">
                        <div class="blog-image">
                            <a href="{{ $post->url }}"><img src="{{ RvMedia::getImageUrl($post->image, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="blog image" class="img-responsive"></a>
                        </div>
                        <div class="blog-content">
                            <h4><a href="{{ $post->url }}">{{ $post->name }}</a></h4>
{{--                            <a href="{{ $post->url }}">Read More <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>--}}
                        </div>
                    </div>
                        @endforeach
                    @endforeach
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12" style="display: none">
                <div class="sidebar">
                    <div class="sidebar-item">
                        <h3 class="sidebar-title">Search Coures</h3>

                        <form>
                            <input type="text" name="text" placeholder="Search Your Catagorie...">
                            <select>
                                <option>Select Categories</option>
                                <option>Adobe Photoshop</option>
                                <option>Adobe illustrator</option>
                                <option>JavaScript</option>
                                <option>PHP</option>
                                <option>HTML5</option>
                                <option>CSS3</option>
                                <option>WordPress</option>
                                <option>Joomla</option>
                                <option>Ruby</option>
                                <option>JQuery</option>
                            </select>
                            <button>Search Now</button>
                        </form>
                    </div><!-- sidebar item -->
                    <div class="sidebar-item">
                        <h3 class="sidebar-title">Popular Courses</h3>

                        <ul class="sidebar-categories">
                            <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Brand Creation <span>05</span></a></li>
                            <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Company Analysis <span>27</span></a></li>
                            <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Corporate Identity <span>07</span></a></li>
                            <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Funding <span>09</span></a></li>
                            <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Medical <span>08</span></a></li>
                            <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Strategy Planning <span>25</span></a></li>
                            <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Uncategorized <span>20</span></a></li>
                            <li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Video Production <span>30</span></a></li>
                        </ul>
                    </div><!-- sidebar item -->
                    <div class="sidebar-item">
                        <h3 class="sidebar-title">Latest Courses</h3>

                        <ul class="sidebar-posts">
                            <li>
                                <div class="image">
                                    <a href="single.html"><img src="images/sidebar/post_image_01.jpg" alt="post image" class="img-responsive"></a>
                                </div>
                                <div class="content">
                                    <a href="single.html">Foulate revlunry amihare are the theme.</a>
                                    <span class="price">$ 200</span>
                                    <div class="rating">
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="image">
                                    <a href="single.html"><img src="images/sidebar/post_image_02.jpg" alt="post image" class="img-responsive"></a>
                                </div>
                                <div class="content">
                                    <a href="single.html">Foulate revlunry amihare are the theme.</a>
                                    <span class="price">$ Free</span>
                                    <div class="rating">
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="image">
                                    <a href="single.html"><img src="images/sidebar/post_image_03.jpg" alt="post image" class="img-responsive"></a>
                                </div>
                                <div class="content">
                                    <a href="single.html">Foulate revlunry amihare are the theme.</a>
                                    <span class="price">$ 300</span>
                                    <div class="rating">
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="image">
                                    <a href="single.html"><img src="images/sidebar/post_image_04.jpg" alt="post image" class="img-responsive"></a>
                                </div>
                                <div class="content">
                                    <a href="single.html">Foulate revlunry amihare are the theme.</a>
                                    <span class="price">$ 250</span>
                                    <div class="rating">
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                        <span><i class="fa fa-star" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                            </li>
                        </ul><!-- sidebar-posts -->
                    </div><!-- sidebar item -->
                    <div class="sidebar-item">
                        <h3 class="sidebar-title">University Gallery</h3>

                        <ul class="sidebar-gallery">
                            <li><a href="#"><img src="images/sidebar/gallery_01.jpg" alt="gallery image" class="img-responsive"></a></li>
                            <li><a href="#"><img src="images/sidebar/gallery_02.jpg" alt="gallery image" class="img-responsive"></a></li>
                            <li><a href="#"><img src="images/sidebar/gallery_03.jpg" alt="gallery image" class="img-responsive"></a></li>
                            <li><a href="#"><img src="images/sidebar/gallery_04.jpg" alt="gallery image" class="img-responsive"></a></li>
                            <li><a href="#"><img src="images/sidebar/gallery_05.jpg" alt="gallery image" class="img-responsive"></a></li>
                            <li><a href="#"><img src="images/sidebar/gallery_06.jpg" alt="gallery image" class="img-responsive"></a></li>
                            <li><a href="#"><img src="images/sidebar/gallery_07.jpg" alt="gallery image" class="img-responsive"></a></li>
                            <li><a href="#"><img src="images/sidebar/gallery_08.jpg" alt="gallery image" class="img-responsive"></a></li>
                            <li><a href="#"><img src="images/sidebar/gallery_09.jpg" alt="gallery image" class="img-responsive"></a></li>
                        </ul><!-- sidebar-gallery -->
                    </div><!-- sidebar item -->
                    <div class="sidebar-item">
                        <h3 class="sidebar-title">Popular Courses</h3>

                        <ul class="sidebar-posts">
                            <li>
                                <div class="image">
                                    <a href="single.html"><img src="images/sidebar/post_image_01.jpg" alt="post image" class="img-responsive"></a>
                                </div>
                                <div class="content">
                                    <a href="single.html">Foulate revlunry amihare are the theme.</a>
                                    <span>04 February 2016</span>
                                </div>
                            </li>
                            <li>
                                <div class="image">
                                    <a href="single.html"><img src="images/sidebar/post_image_02.jpg" alt="post image" class="img-responsive"></a>
                                </div>
                                <div class="content">
                                    <a href="single.html">Foulate revlunry amihare are the theme.</a>
                                    <span>04 February 2016</span>
                                </div>
                            </li>
                            <li>
                                <div class="image">
                                    <a href="single.html"><img src="images/sidebar/post_image_03.jpg" alt="post image" class="img-responsive"></a>
                                </div>
                                <div class="content">
                                    <a href="single.html">Foulate revlunry amihare are the theme.</a>
                                    <span>04 February 2016</span>
                                </div>
                            </li>
                            <li>
                                <div class="image">
                                    <a href="single.html"><img src="images/sidebar/post_image_04.jpg" alt="post image" class="img-responsive"></a>
                                </div>
                                <div class="content">
                                    <a href="single.html">Foulate revlunry amihare are the theme.</a>
                                    <span>04 February 2016</span>
                                </div>
                            </li>
                        </ul><!-- sidebar-posts -->
                    </div><!-- sidebar item -->

                    <div class="sidebar-item">
                        <h3 class="sidebar-title">Latest Tags</h3>

                        <ul class="sidebar-tags">
                            <li><a href="#">Business</a></li>
                            <li><a href="#">Graphic</a></li>
                            <li><a href="#">CSS3</a></li>
                            <li><a href="#">HTML5</a></li>
                            <li><a href="#">Design</a></li>
                            <li><a href="#">Java</a></li>
                            <li><a href="#">Wordpress</a></li>
                            <li><a href="#">Joomla</a></li>
                            <li><a href="#">SEO</a></li>
                        </ul>
                    </div><!-- sidebar item -->
                </div><!-- sidebar -->
            </div>
        </div>
    </div>
</section>
