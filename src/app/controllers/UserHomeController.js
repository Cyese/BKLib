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


const account=require('../models/accountdb')
class UserHomeController{
    index(req, res, next){
        // account.find({})
        // .then(collections => {
        //     collections = collections.map(collection => collection.toObject())
            
        // })
        // .catch(next)
        const query = req.query
        res.render('home', {query})
    }
}

module.exports = new UserHomeController