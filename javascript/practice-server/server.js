const express = require('express');
const app = express();

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.send('Hello');
})

const port = 9000;

app.listen(port, () => {
    console.log(`Running on Port ${port}`);
})