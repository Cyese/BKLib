const { listIndexes } = require('../models/book')
const Library = require('./Library')

class TrangChuController{
    async trangchu(req, res){
        var type = req.query.type
        const Books = await Library.sortByType(type)
        res.render('index', {
            layout: 'main', 
            Books: Books
        })
    }
   
}

module.exports = new TrangChuController