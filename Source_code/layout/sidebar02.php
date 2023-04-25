<div class="sidebar fl-left">
    <div class="section" id="category-product-wp">
        <div class="section-head">
            <h3 class="section-title">Danh mục sản phẩm</h3>
        </div>
        <div class="secion-detail">
            <ul class="list-item">
                <li>
                    <a href="?modules=products&controllers=index&action=show&id_cat=15" title="">Jean nữ</a>
                </li>
                <li>
                    <a href="?modules=products&controllers=index&action=show&id_cat=15" title="">Jean nam</a>
                </li>
                <li>
                    <a href="?modules=products&controllers=index&action=show&id_cat=16" title="">Áo thun nữ</a>
                </li>
                <li>
                    <a href="?modules=products&controllers=index&action=show&id_cat=17" title="">Áo thun nam</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="section" id="filter-product-wp">
        <div class="section-head">
            <h3 class="section-title">Bộ lọc</h3>
        </div>
        <div class="section-detail">
            <form method="POST" action="?modules=search&controllers=index&action=filter">
                <table>
                    <thead>
                        <tr>
                            <td colspan="2">Giá</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="radio" name="r-price" id="r-price1" value="0,100000"></td>
                            <td><label for="r-price1">Dưới 100.000đ</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="r-price" id="r-price2" value="100000,200000"></td>
                            <td><label for="r-price2">100.000đ - 200.000đ</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="r-price" id="3" value="200000,400000"></td>
                            <td><label for="3">200.000đ - 400.000đ</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="r-price" id="4" value="400000,600000"></td>
                            <td><label for="4">400.000đ - 600.000đ</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="r-price" id="5" value="600000,100000000"></td>
                            <td><label for="5">Trên 600.000đ</label></td>
                        </tr>
                    </tbody>
                </table>
                <table>
                    <thead>
                        <tr>
                            <td colspan="2">Hãng</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="radio" name="r-brand" id="i1" value="12"></td>
                            <td><label for="i1">CAN DE BLANC</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="r-brand" id="i2" value="9"></td>
                            <td><label for="i2">ALE JEANS</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="r-brand" id="i3" value="10"></td>
                            <td><label for="i3">Eco Jean</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="r-brand" id="i4" value="11"></td>
                            <td><label for="i4">IMAGINE U</label></td>
                        </tr>
                    </tbody>
                </table>
                <table>
                    <thead>
                        <tr>
                            <td colspan="2">Loại</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="radio" name="r-category" id="a1" value="15"></td>
                            <td><label for="a1">Jean nữ</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="r-category" id="a2" value="15"></td>
                            <td><label for="a2">Jean name</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="r-category" id="a3" value="16"></td>
                            <td><label for="a3">Áo thun nữ</label></td>
                        </tr>
                        <tr>
                            <td><input type="radio" name="r-category" id="a3" value="17"></td>
                            <td><label for="a3">Áo thun nam</label></td>
                        </tr>
                    </tbody>
                </table>
                <input style="width: 100%;color: white; background-color: #95d895;border-radius: 5px; border: none; " type="submit" name="btn_filter" value="Áp dụng">
            </form>
        </div>
    </div>
    <div class="section" id="banner-wp">
        <div class="section-detail">
            <a href="?page=detail_product" title="" class="thumb">
                <img src="public/images/banner.png" alt="">
            </a>
        </div>
    </div>
</div>