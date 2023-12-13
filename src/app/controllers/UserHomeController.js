// const Library = require('./Library')
const book = require('../models/book')
const user = require('../models/user')
class UserHomeController{
    async index(req, res, next){
        const result = await book.loadByCatergory('Khoa hoc') 
        if (req.session.info){
            const list = req.session.list;
            const info = req.session.info;
            req.session.list = null;
            req.session.info = null;
            res.render('home', {list : list, name: req.session.name, info : info})
        } else{
            res.render('home', {Books : result, name: req.session.name, id : req.session.user})
        }
    }
    async indexData(req, res, next){
        const category = req.body.category
        const result = await book.loadByCatergory(category) 
        if (req.session.id){
            res.render('home', {Books : result, name: req.session.name})
        }
        else {
            res.render('home', {Books : result})
        }
    }
    async booklist(req,res,next){
        const id = req.body.id;
        const {list, info} = await book.getBookLocation(id);
        req.session.list = list;
        req.session.info = info;
        res.redirect('/home');
    }
    
    async history(req,res,next){
        const id = req.session.user;
        const result = await user.getPointHisory(id);
        // console.log(result);
        res.render('history', {name: req.session.name,history : result});
    }
    async search(req, res, next){
        const string = req.body.item;
        // console.log(string);
        const result = await book.search(string);
        // console.log(result);
        res.render('home', {search : result, name: req.session.name});

    }
    async feedback(req, res, next){
        const id = req.session.user;
        const result = await user.getPointHisory(id);
        // console.log(result);
        res.render('history', {name: req.session.name,history : result});
    }
}

module.exports = new UserHomeController