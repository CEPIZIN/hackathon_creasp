import  Express  from "express";
import userController from "../controller/userController.js"

const router = Express.Router()

router
    .get('/ranking',userController.Ranking)
    .post('/cadastro',userController.createUser)
    .patch('/check/:id',userController.pontuacao)


export default router