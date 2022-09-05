var express = require('express');
const {
    where
} = require('sequelize');
const {
    Op
} = require('sequelize');
var router = express.Router();
const Sequelize = require('sequelize');
const Editorial = require('../models').editorial;

router.get('/', function (req, res, next) {
    Editorial.findAll()
        .then(editoriales => {
            res.send(editoriales)
        })
        .catch(error => res.status(400).send(error));
});

router.post('/nuevo', function (req, res, next) {
    const editorial = req.body;
    Editorial.create({
        nombre: editorial.nombre
    })
        .then(editoriales => {
            res.send("Se ha ingresado la editorial " + editoriales.nombre)
        })
        .catch(error => res.status(400).send(error));
});

module.exports = router;