const express=require('express')
const router=express.Router()

const trangchuController=require('../app/controllers/TrangChuController')

router.get('/', trangchuController.trangchu)
router.post('/', trangchuController.trangchuData)

module.exports = router