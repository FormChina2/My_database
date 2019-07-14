class BaseModel {
    constructor(data, message) { 
        if(typeof data === 'string') {
            this.message = data
            data = null
            message = null 
        }
        if(data) {
            this.data = data
        }
        if(message) {
            this.message = message
        }
    }
}

class SuccessModel extends BaseModel {  // http请求成功返回的数据
    constructor(data, message) { 
        super(data, message)
        this.errno = 0
    }
}

class ErrorModel extends BaseModel { //    http请求失败返回的数据
    constructor(data, message) {
        super(data, message)
        this.errno = -1
    }
}

module.exports = {
    SuccessModel,
    ErrorModel
}