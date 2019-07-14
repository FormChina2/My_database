<template>
   <div>
       <div class="list-content"
            v-for="(item,index) of list"
            :key="index"
       >
       <div class="list-item-icon border-bottom">
           <span class="icon-span"></span>
           {{item.title}}
           <list v-if="item.children"
                :list="item.children"
                class="icon-span-2"
           >
              {{list}}
           </list>
       </div>
       </div>
   </div>
</template>

<script> 
export default {
    name:'List',
    props:{
        list:Array
    }
}
</script>

<style lang="stylus" scoped>
    .icon-span
      position: relative
      left: .06rem
      top: .06rem
      display: inline-block
      width: .36rem
      height: .36rem
      background: url(http://s.qunarzz.com/piao/image/touch/sight/detail.png) 0 -.45rem no-repeat
      margin-right: .1rem
      background-size: .4rem 3rem
    .list-item-icon
      line-height .8rem
      font-size .32rem
      padding 0 .2rem
      .icon-span-2
        padding 0 .2rem
</style>
