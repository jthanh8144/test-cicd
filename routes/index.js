var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  console.log('log ne');
  console.log(process.env.APP_PORT);
  console.log(process.env.SECRET_KEY);
  console.log('het log ne');
  res.render('index', { title: 'Express' });
});

module.exports = router;
