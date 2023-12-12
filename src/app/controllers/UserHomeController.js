// const Library = require('./Library')
const book = require('../models/book')
const user = require('../models/user')
class UserHomeController{
    async index(req, res, next){
        const result = await book.loadByCatergory('Khoa hoc') 
        if (req.session.id){
            res.render('home', {Books : result, name: req.session.name})
        }
        else {
            res.render('home', {Books : result})
        }
    }
    async indexData(req, res, next){
        const category = req.body.category
        const result = await book.loadByCatergory(category) 
        if (req.session.id){
            res.render('home', {Books : result, name: req.session.user})
        }
        else {
            res.render('home', {Books : result})
        }
    }
}

module.exports = new UserHomeController