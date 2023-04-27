const Library = require('./Library')
const account=require('../models/accountdb')

class UserHomeController{
    async index(req, res, next){
        const query = req.query
        const Books = await Library.sortByType('Novel')
        res.render('home', {query, Books : Books})
    }
}

module.exports = new UserHomeController