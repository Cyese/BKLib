const express=require('express')
const router=express.Router()

const userSignupController=require('../app/controllers/SignupController')

router.get('/', userSignupController.signup)
router.post('/', userSignupController.usersignup)


module.exports = router