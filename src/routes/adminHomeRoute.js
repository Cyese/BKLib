const express=require('express')
const router=express.Router()

const adminHomeController=require('../app/controllers/AdminHomeController')


// router.delete('/account/:id', adminHomeController.destroy)
// router.get('/book', adminHomeController.bookManage)
// router.delete('/book/:id', adminHomeController.bookModify)

router.get('/createreceipt', adminHomeController.getCreateReceipt)
router.get('/receipt', adminHomeController.getReceipt)
router.get('/account', adminHomeController.accountManage)
router.get('/book', adminHomeController.getBook)
router.get('/', adminHomeController.index)


module.exports = router