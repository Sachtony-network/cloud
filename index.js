const express = require('express');
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

let lastCustomerNumber = null;

app.post('/', (req, res) => {
  lastCustomerNumber = req.body.customerNumber;
  res.sendStatus(200);
});

app.get('/', (req, res) => {
  res.send(lastCustomerNumber);
});

app.listen(3000);
