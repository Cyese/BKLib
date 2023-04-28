const Library = require('./Library')
const account=require('../models/accountdb')

class UserHomeController{
    async index(req, res, next){
        const query = req.query
        var type = query.type 
        if (type === undefined)
            type='Novel'
        const Books = await Library.sortByType(type)
        if (req.session.name){
            res.render('home', {query, Books : Books, name: req.session.name})
        }
        else {
            res.render('home', {query, Books : Books})
        }
    }
}

module.exports = new UserHomeController