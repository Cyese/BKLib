const mongoose = require('mongoose')

// mongoose.connect("mongodb+srv://dangnguyen:C1NMTWSTggsu6dVT@cluster0.7ab0rak.mongodb.net/?retryWrites=true&w=majority")
mongoose.connect("mongodb://127.0.0.1:27017/database")


const LoginSchema=new mongoose.Schema({
    name:{
        type: String,
        require:true
    },
    email:{
        type: String,
        require:true
    },
    password:{
        type: String,
        require:true
    },
    is_admin:{
        type: Boolean,
        require: true
    }
})

const collection=mongoose.model("account", LoginSchema)

module.exports=collection
