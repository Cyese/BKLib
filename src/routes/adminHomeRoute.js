const express=require('express')
const router=express.Router()

const adminHomeController=require('../app/controllers/AdminHomeController')

router.get('/', adminHomeController.index)


module.exports = router