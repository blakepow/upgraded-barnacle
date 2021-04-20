const express = require('express');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');

const placesRoutes = require('./routes/places-routes');
const usersRoutes = require('./routes/users-routes');
const HttpError = require('./models/http-error');

const app = express();

app.use(bodyParser.json());


app.use('/api/places', placesRoutes);
app.use('/api/users', usersRoutes);

app.use((req, res, next) => {
    const error = new HttpError('Could not find this route.', 404);
    throw error;
});

app.use((error, req, res, next) => {
    if (res.headerSent) {
        return next(error);
    }
    res.status(error.code || 500);
    res.json({message: error.message || 'An unknown error occurred'});
});

mongoose
    .connect('mongodb+srv://blaketest:R9cnE6a9QubqfZJX@cluster0.jzht0.mongodb.net/Test?retryWrites=true&w=majority')
    .then(() => {    
        app.listen(5000, () => {
            console.log("Running on Port 5000"); 
            console.log("Connected to DB");
        });
    })
    .catch(err => {
        console.log(err);
    });