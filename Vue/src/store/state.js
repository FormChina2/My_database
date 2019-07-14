let dataCity = '上海'
try {
    if(localStorage.city){
        dataCity = localStorage.city
    }
    }catch (error){
         alert('出现错误');
    }
    export default {
        city:dataCity
    }