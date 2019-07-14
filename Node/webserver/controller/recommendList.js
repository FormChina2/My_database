const { exec } = require('../db/mysql')

const getList = async () => {
    let sql = `select * from recommendlist where 1=1 and state=1 order by createtime desc`
    return await exec(sql)
}

module.exports = getList