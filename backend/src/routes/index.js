import  Express  from "express";
import user from './userRoter.js'

//public route 

const routes = (app) => {
    app.get('/', (req, res) => {
        res.status(200).send("Ranking ")
    });
    app.use(
        Express.json(),
        user
        
    );
}

export default routes
