const account = require('../models/old/accountdb')
const bcrypt = require('bcrypt')
class UserSignupController{
    signup(req, res){
        res.render('signup', {
            layout: 'LoginSignup'
        })
    }
    async usersignup(req, res){
        const data={
            name: req.body.name,
            email:req.body.email,
            password: req.body.password,
            passwordCheck: req.body.passwordCheck,
            }
           
        const checkNameExist = await account.findOne({name:req.body.name})
        if(checkNameExist!=null){
            res.render('signup', {
                message:"Username is not allowed",
                layout: 'LoginSignup'
            });
        }
        else{
            if(data.password===data.passwordCheck){
                const hashedPassword = await bcrypt.hash(data.password, 10);
                data.password = hashedPassword
                const Account = new account(data)
                Account.save()
                res.redirect('login')
            }
            else{
                res.render('signup', {
                    message:"Your re-password is not correct",
                    layout: 'LoginSignup'
                })
            }
        }
    }




}

module.exports = new UserSignupController