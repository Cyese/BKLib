const Book = require('../models/book')
const Library = require('./Library')


class adminLibrary extends Library {
    static setType = (title, type) => {
        Book.findOneAndUpdate({title : title}, {$set : {type : type}},(err,doc) => {
            if (err) throw err})
    }
    static bookList = () => {
        return Book.find({}).then((book) => 
            {
                book = book.map(book => book.toObject())
                return book
            })
    }
    static modifyData = (title, target, data) => {
        const updateObj = {}
        updateObj[target] = data
        Book.findOne({title : title}, updateObj, (err,doc) => {
            if (err) throw err
        }) 
    }
    getBorrowingList = (id) => {
        return Book.findOne({_id: id}).then((book) => {return book.borrowList})
    }
    static addBookInStorage = (title, quantity) => {
        Book.findOneAndUpdate({title: title}, 
            {$inc : {quantity : quantity}},
            {$inc : {quantity : quantity}},
            (err,doc) => {
                if (err) throw err
            }
        )
    } 
}

module.exports=adminLibrary