const db = require('../config/database').db



async function get_one(key) {
    try {
        let hasil = await db.query(
            `SELECT * FROM api_access
            WHERE key = $1 AND status = 1`,
            [key]
        )
        return hasil.rows
    } catch (error) {
        return error
    }
}



module.exports = {
    get_one
}