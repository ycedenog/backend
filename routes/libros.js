var express = require('express');
const {
    where
} = require('sequelize');
const {
    Op
} = require('sequelize');
var router = express.Router();
const bodyParser = require('body-parser');
const Sequelize = require('sequelize');
const Libro = require('../models').libro;
const Autor = require('../models').autor;
const Editorial = require('../models').editorial;


/* GET home page. */
router.get('/', function (req, res, next) {
    Libro.findAll()
        .then(libros => {
            res.json(libros)
        })
        .catch(error => res.status(400).send(error));
});

router.get('/:id', function (req, res, next) {
    const identificador = req.params['id'];
    Libro.findOne({
            where: {
                id: identificador
            }
        })
        .then(libros => {
            res.json(libros)
        })
        .catch(error => res.status(400).send(error));
});

router.get('/:nombre?/:apellido?', function (req, res, next) {
    const nombre = req.params['nombre'];
    const apellido = req.params['apellido'];
    Autor.findAll({
            where: {
                [Op.or]: [{
                        nombre: nombre
                    },
                    {
                        apellido: apellido
                    }
                ]
            }
        })
        .then(autores => {
            Libro.findAll({
                    where: {
                        autor: autores[0].dataValues.id
                    }
                })
                .then(libros_autor => {
                    res.json(libros_autor);
                })
                .catch(error => res.status(400).send(error))
        })
        .catch(error => res.status(400).send(error));

})

router.get('/s/d/:editorial', function (req, res, next) {
    const editorial = req.params['editorial'];
    Editorial.findAll({
            where: {
                nombre: editorial
            }
        })
        .then(editoriales => {
            console.log(editoriales)
            Libro.findAll({
                    where: {
                        editorial: editoriales[0].dataValues.id
                    }
                })
                .then(libros_editorial => {
                    res.json(libros_editorial);
                })
                .catch(error => res.status(400).send(error))
        })
        .catch(error => res.status(400).send(error));

})

router.post('/nuevo', function (req, res, next) {
    const libro = req.body;
    console.log(JSON.stringify(libro));
    Libro.create({
            titulo: libro.titulo,
            ISBN: libro.ISBN,
            genero: libro.genero,
            anio_publicacion: libro.anio_publicacion,
            precio: libro.precio,
            autor: libro.autor,
            editorial: libro.editorial
        })
        .then(nuevoLibro => {
            res.send('Se ha ingresado correctamente un nuevo libro' + nuevoLibro);
        })
        .catch(error => res.status(400).send(error));
})

module.exports = router;