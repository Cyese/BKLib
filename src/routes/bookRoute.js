const express=require('express')
const router=express.Router()

const book=require('../app/controllers/bookController')

router.post('/store', book.store)
router.get('/create', book.create)
router.get('/', book.index)


module.exports = router