// const collection=require('../mongodb')

// function AdminRoute(app) {
    // app.get('/adminhome', (req, res) =>{
    //     res.render('adminhome')
    // })

    // app.get('/admin', (req, res) => {
    //     res.render('adminlogin')
    // })

    // app.post('/admin',async (req, res) => {
    //     try{
    //         const check=await collection.findOne({email:req.body.email})
    //         if(check!=null){
    //             if(check.password===req.body.password){
    //                 if(check.is_admin === 0){
    //                     res.render('adminlogin', {message:"Wrong account"}) 
    //                 }
    //                 else{
    //                     res.redirect('adminhome')
    //                 }
    //             }
    //             else{
    //                 res.render('adminlogin', {message:"Wrong password"})
    //             }
    //         }
    //         else{
    //             res.render('adminlogin', {message:"Wrong email"})
    //         }
    //     }
    //     catch{
    //         res.render('adminlogin', {message:"Wrong email"})
    //     }
    // })
// }

// module.exports = AdminRoute


const express=require('express')
const router=express.Router()

const adminLoginController = require('../app/controllers/AdminLoginController')


router.post('/', adminLoginController.adminlogin)
router.get('/', adminLoginController.login)


module.exports = router