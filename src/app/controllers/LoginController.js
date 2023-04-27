const collection=require('../models/accountdb')

class UserLoginController{
    login(req, res){
        res.render('login', {
            layout: 'LoginSignup'
        })
    }
    async userLogin(req, res, next){
        try{
            const check=await collection.findOne({name:req.body.name})
            if(check.password===req.body.password){
                if(check.is_admin === true){
                    res.redirect('adminhome')
                }
                else{
                    res.redirect('home?name=' + req.body.name)
                }
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