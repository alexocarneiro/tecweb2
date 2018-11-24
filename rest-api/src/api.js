const express = require('express');
const bodyparser = require('body-parser');
const cors = require('cors');
const api = express();
const port = 3000;
const router = express.Router();

const alimentosRouter = require('./router/alimentosRouter');
const dietasRouter = require('./router/dietas.Router');
const nutrientesRouter = require('./router/nutrientes.Router');

console.log('Alex baitola');

api.use(cors());

api.use(bodyparser.urlencoded({extended: true}));
api.use(bodyparser.json());

router.get("/", (req, res) => res.json({
    //mensagem: 'Api online!'
      res.send('Aeee');
}));

api.use('/', router);
api.use('/alimentos', alimentosRouter)
api.use('/dietas', dietasRouter)
api.use('/nutrientes', nutrientesRouter)


api.listen(port);
console.log('Run Api...');

