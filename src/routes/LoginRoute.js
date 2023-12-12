const express=require('express')
const router=express.Router()

const userLoginController=require('../app/controllers/LoginController')

router.post('/', userLoginController.userLogin)
router.get('/', userLoginController.login)


module.exports = router