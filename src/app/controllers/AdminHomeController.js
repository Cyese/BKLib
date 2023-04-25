
class AdminHomeController{

    index(req, res){
        res.render('adminhome')
    }

}

module.exports = new AdminHomeController