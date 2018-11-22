'use strict';

var express = require('express');
var bodyparser = require('body-parser');
var cors = require('cors');
var api = express();
var port = 3000;
var router = express.Router();

var alimentosRouter = require('./router/alimentosRouter');
var dietasRouter = require('./router/dietas.Router');
var nutrientesRouter = require('./router/nutrientes.Router');

api.use(cors());

api.use(bodyparser.urlencoded({ extended: true }));
api.use(bodyparser.json());

router.get("/", function (req, res) {
    return res.json({
        mensagem: 'Api online!'
    });
});

api.use('/', router);
api.use('/alimentos', alimentosRouter);
api.use('/dietas', dietasRouter);
api.use('/nutrientes', nutrientesRouter);

api.listen(port);
console.log('Run Api...');