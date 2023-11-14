const express = require('express');
const porta = 3000;
const app = express();

app.set('view engine', 'ejs');
app.use(express.static('public'));

app.get('/index',(req,res) => {
    res.render('index');
});




app.listen(porta,() => console.log('Servidor na porta: ' + porta));