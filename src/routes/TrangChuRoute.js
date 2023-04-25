const express=require('express')
const router=express.Router()

const trangchuController=require('../app/controllers/TrangChuController')

router.get('/', trangchuController.trangchu)


module.exports = router