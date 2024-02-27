const express = require('express');
const app = express();
const port = 3000;

// Define a route that responds with a simple message
app.get('/', (req, res) => {
  res.send('Hello, world!');
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
