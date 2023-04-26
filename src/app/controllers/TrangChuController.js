
class TrangChuController{

    trangchu(req, res){
        res.render('trangchu', {
            layout: 'main'
        })
    }
   
}

module.exports = new TrangChuController