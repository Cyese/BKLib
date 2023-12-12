const express=require('express')
const router=express.Router()

const userHomeController=require('../app/controllers/UserHomeController')

router.get('/', userHomeController.index);
router.post('/', userHomeController.indexData);
router.post('/booklist', userHomeController.booklist);

module.exports = router