<template>
<div>
    <section class="page_detail product-detail">
        <div class="container" v-if="product">
            <div class="row overflow-hidden">
                <div class="col-lg-7">
                    <div class="row mx-0">
                        <!-- <div class="col-lg-3 col-4 overflow-hidden wow fadeInLeft">
                            <div class="slide_product_thumb">
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <img v-if="product.productImage" :src="require('@/assets/content/images/'+ product.productImage) " class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9 col-8 wow fadeInUp">
                            <div class="slide_product">
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <img v-if="product.productImage" :src="require('@/assets/content/images/'+ product.productImage) " class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                           <div class="section_slide has_pagi">
                                <div class="swiper-container slide_home">
                                    <div class="swiper-wrapper">
                                        <swiper loop :autoplay= 5000 :pagination-clickable="true" :tab-mode-animation="true" > 
                                           
                                                <div class="swiper-slide"  v-for="(listim,index) in listimg" :key="index">
                                
                                                     <img :src="require('@/assets/content/images/'+ listim) " class="img-fluid">
                                                </div>
                                           
                                        </swiper>
                                    </div>
                                </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 mt-lg-0 mt-3 wow fadeInRight">
                    <h1 class="title_page mb-lg-3 pb-2 mb-3">{{ product.productName}}</h1>
                   
                    <div class="box_specs">
                        <div class="recond_properties">
                            <span class="key">Kích thước: </span>
                            <span class="value">{{ product.productDimensions }}</span>
                        </div>
                        <div class="recond_properties">
                            <span class="key">Chất liệu: </span>
                            <span class="value">{{ product.productMaterial }}</span>
                        </div>
                        <div class="recond_properties">
                            <span class="key">Nhà cung cấp: </span>
                            <span class="value">{{ product.productManufacturer }}</span>
                        </div>
                        <div class="description">
                            <div class="s-content">
                                <p>{{ product.ProductDescriptionShort }}</p>
                            </div>
                        </div>
                        <div class="box_price">
                            <span class="price_stock">{{ product.productOriginalPrice | formatMoney}} đ</span>
                            <span class="price_sale">{{ product.productSalePrice | formatMoney}}đ</span>
                        </div>
            
                          <div class="product-size left-to-right">
							<span class="title me-2 pe-1">Color</span>
							<div class="size-wrapper " >
                                <div v-for="(listcolo,index) in listcolor" :key="index" @click="getAmount">
                                    <!-- <div v-if="listsiz.amount <= 0" @click="selected = listsiz.size" id="cir">Size: {{ listsiz.size }}  -  Số lượng còn: {{ listsiz.amount }}</div> -->
                                     <div :style="`background-color: `+listcolo"  @click="color = listcolo" :class="{active:color == listcolo}" id="cir">Color: {{ listcolo }}</div>
                                </div>
							</div>
						</div>
                        <div class="product-size left-to-right">
							<span class="title me-2 pe-1">Size</span>
							<div class="size-wrapper " >
                                <div v-for="(listsiz,index) in listsize" :key="index" @click="getAmount">
                                    <!-- <div v-if="listsiz.amount <= 0" @click="selected = listsiz.size" id="cir">Size: {{ listsiz.size }}  -  Số lượng còn: {{ listsiz.amount }}</div> -->
                                     <div  @click="selected = listsiz" :class="{active:selected == listsiz}" id="cir">Size: {{ listsiz }}</div>
                                </div>
							</div>
						</div>
                        <div class="product-size left-to-right">
							<span class="title me-2 pe-1">Số lượng còn lại trong kho: {{nowAmount}}</span>
						</div>
                        <div class="box_action d-flex flex-wrap align-items-center">
                            <div class="box_qty">
                                <span class="title me-2 pe-1">Số lượng</span>
                                <div class="quanty change_qty" id="input_div">
                                    <button @click="minusOrder" class="inputNumberMinus moins">
                                        <img src="../../assets/content/images/minus.svg" alt="Trừ" :disabled="numberOrder==1">
                                    </button>
                                    <input type="number" name="qty" :value="numberOrder" class="qty number text-center" id="number" min="1" max="100">
                                    <button v-if="nowAmount > numberOrder" @click="plusOrder" class="inputNumberPlus plus">
                                        <img src="../../assets/content/images/plus_.svg" alt="Cộng" :disabled="numberOrder==100">
                                    </button>
                                </div>
                            </div>
                            <div></div>
                            <div class="icon-cart h-ml-15" @click="addCart">
                                <img src="../../assets/content/icon/icon-add-cart.png"  class="h-icon-cart" alt="Thêm giỏ hàng" v-if="nowAmount>0">
                            </div>
                        </div>
                        <div title="Đặt hàng ngay" class="btn_all smooth d-block btn-order-now" @click="orderNow" v-if="nowAmount>0">Đặt hàng ngay</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section_all section_details__content" v-if="product">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 mb-lg-0 mb-3">
                    <div class="box__detail_content wow fadeInUp">
                        <a-tabs default-active-key="1" @change="callback">
                            <a-tab-pane key="1" tab="Mô tả">
                                {{ product.productDescription}}
                            </a-tab-pane>
                            <a-tab-pane key="2" tab="Đánh giá và bình luận" force-render>
                                <h2>Để lại đánh giá của bạn</h2>
                                <a-rate v-model="value" />
                                <comment :id="product.productId"></comment>
                            </a-tab-pane>
                        </a-tabs>
                    </div>
                </div>
                <div class="col-lg-3 mb-lg-0 mb-3 wow fadeInUp">
                    <div class="selling-prod h-top-selling">
                        <p class="selling-prod__title pb-lg-3 pb-2 wow fadeInUp">TOP SẢN PHẨM BÁN CHẠY</p>
                        <div class="row row-cols-lg-1 row-cols-2 pb-lg-3 pb-2 gy-3">
                            <div v-for="(product,index) in productsTopSelling" :key="index" class="col selling-prod__item wow flipInX" :data-wow-delay="`${index*0.1}`+'s'" data-wow-duration="1s">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="_img-link" title="">
                                            <img v-if="product.productImage" class="_img img-fluid" :src="require('@/assets/content/images/'+ product.productImage)">
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="_link d-block mb-sm-2 mb-1">{{ product.productName}}</div>
                                       
                                        <div class="_price">
                                            <span class="_regular-price fw-bold">{{ product.productSalePrice }}đ</span>
                                            <span class="_sale-price text-decoration-line-through">{{ product.productOriginalPrice }}đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
