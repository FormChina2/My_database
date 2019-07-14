<template>
 <ul class="list">
   <li class="item"  
       v-for="item of lettero"
       :key='item'
       :ref='item'
       @click='hangleLetterClick'
       @touchstart.prevent='handleTouchStart'
       @touchmove='handleTouchMove'
       @touchend='handleTouchEnd'
       >
       {{item}}
   </li>
   
 </ul>
</template>

<script>


// import axios from 'axios'

export default {
  name: 'CityAlphabet',
  props:{
    cities:Object
  },
  data () {
    return{
    touch:false,
    startY:0,
    timer:null
    } 
  },
  updated(){
    this.startY = this.$refs['A'][0].offsetTop 
    console.log(this.startY)
  },
  computed:{
    lettero () {
         const letters = []
         for(let i in this.cities){
           letters.push(i)
//           返回的是对象的键值
           console.log(i)
          
         }
    
          return letters
//          把数组赋予给lettero
      }
  },
  methods:{ 
    hangleLetterClick(e){
      
      this.$emit('change', e.target.innerText)
    },
    handleTouchStart(){
      this.touch = true
    }, 
    handleTouchMove(e){
      if(this.touch){
        if(this.timer){
          clearTimeout(this.timer)
        }
        this.timer = setTimeout(() =>{
          const touchY = e.touches[0].clientY - 79
          const index = Math.floor((touchY - this.startY) / 20)
          if(index >= 0 && index < this.lettero.length){
          this.$emit('change',this.lettero[index])
          }
        },16)
        
      }
    },
    handleTouchEnd(){
      this.touch = false
    }
  }
}
</script>

<style lang="stylus" scoped>
  @import '~styles/varibles.styl'
  .list
    position fixed
    top 1.58rem
    right 0
    bottom 0
    width .4rem
    display flex
    flex-direction column
    justify-content center
    .item
      text-align center
      line-height .4rem
      color $bgColor
</style>