const collection=require('../../mongodb')

class AdminLoginController{

    login(req, res){
        res.render('adminlogin')
    }

    async adminlogin(req, res){
        try{
            const check=await collection.findOne({email:req.body.email})
            if(check!=null){
                if(check.password===req.body.password){
                    if(check.is_admin === 0){
                        res.render('adminlogin', {message:"Wrong account"}) 
                    }
                    else{
                        res.redirect('adminhome')
                    }
                }
                else{
                    res.render('adminlogin', {message:"Wrong password"})
                }
            }
            else{
                res.render('adminlogin', {message:"Wrong email"})
            }
        }
        catch{
            res.render('adminlogin', {message:"Wrong email"})
        }
    }
}

module.exports = new AdminLoginController