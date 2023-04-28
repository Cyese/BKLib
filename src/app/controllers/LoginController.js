const collection=require('../models/accountdb')
const bcrypt = require('bcrypt')
class UserLoginController{
    login(req, res){
        res.render('login', {
            layout: 'LoginSignup'
        })
    }
    async userLogin(req, res, next){
        try{
            const check=await collection.findOne({name:req.body.name})
            if(check!= null){
                    const correct = await bcrypt.compare(req.body.password,check.password)
                    req.session.name = check.name
                    res.redirect('home')
                }
            else{

                res.render('login', {
                    message:"Wrong username or password",
                    layout: 'LoginSignup'
                })
            }
        }
        catch{
            res.render('login', {
                message:"Wrong username or password",
                layout: 'LoginSignup'
            })
        }
    }
}

module.exports = new UserLoginController