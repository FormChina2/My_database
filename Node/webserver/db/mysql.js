const mysql = require('mysql')
const MYSQL_CONF = require('../conf/db')

const result = mysql.createConnection(MYSQL_CONF)

result.connect()

function exec(sql) {
    const promise = new Promise((resolve, reject) => {
        result.query(sql, (err, result) => {
            if(err) {
                reject(err)
                return
            }
            resolve(result)
        })
    })
    return promise
}

module.exports = {
    exec
}