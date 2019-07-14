const router = require('koa-router')()
const city_json = require('../controller/data_city')
const { SuccessModel, ErrorModel } = require('../model/resModel')
const recommendlist = require('../controller/recommendList')

router.get('/api/city', async (ctx, next) => {
    ctx.set('Access-Control-Allow-Origin', 'http://127.0.0.1:8080')
    ctx.body = new SuccessModel(city_json)
})

router.get('/api/recommendList', async(ctx, next) => {
    let data = await recommendlist()
    ctx.set('Access-Control-Allow-Origin', 'http://127.0.0.1:8080')
    ctx.body = new SuccessModel(data)
})

module.exports = router