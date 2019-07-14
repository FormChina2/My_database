<template>
  <div>
    <banner :bannerImg="bannerImg"
            :sightName="sightName"
            :gallaryImgs="gallaryImgs"
    >
    </banner>
    <detail-header></detail-header>
    <div class="content">
      <list :list="list">

      </list>
      
    </div>
  </div>
</template>
<script>
import Banner from './components/Banner'
import DetailHeader from './components/Header'
import List from './components/List'
import axios from 'axios'
export default {
    name:'Detail',
    components:{
      Banner,
      DetailHeader,
      List
      
    },
    data(){
      return{
         sightName:'',
         bannerImg:'',
         gallaryImgs:[],
         list:[]
      }
    },
    mounted(){
      this.getData()
    },
    methods:{
      getData(){
        axios.get('/static/mock/detail.json',{
          params:{
            id:this.$route.params.id
          }
        }).then(this.handleDatail)
      },
      handleDatail(res){  
        console.log(res)
        var res = res.data
        if(res.ret && res.data){
          const data = res.data
        this.sightName = data.sightName
        this.bannerImg = data.bannerImg
        this.gallaryImgs = data.gallaryImgs
        this.list = data.categoryList
       }


      }
    }
}
</script>

<style lang="stylus" scoped>
     .content
       height 15rem
</style>
