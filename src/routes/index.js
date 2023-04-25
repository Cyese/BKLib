const TrangChuRouter=require('./TrangChuRoute')
const userLoginRouter=require('./userLoginRoute')
const userSignupRouter=require('./userSignupRoute')
const adminLoginRouter=require('./adminLoginRoute')
const adminHomeRouter=require('./adminHomeRoute')
const userHomeRouter=require('./userHomeRoute')

function route(app){
    app.use('/', TrangChuRouter)

    app.use('/login', userLoginRouter)

    app.use('/signup', userSignupRouter)

    app.use('/admin', adminLoginRouter)

    app.use('/home', userHomeRouter)

    app.use('/adminhome', adminHomeRouter)
}

module.exports = route