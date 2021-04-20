const express = require('express');
const app = express();

app.use(express.static('public'));
app.use(express.json());
app.use(express.urlencoded());

app.get('/', (req, res) => {
    res.render('Check');
});

app.listen(3000, () => {
    console.log('listening on Port 3000');
});