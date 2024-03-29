const path = require('path')
const express = require('express')
const session = require('express-session')
const morgan = require('morgan')
const methodOverride=require('method-override')
const bodyParse = require('body-parser');
const exphbs = require('express-handlebars').engine
const { poolPromise, sql } = require('./app/config/database');
const app = express()
const port = 3000

const route=require('./routes/index')

app.use(bodyParse.json());
app.use(express.static(path.join(__dirname, 'public')))
app.use(bodyParse.urlencoded({
  extended: true
}));

app.use(methodOverride('_method'))

// HTTP logger
// app.use(morgan('combined'))

// Create session

app.use(
  session({
      secret: 'CryingWithWebServer',
      resave: false,
      saveUninitialized: false,
}));

//Template engine
app.set('view engine', 'hbs')
app.set('views', path.join(__dirname, 'resource/views'))
app.engine('hbs', exphbs({
  extname: '.hbs',
  helpers:{
    sum: (a, b) => a+b,
  }
}))

// Routes
route(app)
app.listen(port, () => {
  console.log(`App listening on port ${port}`)
})
process.on('SIGINT', () => {
  sql.close().then(() => {
    console.log('Connection closed.');
    process.exit();
  });
});