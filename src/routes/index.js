const TrangChuRouter=require('./TrangChuRoute')
const userLoginRouter=require('./LoginRoute')
const userSignupRouter=require('./SignupRoute')
const userHomeRouter=require('./userHomeRoute')
const adminHomeRouter=require('./adminHomeRoute')

function route(app){
    app.use('/', TrangChuRouter);
    app.use('/login', userLoginRouter)

    app.use('/signup', userSignupRouter)

    app.use('/home', userHomeRouter)
    
    app.use('/adminhome', adminHomeRouter)

}

module.exports = route