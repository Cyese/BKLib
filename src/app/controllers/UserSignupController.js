const collection=require('../../mongodb')

class UserSignupController{
    signup(req, res){
        res.render('signup')
    }
    async usersignup(req, res){
        const data={
            name: req.body.name,
            email:req.body.email,
            password: req.body.password,
            passwordCheck: req.body.passwordCheck,
            is_admin: 0
            }
    
        const checkNameExist = await collection.findOne({name:req.body.name})
        if(checkNameExist!=null){
            if(req.body.name===checkNameExist.name){
                res.render('signup', {message:"Username is not allowed"})
            }
            else{
                if(data.password===data.passwordCheck){
                    await collection.insertMany([data])
                    res.redirect('login')
                }
                else{
                    res.render('signup', {message:"Your re-password is not correct"})
                }
            }
        }
        else{
            if(data.password===data.passwordCheck){
                await collection.insertMany([data])
                res.render('home')
            }
            else{
                res.render('signup', {message:"Your re-password is not correct"})
            }
        }
    }
}

module.exports = new UserSignupController