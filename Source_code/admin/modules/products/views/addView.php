<?php get_header(); ?>
<div id="main-content-wp" class="add-cat-page">
    <div class="wrap clearfix">
        <?php get_sidebar(); ?>
        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">Thêm sản phẩm</h3>
                    <a href="?modules=products&controllers=index&action=list" title="" id="add-new" class="fl-left">Danh sách</a>
                </div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <form method="POST" action="?modules=products&controllers=index&action=add" enctype="multipart/form-data">
                        <div style=" display: flex;">
                            <div style="width: 400px;">
                                <label for="product-name">Tên sản phẩm</label>
                                <input type="text" name="name" id="product-name" style="display: block;width: 300px;">
                                <label for="product-code">Mã sản phẩm</label>
                                <input type="text" name="code" id="product-code" style="display: block;width: 300px;">
                                <label for="price">Giá sản phẩm</label>
                                <input type="text" name="price" id="price" style="display: block;width: 300px;">
                                <label for="price">Số lượng</label>
                                <input type="text" name="quantity" id="price" style="display: block;width: 300px;">
                            </div>
                            <div style="width: 400px;">
                                <label for="status">Trạng thái</label>
                                <select name="status" style="display: block;width: 300px;">
                                    <option value="còn hàng">còn hàng</option>
                                    <option value="hết hàng">hết hàng</option>
                                    <option value="hàng sắp về">hàng sắp về</option>
                                </select>
                                <label for="category ">Danh mục sản phẩm</label>
                                <select name="id_category" style="display: block;width: 300px;">
                                    <?php if(!empty($data)) foreach ($data[0] as  $value) { ?>
                                    <option value="<?php echo $value['id']; ?>"><?php echo $value['name']; ?></option>
                                    <?php }; ?>
                                </select>
                                <label for="brand">Thương hiệu sản phẩm</label>
                                <select name="id_brand" style="display: block;width: 300px;">
                                    <?php if(!empty($data)) foreach ($data[1] as  $value) { ?>
                                    <option value="<?php echo $value['id']; ?>"><?php echo $value['name']; ?></option>
                                    <?php }; ?>
                                </select>         
                                <label>Hình ảnh</label>
                                <div id="uploadFile">
                                    <input type="file" name="image" id="upload-thumb">
                                    <img src="public/images/img-thumb.png">
                                </div>
                            </div>         
                        </div> 
                        <label for="desc">Mô tả sản phẩm</label>
                        <input type="text" name="description" id="desc" style="display: block;width: 100%;" maxlength=255> 
                        <label for="detail">Chi tiết</label>
                        <textarea name="detail" id="detail" class="ckeditor"></textarea>
                        <input
                            type="submit"
                            name="btn_submit"
                            id="btn-submit"
                            value="Thêm mới"
                            style="
                                height: 40px;
                                border-radius: 60px;
                                width: 150px;
                                color: green;
                                border-color: white;
                                color: white;
                                background-color: #48ad48;
                            "
                        />              
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php get_footer(); ?>