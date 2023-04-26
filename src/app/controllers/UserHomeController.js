const account=require('../models/accountdb')

class UserHomeController{
    index(req, res, next){
        account.find({})
        .then(collections => {
            collections = collections.map(collection => collection.toObject())
            res.render('home', {collections})
        })
        .catch(next)
    }
}

module.exports = new UserHomeController