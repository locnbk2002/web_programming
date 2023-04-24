<?php get_header(); ?>

<div id="main-content-wp" class="home-page clearfix">
    <div class="wp-inner">
        <div class="section" id="slider-wp">
            <div class="section-detail">
                <?php if (!empty($data)) foreach ($data[4] as $value) { ?>
                    <div class="item">
                        <img src="<?php echo $value['image']; ?>" alt="">
                    </div>
                <?php }; ?>
            </div>
        </div>
        <div class="main-content fl-right">
            <div class="section" id="feature-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Sản phẩm nổi bật</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">

                        <?php if (!empty($data)) foreach ($data['3'] as  $value) { ?>

                            <li>
                                <a href="?modules=products&controllers=index&action=detail&id=<?php echo $value['id']; ?>" title="" class="thumb">
                                    <img src="<?php echo $value['image']; ?>">
                                </a>
                                <a href="?modules=products&controllers=index&action=detail&id=<?php echo $value['id']; ?>" title="" class="product-name"><?php echo $value['name']; ?></a>
                                <div class="price">
                                    <span style="display: block;" class="new"><?php echo $value['promotional_price'] . ' VNĐ'; ?></span>
                                    <!-- <span style="display: block;" class="old"> -->
                                    <?php
                                    // echo $value['price'].' VNĐ'; 
                                    ?>
                                    <!-- </span> -->
                                </div>
                                <div class="action clearfix">
                                    <a href="<?php $id = $value['id'];
                                                if (!empty($_SESSION['id_customer'])) $urlll = "?modules=carts&controllers=index&action=add&id=$id";
                                                else $urlll = "?modules=users&controllers=index&action=index&report=1";
                                                echo $urlll; ?> " title="" class="add-cart fl-left">Thêm giỏ hàng</a>
                                    <a href="<?php $id = $value['id'];
                                                if (!empty($_SESSION['id_customer'])) $urlll = "?modules=carts&controllers=index&action=addByNow&id=$id";
                                                else $urlll = "?modules=users&controllers=index&action=index&report=1";
                                                echo $urlll; ?> " title="" class="buy-now fl-right">Mua ngay</a>
                                </div>
                            </li>

                        <?php }; ?>

                    </ul>
                </div>
            </div>
        </div>
        <?php get_sidebar(); ?>
    </div>
</div>

<?php get_footer(); ?>