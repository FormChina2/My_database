const recommendList = require('../controller/recommendList')

async function list() {
    let data = await recommendList()
    console.log(data)
}

list()