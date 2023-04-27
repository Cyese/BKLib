const { multipleToObject } = require('../../util/mongoose')
const account=require('../models/accountdb')
const book=require('../models/book')

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

}

module.exports = new AdminHomeController