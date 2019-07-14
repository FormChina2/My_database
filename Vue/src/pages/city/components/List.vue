<template>
 <div class="list" ref="wrapper">
    <div>
     <div class="area">
         <div class="title border-topbottom">当前城市</div>
         <div class="button-list">
             <div class="button-wrapper">
             <div class="button">{{this.cs}}</div>
             </div>
         </div>
     </div>

      <div class="area">
         <div class="title border-topbottom">热门城市</div>
         <div class="button-list">
             <div class="button-wrapper" 
                  v-for="item of hot" 
                  :key="item.id"
                  @click="handleCityClick(item.name)"
              >
             <div class="button">{{item.name}}</div>
             </div>
         </div>
     </div>

     <div class="area" 
          v-for="(item,key) of cities"
          :key='key'
          :ref='key'
          >
         <div class="title  border-topbottom">{{key}}</div>
         <div class="item-list" 
              v-for='item of item'
              :key='item.id'
              
         >
           <div class="item border-bottom"
                @click="handleCityClick(item.name)"
           >
             {{item.name}}
             </div>
           
         </div>

         
     </div>
    </div>
 </div>
</template>

<script>


// import axios from 'axios'
import Bscroll from 'better-scroll'
import { mapState, mapMutations } from 'vuex';
export default {
  
  name: 'CityList',
  computed:{
    ...mapState({
      cs:'city'
    })
  },
  props:{
     hot:Array,
     cities:Object,
     letter:String
  },
  methods:{
    handleCityClick(city){
      // this.$store.commit('changeCity', city)原来的
      this.changeCity(city)
      this.$router.push('/')
    },
    ...mapMutations(['changeCity'])
  },
  mounted(){
     this.scroll = new Bscroll(this.$refs.wrapper)
     
  },
  watch:{
     letter(){
       if(this.letter){
         const element = this.$refs[this.letter][0]
         this.scroll.scrollToElement(element)
       }
       
     }
  }
}
</script>

<style lang="stylus" scoped>
  @import '~styles/varibles.styl'
  
  .border-topbottom
    &:before
      border-color #cccccc
    &:after
      border-color #cccccc
  .border-bottom
    &:before
      border-color #cccccc
    &:after
      border-color #cccccc
.list
  position absolute
  top 1.58rem
  left 0
  right 0
  bottom 0
  overflow hidden
  .title
    line-height :.54rem
    background :#eee
    padding-left :.2rem
    color #666
    font-size .26rem
  .button-list
    overflow hidden
    padding .1rem .6rem .1rem .1rem
    .button-wrapper
      float left 
      width 33.33%
    .button
      margin .1rem
      padding .1rem 0
      text-align center
      border .02rem solid #ccc
      border-radius .06rem 
      font-family "微软雅黑"
  .item-list
    .item 
      line-height .76rem
      color #666
      padding-left .4rem
</style>