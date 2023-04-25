const collection=require('../../mongodb')

class UserLoginController{
    login(req, res){
        res.render('login')
    }
    async userLogin(req, res){
        try{
            const check=await collection.findOne({name:req.body.name})
            if(check.password===req.body.password){
                res.redirect('home')
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