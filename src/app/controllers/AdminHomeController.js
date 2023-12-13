// const account=require('../models/old/accountdb')
const Receipt = require('../models/receipt');
// const book=require('../models/old/book')
// const Library = require('./Library')
class AdminHomeController{
    index(req, res){
        res.render('adminhome', {
            layout: 'admin'
        })
    }

    // accountManage(req, res, next){
    //    account.find({})
    //         .then(accounts => {
    //             res.render('accountManage', {
    //                 layout: 'admin',
    //                 accounts: multipleToObject(accounts)
    //             })
    //         })
    //         .catch(next)
    // }

    // destroy(req, res, next){
    //     account.deleteOne({_id: req.params.id})
    //         .then(() => res.redirect('back'))
    //         .catch(next)
    // }

    // bookManage(req, res, next){
    //     book.find({})
    //         .then(books => {
    //             res.render('bookManage', {
    //                 layout: 'admin',
    //                 books: multipleToObject(books)
    //             })
    //         })
    //         .catch(next)
    // }
    // bookModify(req, res, next){
    //     book.deleteOne({_id: req.params.id})
    //         .then(() => res.redirect('back'))
    //         .catch(next)
    // }
    // async bookModify(req, res, next){
    //     book.deleteOne({_id: req.params.id})
    //         .then(() => res.redirect('back'))
    //         .catch(next)
    // }

    // async addBook(req,res){
    //     const Book = new book({
    //         title : req.query.title, 
    //         author:  req.query.author,  
    //         publishYear : req.query.publishYear, 
    //         type :req.query.type,
    //         quantity : 1,
    //         available :1
    //     })
    //     await Book.save().then(
    //         res.redirect('/adminhome/book')
    //     )
    // }

    async getReceipt(req, res, next){
        const result = await Receipt.loadReceipt();
        // console.log(Receipt.loadReceipt());
        res.render('receipt', {Receipts: result});
    }

    async getCreateReceipt(req, res, next){
        res.render('createreceipt');
    }

    // async createReceipt(req, res, next){
        
    // }

}

module.exports = new AdminHomeController