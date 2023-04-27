const express = require('express')
const router = express.Router()
const Book = require ('../models/book')

class Library {
    static addDescription = (title, description) => {
        Book.findOneAndUpdate({title: title}, {$set : {description : description}}, (err,doc) => {if (err) throw err})
    }
    static addBook = (title, author, publishYear, type = 'Novel' ) => {
        const newBook = new Book({
            title : title,
            author: author,
            publishYear: publishYear,
            type : type,
            available : 1,
            quantity : 1,
        })
        newBook.save();
    }

    static sortByType = (atype) => {
        return Book.find({type : atype}).limit(12).then((book) => 
            {
                book = book.map(book => book.toObject())
                return book
            })
    }
    static borrowBook = (title, username) => {
        const book = Book.findOne({title: title})
        if (book.info.available < 1)
            return "Unable to borrow"
        else 
            Book.findOneAndUpdate({title : title}, 
                {$inc : {available : -1}}, 
                {$push : {borrowList : {name : username, dateBorrow: Date.now}}},
                (err, doc) => {if (err) throw err}    
            )
    }
    static returnBook = (title, username) => {
        Book.findOneAndUpdate({title :title}, 
            {$inc : {available : 1}},
            {$pop : {borrowList : {name : username}}},
            (err, doc) => {if (err) throw err} 
        )
    }
}
module.exports=Library
