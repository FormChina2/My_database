<template>
    <div>
        <router-link to="/" 
                     class="header-abs"
                     tag="div"
                     v-show="whoshow"
                     >
           <div class="iconfont header-back-to">&#xe624;</div>
        </router-link>
        <div class="header-fixed" 
             v-show="!whoshow"
             :style="opacityStyle"
        >
            <div class="header">
             <router-link to='/'>
               <div class="iconfont header-back">&#xe624;</div>
             </router-link>
     景点详情
 </div></div>
    </div>
</template>
<script>

export default {
    name:'DetailHeader',
    data(){
        return{
            whoshow:true,
            opacityStyle:{
                opacity:0
            }
        }
    },
    
    methods:{
        handleScroll(){
            var height = document.documentElement.scrollTop
            if(height > 40){
                var opacity = height/100
                opacity > 1 ? opacity : 1 
                this.opacityStyle = { opacity }
                this.whoshow = false
            }else{
                this.whoshow = true
            }
        }
    },
    activated(){
        window.addEventListener('scroll',this.handleScroll)
    }
}
</script>

<style lang="stylus" scoped>
    @import '~styles/varibles.styl'
    .header-abs
      width .8rem
      height .8rem
      border-radius .4rem
      position absolute
      top .2rem
      left .2rem
      color white
      background rgba(0,0,0,.8)
    .header-fixed
      width 100%
      position fixed
      top 0
      left 0
      z-index 2
    .header 
      position :relative
      height: $headerHeight
      line-height : $headerHeight
      overflow :hidden
      text-align:center
      color :#fff
      background :$bgColor
      font-size :.32rem
      .header-back
        width:.64rem
        font-size:.4rem
        text-align:center
        position :absolute
        color :#fff
    .header-back-to
      width:.64rem
      font-size:.3rem
      text-align:center
      position :absolute
      color :#fff
      padding 0 .05rem
      line-height .8rem
</style>
