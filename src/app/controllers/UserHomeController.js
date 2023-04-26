const account=require('../models/accountdb')
// const library=require('../../librabry')

class UserHomeController{
    async index(req, res){
        // account.find({})
        // .then(collections => {
        //     collections = collections.map(collection => collection.toObject())
        //     res.render('home', {collections})
        // })
        // .catch(next)

        res.render('home', {
            layout: 'user'
        })
    }
}

module.exports = new UserHomeController