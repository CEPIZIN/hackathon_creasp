import mongoose from 'mongoose'

const studentSchema = new mongoose.Schema({
    id:{
      type: String},
    nomeCompleto: {
      type: String,
      required: true,
    },
    curso: {
      type: String,
      required: true,
    },
    instituicao: {
      type: String,
      required: true,
    },
    checkIn: {
      type: Boolean,
      default: false,
    },
    pontuacao: {
      type: Number,
      default: 0,
    },
  });
  

let UserModel  = mongoose.model('hackaton_CREA',studentSchema)

export default  UserModel;