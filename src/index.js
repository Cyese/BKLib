const path = require('path')
const express = require('express')
const morgan = require('morgan')
const exphbs = require('express-handlebars').engine
const collection=require('./app/models/accountdb')
const app = express()
const port = 3000

const route=require('./routes/index')

app.use(express.static(path.join(__dirname, 'public')))
app.use(express.urlencoded({
  extended : true
}))

// HTTP logger
app.use(morgan('combined'))

//Template engine
app.engine('hbs', exphbs({
  extname: '.hbs',
  helpers:{
    sum: (a, b) => a+b,
  }
}))
app.set('view engine', 'hbs')
app.set('views', path.join(__dirname, 'resource/views'))

// Routes
route(app)
// userRoute(app)
// adminRoute(app)

// app.post('/signup',async (req, res) => {
//   const data={
//     name: req.body.name,
//     password: req.body.password,
//     passwordCheck: req.body.passwordCheck
//   }

//     const checkNameExist = await collection.findOne({name:req.body.name})
//     if(checkNameExist!=null){
//       if(req.body.name===checkNameExist.name){
//         res.send("Account is existed")
//       }
//       else{
//         if(data.password===data.passwordCheck){
//           await collection.insertMany([data])
//           res.redirect('login')
//         }
//         else{
//           res.send("Wrong re-password")
//         }
//       }
//     }
//     else{
//       if(data.password===data.passwordCheck){
//         await collection.insertMany([data])
//         res.render('home')
//       }
//       else{
//         res.send("Wrong re-password")
//       }
//     }
    
    
// })

// app.post('/login',async (req, res) => {
//   try{
//     const check=await collection.findOne({name:req.body.name})
//     if(check.password===req.body.password){
//       res.redirect('home')
//     }
//     else{
//       res.send("Wrong password")
//     }
//   }
//   catch{
//     res.send("Wrong account")
//   }
// })

// app.post('/home'), async (req, res) => {
//   req.session.destroy()
//   res.render('trang chu')
// }

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})