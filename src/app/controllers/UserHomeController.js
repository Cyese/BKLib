// const account=require('../models/accountdb')
// class UserHomeController{
//     index(req, res, next){
//         // account.find({})
//         // .then(collections => {
//         //     collections = collections.map(collection => collection.toObject())
//         //     res.render('home', {collections})
//         // })
//         // .catch(next)

//         res.render('home', {
//             layout: 'user'
//         })
//     }
// }

// module.exports = new UserHomeController


const Library = require('./Library')
class UserHomeController{
    async index(req, res, next){
        const query = req.query
        const Books = await Library.sortByType('Novel')
        res.render('home', {query, Books : Books})
    }
}

module.exports = new UserHomeController