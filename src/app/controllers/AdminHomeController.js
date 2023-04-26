const { multipleToObject } = require('../../util/mongoose')
const account=require('../models/accountdb')

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

    bookManage(req, res){
        res.render('bookManage', {
            layout: 'admin'
        })
    }

}

module.exports = new AdminHomeController