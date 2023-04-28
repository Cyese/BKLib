const express=require('express')
const router=express.Router()

const adminHomeController=require('../app/controllers/AdminHomeController')

router.delete('/account/:id', adminHomeController.destroy)
router.get('/book', adminHomeController.bookManage)
router.delete('/book/:id', adminHomeController.bookModify)
router.get('/account', adminHomeController.accountManage)

router.get('/book/create', adminHomeController.addBook)
router.get('/', adminHomeController.index)


module.exports = router