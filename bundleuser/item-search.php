<?php include('partials-front/menu.php'); ?>


<!-- Item sEARCH Section Starts Here -->
<section class="item-search text-center">
    <div class="container">
        <?php

        //Get the Search Keyword
        // $search = $_POST['search'];
        $search = mysqli_real_escape_string($conn, $_POST['search']);

        ?>


        <h2>Items on Your Search <a href="#" class="text-white">"<?php echo $search; ?>"</a></h2>

    </div>
</section>
<!-- Item sEARCH Section Ends Here -->



<!-- Item MEnu Section Starts Here -->
<section class="item-menu">
    <div class="container">
        <h2 class="text-center">Item Menu</h2>

        <?php

        //SQL Query to Get Items based on search keyword
        //$search = burger '; DROP database name;
        // "SELECT * FROM tbl_Item WHERE title LIKE '%burger'%' OR description LIKE '%burger%'";
        $sql = "SELECT * FROM tbl_item WHERE title LIKE '%$search%' OR description LIKE '%$search%'";

        //Execute the Query
        $res = mysqli_query($conn, $sql);

        //Count Rows
        $count = mysqli_num_rows($res);

        //Check whether item available of not
        if ($count > 0) {
            //item Available
            while ($row = mysqli_fetch_assoc($res)) {
                //Get the details
                $id = $row['id'];
                $title = $row['title'];
                $price = $row['price'];
                $description = $row['description'];
                $image_name = $row['image_name'];
        ?>

                <div class="item-menu-box">
                    <div class="item-menu-img">
                        <?php
                        // Check whether image name is available or not
                        if ($image_name == "") {
                            //Image not Available
                            echo "<div class='error'>Image not Available.</div>";
                        } else {
                            //Image Available
                        ?>
                            <img src="<?php echo SITEURL; ?>images/food/<?php echo $image_name; ?>" alt="Chicke Hawain Pizza" class="img-responsive img-curve">
                        <?php

                        }
                        ?>

                    </div>

                    <div class="item-menu-desc">
                        <h4><?php echo $title; ?></h4>
                        <p class="item-price">$<?php echo $price; ?></p>
                        <p class="item-detail">
                            <?php echo $description; ?>
                        </p>
                        <br>

                        <a href="#" class="btn btn-primary">Order Now</a>
                    </div>
                </div>

        <?php
            }
        } else {
            //item Not Available
            echo "<div class='error'>Item not found.</div>";
        }

        ?>



        <div class="clearfix"></div>



    </div>

</section>
<!-- Item Menu Section Ends Here -->

<?php include('partials-front/footer.php'); ?>