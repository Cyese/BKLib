const Library = require('./Library')

class TrangChuController{
    trangchu(req, res){
        // Library.addBook('title', 'author', 2002)
        res.render('index', {
            layout: 'main', 
        })
    }
   
}

module.exports = new TrangChuController