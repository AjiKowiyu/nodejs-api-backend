const express       = require('express')
const app           = express()
const port          = 3000
const c_karyawan    = require('./controller/c_karyawan')
const c_apikey      = require('./controller/c_apikey')
const cek_key       = c_apikey.cek_key

app.use(express.urlencoded({extended: false}))


app.get('/karyawan/all', cek_key, c_karyawan.all )
app.get('/karyawan/detail/:id_karyawan', cek_key, c_karyawan.detail)
app.get('/karyawan/create', c_karyawan.create)
app.post('/karyawan/insert', c_karyawan.insert)
app.post('/karyawan/delete/:id_karyawan', c_karyawan.remove)
app.get('/karyawan/edit/:id_karyawan', c_karyawan.edit)
app.post('/karyawan/update/:id_karyawan', c_karyawan.update)


app.listen(port, ()=>{
    console.log('Aplikasi anda sudah siap, silakan buka http://localhost:' + port)
})