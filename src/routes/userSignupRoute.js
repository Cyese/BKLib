const express=require('express')
const router=express.Router()

const userSignupController=require('../app/controllers/UserSignupController')

router.get('/', userSignupController.signup)
router.post('/', userSignupController.usersignup)


module.exports = router