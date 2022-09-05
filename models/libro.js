'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class libro extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  libro.init({
    titulo: DataTypes.STRING,
    ISBN: DataTypes.STRING,
    genero: DataTypes.STRING,
    anio_publicacion: DataTypes.INTEGER,
    precio: DataTypes.FLOAT,
    autor: DataTypes.INTEGER,
    editorial: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'libro',
  });
  return libro;
};
