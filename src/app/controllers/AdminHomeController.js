const { multipleToObject } = require('../../util/mongoose')
const account=require('../models/accountdb')
const book=require('../models/book')
const Library = require('./Library')
class AdminHomeController{
    index(req, res){
        res.render('adminhome', {
            layout: 'admin'
        })
    }

    accountManage(req, res, next){
       account.find({})
            .then(accounts => {
                res.render('accountManage', {
                    layout: 'admin',
                    accounts: multipleToObject(accounts)
                })
            })
            .catch(next)
    }

    destroy(req, res, next){
        account.deleteOne({_id: req.params.id})
            .then(() => res.redirect('back'))
            .catch(next)
    }

    bookManage(req, res, next){
        book.find({})
            .then(books => {
                res.render('bookManage', {
                    layout: 'admin',
                    books: multipleToObject(books)
                })
            })
            .catch(next)
    }
    bookModify(req, res, next){
        book.deleteOne({_id: req.params.id})
            .then(() => res.redirect('back'))
            .catch(next)
    }
}

module.exports = new AdminHomeController