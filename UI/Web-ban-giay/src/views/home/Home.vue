<template>
<div>
    <div class="section_slide has_pagi">
        <div class="swiper-container slide_home">
            <div class="swiper-wrapper">
                <swiper loop :autoplay= 5000 :pagination-clickable="true" :tab-mode-animation="true" > 
                    <div class="swiper-slide">
                        <div class="box_slide text-center">
                            <p class="slide_title wow fadeInLeft">{{ $t('i18nHome.FeaturedContent')}}</p>
                            <div :title="$t('i18nHome.BuyNow' )" class="slide_now d-inline-block smooth btn_all wow fadeInUp" @click="buyNow">{{ $t('i18nHome.BuyNow' )}}</div>
                        </div>
                        <img src="../../assets/content/images/slide3.jpg" class="img-fluid">
                    </div>
                      <div class="swiper-slide" >
                        <div class="box_slide text-center">
                            <p class="slide_title wow fadeInLeft">{{ $t('i18nHome.FeaturedContent')}}</p>
                            <div :title="$t('i18nHome.BuyNow' )" class="slide_now d-inline-block smooth btn_all wow fadeInUp" @click="buyNow">{{ $t('i18nHome.BuyNow' )}}</div>
                        </div>
                        <img src="../../assets/content/images/slide3.jpg" class="img-fluid">
                    </div>
                </swiper>
            </div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
    <div class="section_category__hot section_all">
        <div class="title_all">
            <p class="title_lg wow fadeInUp">{{ $t('i18nHome.Category')}}</p>
        </div>
        <div class="container">
            <div class="row overflow-hidden">
                <div class="col-4 pt-2" v-for="(data,index) in productCategoriesHome" :key="index">
                    <div class="h-categories" @click="viewCategory(data.productCategoryId)">
                        <div class="item_category wow fadeInLeft" >
                            <div title="" class="d-block img">
                                <img :src="require('@/assets/content/images/'+ data.productCategoryImage)" alt="" class="img-fluid">
                            </div>
                            <div class="box_content">
                                <div class="center">
                                    <a class="d-block name" title="">{{data.productCategoryName}}</a>
                                    <div class="d-block short">{{data.productCategoryDescription}}</div>
                                </div>
                                <div class="d-block view_more" title="">
                                    Mua sắm ngay bây giờ
                                    <img src="../../assets/content/images/arrow-right.svg" alt="Xem thêm" class="ms-2">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
    <div class="section_sale section_all">
        <div class="container">
            <div class="row overflow-hidden">
                <div class="col-lg-6 col-12 mb-lg-0 mb-3 border-hover">
                    <a href="" title="" class="d-block banner_sale">
                        <img src="../../assets/content/images/banner10.jpg" alt="" class="img-fluid">
                    </a>
                </div>
                <div class="col-lg-6 col-12 mb-lg-0 mb-3 border-hover">
                    <a href="" title="" class="d-block banner_sale">
                        <img src="../../assets/content/images/banner11.jpg" alt="" class="img-fluid">
                    </a>
                </div>
            </div>
        </div>
    </div>

  
    <div class="section_all section_project">
        <div class="title_all">
          
            <p class="title_lg wow fadeInUp">DỰ ÁN NỔI BẬT</p>
        </div>
        <div class="container">
            <div class="row">
                <div  v-for="(data,index) in projectsHome" :key="index" class="col-md-6 col-12 mb-lg-4 mb-3" >
                    <div class="item_project wow pulse" :data-wow-delay="`${index*0.1}`+'s'" data-wow-duration="2.5s" @click="viewProject(data.projectId)">
                        <div class="img">
                            <img :src="require('@/assets/content/images/'+data.linkImage)" alt="" class="img-fluid">
                            <div class="box_content">
                                <div class="short">
                                    {{ data.projectContent }}
                                </div>
                            </div>
                            <router-link to="/product-detail" title="" class="d-inline-block smooth btn_all">XEM CHI TIẾT</router-link>
                        </div>
                        <a href="" title="" class="d-block smooth name">{{data.projectTitle}}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <div class="title_all">
            <p class="title_lg wow fadeInUp">THƯƠNG HIỆU TÀI TRỢ</p>
        </div>
    <swiper class="swiper" :options="swiperOption">
    <swiper-slide> <img src="../../assets/content/images/addidas.png" class="img-fluid"></swiper-slide>
    <swiper-slide><img src="../../assets/content/images/converse.png" class="img-fluid"></swiper-slide>
    <swiper-slide><img src="../../assets/content/images/loai-sp-gucci.png" class="img-fluid"></swiper-slide>
    <swiper-slide><img src="../../assets/content/images/loai-sp-louis-vuitton.jpg" class="img-fluid"></swiper-slide>
    <swiper-slide><img src="../../assets/content/images/nike.png" class="img-fluid"></swiper-slide>
    <swiper-slide><img src="../../assets/content/images/puma.png" class="img-fluid"></swiper-slide>
    <swiper-slide><img src="../../assets/content/images/loai-sp-varsace.png" class="img-fluid"></swiper-slide>
    <div class="swiper-pagination" slot="pagination"></div>
  </swiper>

 

</div>
</template>

<script>


import {
    mapActions
} from 'vuex';
import {ModuleProductCategory} from '@/store/module-const';
import { ModuleProject } from "@/store/module-const";
import dataFake from '@/enum/home/dataFake';
import { Swiper, SwiperSlide, directive } from 'vue-awesome-swiper'

// import style (>= Swiper 6.x)
import 'swiper/swiper-bundle.css'

export default {
    
    components: {
    Swiper,
    SwiperSlide
  },
  directives: {
    swiper: directive
  },
    async created(){
        const me = this;
        me.getData();
    },
    data() {
        return {
            textProduct : dataFake.textProduct,
            textFavorites: dataFake.textFavorites,
            url : dataFake.url,
            urlImgCollection : [
                ""
            ],
            indexShow : 0,
            users : [],
            productCategoriesHome : [],
            projectsHome : [],
            newsHome : [],

           swiperOption: {
          slidesPerView: 5.5,
          spaceBetween: 20,
          pagination: {
            el: '.swiper-pagination',
            clickable: true
          }
        }
        }
    },
  
    methods:{
        ...mapActions(ModuleProductCategory,['getProductCategoriesHome']),
        ...mapActions(ModuleProject,['getProjectsHome']),
       
        async getData(){
            const me = this;
            me.productCategoriesHome = await me.getProductCategoriesHome();
            me.projectsHome = await me.getProjectsHome();
          
        },

        /**
         * Click button lùi (bên trái)
         * danh mục yêu thích
         */
        clickPrevImageFavorites(){
            let me = this;
            me.$refs.swiperFavorites.prev();
        },
        /**
         * Click button dịch ảnh kế tiếp (bên phải)
         * trong danh danh mục yêu thích
         */
        clickNextImageFavorites(){
            let me = this;
            me.$refs.swiperFavorites.next();
        },

        viewCategory(id){
            const me = this;
            me.$router.push(`/category/${id}`);
        },
        
        viewProject(id){
            const me = this;
            me.$router.push(`/project-detail/${id}`);
        },
      
        buyNow(){
            const me = this;
            me.$router.push(`/category`);
        }
    }

}
</script>

<style scoped>

</style>
