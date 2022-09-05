'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class autor extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  autor.init({
    nombre: DataTypes.STRING,
    apellido: DataTypes.STRING,
    anio_nacimiento: DataTypes.DATEONLY,
    genero: DataTypes.STRING,
    obra: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'autor',
  });
  return autor;
};