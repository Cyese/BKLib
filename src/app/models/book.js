const mongoose = require('mongoose'), Schema = mongoose.Schema;

// mongoose.connect("mongodb://127.0.0.1:27017/Library");

const BookSchema = new Schema({
    title : 
        { type : String,require : true},
    author : 
        { type : String, require : true},
    publishYear : Number,
    description : String,
    type : {
        type: String,
        enum: ['Novel', 'Document', 'Megazine', 'Comic']
    },
    quantity : Number,
    available : Number,
    borrowList : 
        [{ username : String,dateBorrow : Date}]
})

const Book = mongoose.model('Book', BookSchema)


module.exports=Book
