const User = require('../models/user');

class UserLoginController {
    login(req, res, next) {
        res.render('login');
    }

    async userLogin(req, res, next) {
        const { email } = req.body;
        const emailAvailable = await User.checkUserEmail(email);
        // console.log(emailAvailable);
        if (emailAvailable.length > 0) {
            req.session.user = emailAvailable[0].id;
            req.session.name = emailAvailable[0].lname;
            // console.log(req.session.user);
            res.redirect('/home');
        } else {
            res.render('login', {
                message: 'Email does not exist'
            });
        }
    }
}

module.exports = new UserLoginController();
