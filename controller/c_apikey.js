const m_api = require('../model/m_api')

async function cek_key(req,res,next) {
    let key     = req.query.key
    let getkey  = await m_api.get_one(key)
    let data    = []

    if (getkey.length > 0) {
        next()
    } else {
        data = {error: 'invalid api key'}
        res.send(data)
    }
}


module.exports = {
    cek_key
}