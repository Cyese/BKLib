
class UserHomeController{

    index(req, res){
        res.render('home')
    }
   
}

module.exports = new UserHomeController