// const collection=require('../mongodb')

// function UserRoute(app) {
//     app.get('/', (req, res) => {
//         res.render('trangchu')
//       })
      
//     app.get('/home', (req, res) => {
        
//         res.render('home')
//       })
      
//     app.get('/login', (req, res) => {
//         res.render('login')
//       })
      
//     app.get('/signup', (req, res) => {
//         res.render('signup')
//       })

//     app.post('/signup',async (req, res) => {
        // const data={
        // name: req.body.name,
        // email:req.body.email,
        // password: req.body.password,
        // passwordCheck: req.body.passwordCheck,
        // is_admin: 0
        // }

        // const checkNameExist = await collection.findOne({name:req.body.name})
        // if(checkNameExist!=null){
        // if(req.body.name===checkNameExist.name){
        //     res.render('signup', {message:"Username is not allowed"})
        // }
        // else{
        //     if(data.password===data.passwordCheck){
        //         await collection.insertMany([data])
        //         res.redirect('login')
        //     }
        //     else{
        //         res.render('signup', {message:"Your re-password is not correct"})
        //     }
        // }
        // }
        // else{
        // if(data.password===data.passwordCheck){
        //     await collection.insertMany([data])
        //     res.render('home')
        // }
        // else{
        //     res.render('signup', {message:"Your re-password is not correct"})
        // }
        // }    
//     })

//     app.post('/login',async (req, res) => {
//         try{
//             const check=await collection.findOne({name:req.body.name})
//                 if(check.password===req.body.password){
//                 res.redirect('home')
//             }
//             else{
//                 res.render('login', {message:"Wrong password"})
//             }
//         }
//         catch{
//             res.render('login', {message:"Wrong username"})
//         }
//     })

//     // app.get('/'), async (req, res) => {
//     //     req.destroy()
//     //     res.render('/login')
//     // }
// }

// module.exports = UserRoute


const express=require('express')
const router=express.Router()

const userLoginController=require('../app/controllers/LoginController')

router.post('/', userLoginController.userLogin)
router.get('/', userLoginController.login)


module.exports = router