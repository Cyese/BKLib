module.exports = {
    multipleToObject: function(mongoose){
        return mongoose.map(mongoose => mongoose.toObject())
    },
    documentToObject: function(mongoose){
        return mongoose ? mongoose.toObject() : mongoose
    }

}