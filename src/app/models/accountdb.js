const mongoose = require('mongoose')

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
    }
})

const account=mongoose.model("account", LoginSchema)

module.exports=account
