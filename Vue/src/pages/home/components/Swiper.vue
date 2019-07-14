<template>
  <div class="wrapper">
    <swiper :options="swiperOption" v-if="list.length ">
    <!-- slides -->
    <swiper-slide v-for="item of list" :key="item.id">
       <img class="swiper-img" :src="item.imgUrl">
    </swiper-slide>
    
    
    <div class="swiper-pagination"  slot="pagination"></div>
    </swiper>
    </div>
</template>

<script>
export default {
    name: 'HomeSwiper',
     props:{
             list:Array
          },
    data () {
         
        return{
            swiperOption: {
                pagination: '.swiper-pagination',
                loop:true
            },
          
            // swiperList:[{
            //     id:'01',
            //     imgUrl:'https://img1.qunarzz.com/vc/72/7c/d4/58d70f671715c5ae74114cffa6.jpg'
            // },{
            //     id:'02',
            //     imgUrl:'https://img1.qunarzz.com/vc/72/7c/d4/58d70f671715c5ae74114cffa6.jpg'
            // }]
        }
    }
}
</script>

<style lang="stylus" scoped>
  .wrapper >>> .swiper-pagination-bullet-active
    background: #fff
  .wrapper
    overflow: hidde n
    width: 100%
    height: 0
    padding-bottom: 31.25%
    background: #eee

    .swiper-img
      width:100%
</style>