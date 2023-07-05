import express from 'express';
import morgan from 'morgan';

const app = express();

app.use(express.json());
app.use(morgan('dev'));

app.get('/', (req, res) => {
  res.send('Hello World!');
});



const PORT = 3001;
app.listen(PORT, () => console.log(`App listening on ${PORT}`));



