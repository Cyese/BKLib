const express=require('express')
const router=express.Router()

const adminHomeController=require('../app/controllers/AdminHomeController')

router.get('/book', adminHomeController.bookManage)
router.get('/account', adminHomeController.accountManage)
router.get('/', adminHomeController.index)


module.exports = router