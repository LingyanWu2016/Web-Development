<div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Smart Mobile</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="shop.php">Shop</a>
                    </li>
                    <li><a href="contact.php">Contact</a></li>
                </ul>
                <div class="col-sm-3 col-md-3">
                    <form action="search.php" method="POST" class="navbar-form" role="search">
                        <div class="input-group">
                            <input type="text" name="search" class="form-control" placeholder="Search">
                            <div class="input-group-btn">
                                <button class="btn btn-default searchheight" type="submit" name="button" ><i class="glyphicon glyphicon-search"></i></button>
                            </div>
                        </div>
                    </form>
                    
                </div>
                <div>

                    <? usernameDisplay(); ?>
                                                           
                    
                </div>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->