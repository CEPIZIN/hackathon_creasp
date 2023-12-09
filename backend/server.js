
import app from './src/app.js';
//import routes from './router/index.js'; 

//routes(app)

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`http://localhost:${PORT}`);
});