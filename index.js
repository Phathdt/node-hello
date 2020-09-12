const http = require('http');
const port = process.env.PORT || 3000;
const applicationVersion = process.env.APPLICATION_VERSION;
const environment = process.env.ENVIROMENT;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = `Hello World! ${applicationVersion} - ${environment}`;
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
