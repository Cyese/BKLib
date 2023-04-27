const TrangChuRouter=require('./TrangChuRoute')
const userLoginRouter=require('./LoginRoute')
const userSignupRouter=require('./SignupRoute')
const adminHomeRouter=require('./adminHomeRoute')
const userHomeRouter=require('./userHomeRoute')
const book=require('./bookRoute')

function route(app){
    app.use('/', TrangChuRouter)

    app.use('/login', userLoginRouter)

    app.use('/signup', userSignupRouter)

    app.use('/home', userHomeRouter)

    app.use('/adminhome', adminHomeRouter)

    app.use('/book', book)
}

module.exports = route