var express = require('express');
var router = express.Router();
const axios = require('axios');
const Libro = require('../models').libro;

/* GET users listing. */
router.get('/', function (req, res, next) {
  axios.get(`https://prueba-d0722-default-rtdb.firebaseio.com/clientes.json`)
    .then(resAxios => {
      res.json(resAxios.data);
    })
    .catch(err => res.status(400).send(err));
});

router.get('/prestamos/:id', function (req, res, next) {
  const id_libro = req.params['id'];
  axios.get(`http://localhost:3000/libros/${id_libro}`)
    .then(resAxios => {
      axios.get(`http://localhost:3000/clientes/`)
        .then(client => {
          let arr = [];
          client.data.map(uniqueCliente => {
            if (uniqueCliente.libro_prestado === resAxios.data.id) {
              arr.push(uniqueCliente);
            }
          })
          res.json(arr);
        })
    })
    .catch(err => res.status(400).send(err));

})


module.exports = router;