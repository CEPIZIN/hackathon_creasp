import  Express  from "express";
import Database from "./config/DbConnection.js";
import routes from './routes/index.js';

const app = Express()

Database.on("error", console.log.bind(console, "connection error"))
Database.once("open", () => {
  console.log("database connection successful")
})

app.use(Express.json())
routes(app)

export default app