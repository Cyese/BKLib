const book = require('../models/book')
// const Library = require('./Library')

class TrangChuController{
    async trangchu(req, res, next){
        const result = await book.loadByCatergory('Khoa hoc') 
        res.render('index', {
            // layout: 'main', 
            Books: result
        });
    }
   async trangchuData(req, res, next){
        const category = req.body.category
        const result = await book.loadByCatergory(category) 
        res.render('index', {
            // layout: 'main', 
            Books: result
        });
    }
}   

module.exports = new TrangChuController