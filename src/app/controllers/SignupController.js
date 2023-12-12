const User = require('../models/user')
// const bcrypt = require('bcrypt')
class UserSignupController{
    signup(req, res, next){
        res.render('signup');
    }
    async usersignup(req, res, next){
        const { fname, minit, lname, day, month, year, email, phonenumber, address } = req.body;
        const emailAvailable = await User.checkUserEmail(email);
        if (!emailAvailable) {
            res.render( 'signup',
                {message :'Email already exists'
            });

        }else {
            await User.createUser(fname, minit, lname, day, month, year, email, phonenumber, address)
            .then(res.render( 'signup',
                {message: 'Created sucessfully'})
            );

        }
    }




}

module.exports = new UserSignupController