const Library = require('./Library')

class TrangChuController{
    async trangchu(req, res){
        var type = req.query.type
        if (type === undefined){
            type = 'Novel'
        } 
        const Books = await Library.sortByType('Novel')
        res.render('index', {
            layout: 'main', 
            Books: Books
        })
    }
   
}

module.exports = new TrangChuController