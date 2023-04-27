const Library = require('./Library.js')
class TrangChuController{

    trangchu(req, res){
        res.render('trangchu')
    }
}

module.exports = new TrangChuController