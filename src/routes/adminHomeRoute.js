const express=require('express')
const router=express.Router()

const adminHomeController=require('../app/controllers/AdminHomeController')

router.get('/book', adminHomeController.bookManage)
router.get('/account', adminHomeController.accountManage)

router.get('/book/create', adminHomeController.addBook)
router.get('/', adminHomeController.index)


module.exports = router