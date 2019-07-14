<template>
 <div class="header">
     <router-link to='/'>
     <div class="iconfont header-back">&#xe624;</div>
     </router-link>
     城市选择
 </div>
</template>

<script>


// import axios from 'axios'

export default {
  name: 'CityHeader',
}
</script>

<style lang="stylus" scoped>
  @import '~styles/varibles.styl'
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
</style>
