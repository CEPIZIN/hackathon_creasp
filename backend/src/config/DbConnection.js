import mongoose from 'mongoose';
import dotenv from 'dotenv';
dotenv.config();



mongoose.connect(process.env.STRING_connection_DB); 

let Database = mongoose.connection;

export default Database;
