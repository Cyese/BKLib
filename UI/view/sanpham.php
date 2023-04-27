<div class="header__search">
  <div class="search__container">
    <div class="search">
      <input type="text" , class="search__input" , placeholder="Nhập để tìm kiếm" />
      <!-- Nut tim kiem -->
      <button class="search_btn">
        <i class="fa-solid fa-magnifying-glass"></i>
      </button>
    </div>
  </div>
</div>

<div class="shopping_area">
  <div class="shopping_container">
    <div class="grid">
      <div class="grid__row">
        <div class="grid__column-2" , style="
          margin-top: 30px">
          <nav class="category">
            <h3 class="category_heading" , style="font-size: 16px">
              <i class="category_heading-icon fa-solid fa-list"></i>
              Danh Mục
            </h3>
            <ul class="category-list">
              <?php
                foreach ($dsdm as $dm) {
                  extract($dm);
                  $linkdm = "index.php?act=sanpham&iddm=".$id;
                  echo '
                    <li class="category-item category-item--active" , style="" , id="bookA-a">
                        <a href="'.$linkdm.'" class="category-item__link" id="click">'.$name.'</a>
                    </li>
                  ';
                }
              ?>
              <!-- <li class="category-item">
                <a href="" class="category-item__link" ng-click="displaytab('typeA')">Sách A</a>
                 <button  class="category-item__link" onclick="displaytab('typeA')">Sách A</button> 
              </li>
              <li class="category-item category-item--active" , style="display: none" , id="bookA-a">
                <a href="#" class="category-item__link" id="click">Sách A</a>
              </li>

              <li class="category-item">
                <a href="#" class="category-item__link" onclick="displaytab('bookB-a')">Sách B</a>
              </li>

              <li class="category-item category-item--active" , style="display: none" , id="bookB-a">
                <a href="#" class="category-item__link" id="click">Sách B</a>
              </li>

              <li class="category-item">
                <a href="#" class="category-item__link" onclick="displaytab('bookC-a')">Sách C</a>
              </li>

              <li class="category-item category-item--active" , style="display: none" , id="bookC-a">
                <a href="#" class="category-item__link" id="click">Sách C</a>
              </li>

              <li class="category-item">
                <a href="#" class="category-item__link" onclick="displaytab('bookD-a')">Sách D</a>
              </li>

              <li class="category-item category-item--active" , style="display: none" , id="bookD-a">
                <a href="#" class="category-item__link" id="click">Sách D</a>
              </li> -->

            </ul>
          </nav>
        </div>

        <div class="grid__column-10">
          <!-- <div class="home-filter">
            <div class="select-input">
              <span class="select-input__label">
                Trang
                <i class="fa fa-angle-down"></i>
              </span>
            </div>
          </div> -->
          <div class="home-product">
            <div class="grid__row" , id="typeA">
              <?php
              $i = 0;
              foreach ($dssp as $sp) {
                extract($sp);
                $linksp = "index.php?act=sanpham&idsp=".$id;
                $hinh = $img_path . $img;
                if ($i == 2 || $i == 5 || $i == 8) {
                }
                echo '
                      <div class="grid__column-2-4", style="background-color:white;border: 2px solid #AAAAAA; border-radius: 5px;">
                      <div class="home-product-item">
                          <div class="home-product-item__img" , style="
                                            background-image: url(' . $hinh . ');padding-top: 100%;
                                            background-repeat: no-repeat;
                                            background-size: contain;
                                            
                          ">
                                              
                              <div class = "container-font", style="background-color:white">
                                      <div class="home-product-item__name", style = "display:flex; align-items: center;justify-content: center">
                                              <span class="home-product-item__price-new">' . $name . '</span>
                                      </div>                 
                                                    
                                      <div class="home-product-item__price">
                                          <span class="home-product-item__price-new">' . $price . 'đ</span>
                                      </div>
                              </div>
                          </div>
                      </div>
                  </div>
                    ';
              }
              ?>
              

            </div>
          </div>
        </div>
        
        <script>
          function display(id) {
            var i, tabcontent, tabdisplay;
            tabcontent = document.getElementsByClassName("category-item__link");
            for (i = 0; i < tabcontent.length; i++) {
              tabcontent[i].style.display = "none";
            }
            tablink = document.getElementById(id);
            tablink.style.display = "unset";
          }
        </script>
      </div>
    </div>
  </div>
</div>