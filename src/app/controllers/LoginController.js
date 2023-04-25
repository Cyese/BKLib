const collection=require('../models/accountdb')

class UserLoginController{
    login(req, res){
        res.render('login')
    }
    async userLogin(req, res, next){
        try{
            const check=await collection.findOne({name:req.body.name})
            if(check.password===req.body.password){
                if(check.is_admin === true){
                    res.redirect('adminhome')
                }
                else{
                    // collection.findOne({name : req.body.name})
                    // .then(obj => res.render('home', {name : obj.name}))
                    // .catch(next)
                    // res.redirect('home')
                    res.redirect('home')
                }
            }
            else{
                res.render('login', {message:"Wrong password"})
            }
        }
        catch{
            res.render('login', {message:"Wrong username"})
        }
    }
}

module.exports = new UserLoginController