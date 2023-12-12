const express = require('express')
const router = express.Router()
const Book = require ('../models/book')

class Library {
    addDescription = (title, description) => {
        Book.findOneAndUpdate({title: title}, {$set : {description : description}}, (err,doc) => {if (err) throw err})
    }
    addBook = (title, author, publishYear, type = 'Novel' ) => {
        if (Book.find({title :title})!== undefined){
        }
        else {
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
    }
    sortByType = (atype) => {
        if (!atype)
        {
            return Book.find({}).limit(12).then((book) => 
            {
                book = book.map(book => book.toObject())
                return book
            })
        }
        return Book.find({type : atype}).limit(12).then((book) => 
            {
                book = book.map(book => book.toObject())
                return book
            })
    }
    borrowBook = (title, username) => {
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
    returnBook = (title, username) => {
        Book.findOneAndUpdate({title :title}, 
            {$inc : {available : 1}},
            {$pop : {borrowList : {name : username}}},
            (err, doc) => {if (err) throw err} 
        )
    }
}
const library = new Library
module.exports= library
