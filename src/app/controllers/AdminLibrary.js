const Book = require('../models/book')
const Library = require('./Library')


class adminLibrary extends Library {
    static setType = (title, type) => {
        Book.findOneAndUpdate({title : title}, {$set : {type : type}},(err,doc) => {
            if (err) throw err})
    }
    static modifyData = (title, target, data) => {
        const updateObj = {}
        updateObj[target] = data
        Book.findOne({title : title}, updateObj, (err,doc) => {
            if (err) throw err
        }) 
    }
    static getBorrowingList = (title) => {
        return Book.findOne({title: title}).then($borrowList)
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