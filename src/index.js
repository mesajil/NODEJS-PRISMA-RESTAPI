import express from 'express';
import morgan from 'morgan';
import accommodationRouter from './routes/accommodations.routes.js';
import typeAccommodationRouter from './routes/typeAccommodation.routes.js';

const app = express();

app.use(express.json());
app.use(morgan('dev'));

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.use('/acc', accommodationRouter);
app.use('/type-acc', typeAccommodationRouter);

const PORT = 3001;
app.listen(PORT, () => console.log(`App listening on ${PORT}`));