</template>

<script>
import {
    mapActions
} from 'vuex';
import {
    ModuleProduct,ModuleAmount
} from '@/store/module-const';
import Comment from '../comment/Comment.vue'
export default {
    components: {
        comment: Comment,

    },
    data() {
        return {
            id: "",
            product: null,
            numberOrder: 1,
            productsTopSelling: [],
            order: {},
            value: 2,
            selected: 40,
            listsize:[],
            listcolor:[],
            listimg:[],
            nowAmount:100,
            color:"white",
            params: {}
        }
    },
    async created() {
        const me = this;
       
        if (me.$route && me.$route.params && me.$route.params.id) {
            let res = await me.getProductById(me.$route.params.id);
            if (res) {
                me.product = {
                    ...res
                };
                me.order = {
                    product: me.product,
                    amount: me.numberOrder,
                    size: me.selected,
                    color: me.color,
                }
            }
        }
        // lấy 5 sản phẩm bán chạy nhất
        let products = await me.getProductsTopSelling(5);
        if (products) {
            me.productsTopSelling = [...products];
        }
        if (me.$route && me.$route.params && me.$route.params.id) {
            let resp = await me.getSizeProductById(me.$route.params.id);
                if(resp){
                    me.listsize = [...resp];
                
                }
            let resp1 = await me.getColorProductById(me.$route.params.id);
                if(resp1){
                    me.listcolor = [...resp1];
                }
                // for (let index = 0; index < me.listsize.length; index++) {
                //     me.listsize.push(false)}
              let resp2 = await me.getImgProductById(me.$route.params.id);
                if(resp2){
                    me.listimg = [...resp2];
                }
        }

    },
    methods: {
        ...mapActions(ModuleProduct, ['getProductById', 'getProductsTopSelling']),
        ...mapActions(ModuleAmount, ['getAmountsById','getColorProductById','getSizeProductById','getImgProductById']),
        ...mapActions(["getCartByUser"]),
        
        callback(key) {
            console.log(key);
        },
     
        /**
         * Hàm sử lí cộng sản phẩm vào giỏ hàng
         */
        plusOrder() {
            const me = this;
            if (me.numberOrder < 100) {
                me.numberOrder += 1;
            }
            me.order = {
                product: me.product,
                amount: me.numberOrder,
                size: me.selected,
                 color: me.color
            }
        },
        /**
         * Hàm sử lí trừ sản phẩm vào giỏ hàng
         */
        minusOrder() {
            const me = this;
            if (me.numberOrder > 1) {
                me.numberOrder -= 1;
            }
            me.order = {
                product: me.product,
                amount: me.numberOrder,
                size: me.selected,
                color: me.color
            }
        },

        /**
         * Hàm sử lí việc thêm giỏ hàng
         */
        async addCart() {
            const me = this;
            let userName = me.$commonFunc.getUserName()
          
            if (userName) {
                me.$commonFunc.addCart(userName, me.order);
                //load lại giỏ hàng
                await me.getCartByUser(userName);
                console.log(me.order)
            } else {
                me.$router.push("/login");
            }
        },

        /**
         * Hàm sử lí việc đặt hàng ngay
         */
        orderNow() {
            const me = this;
            if (me.$commonFunc.getUserName()){
                me.order.selected = true;
                console.log(me.selected)
                console.log(me.color)
                me.$commonFunc.addCart(me.$commonFunc.getUserName(), me.order);
                me.$router.push("/cart-pay");
            }
                
        },
        async getAmount(){
            const me = this;
             console.log(me.$route.params.id)
             console.log(me.color)
             console.log(me.selected)
            me.params={
                productId: me.$route.params.id,
                color: me.color,
                size: me.selected
            }
            try {
                 let resp2 = await me.getAmountsById(me.params);
                console.log(resp2)
                    if(resp2){
                        me.nowAmount = resp2;
                        console.log(me.nowAmount)
                    }
            } catch (error) {
                    me.nowAmount = 0
            }
        }
           
               

    }
}
</script>

<style scoped>
.product-detail {
    margin-top: 30px;
}

.icon-cart {
    cursor: pointer;
}

.btn-order-now {
    cursor: pointer;
}

.btn-order-now:hover {
    background: orange !important;
}

.h-top-selling {
    min-width: 300px;
    max-width: 300px;
}
.icon-hover:hover{
    background:orange;
}
.h-icon-cart:hover{
    box-shadow: 2px 2px 2px #e5e5e5;
    border-radius:4px;
}

.size-wrapper {
	display: flex;
	padding: 5px;
}

.size-wrapper div #cir {
	font-weight: 900;
	margin: 5px;
	width: 100px;
	height: 100px;
	border-radius: 50%;
	padding: 13px;
	border: 2px solid silver;
	color: silver;
}

.size-wrapper div  #cir.active {
	border: 2px solid black;
	color: black;
}

.size-wrapper div:hover #cir{
        border: 2px solid black;
        color: black;
        cursor: pointer;
}
    


</style>
