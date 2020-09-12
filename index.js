const http = require('http');
const port = process.env.PORT || 3000;
const appVersion = process.env.APP_VERSION;
const appEnv = process.env.APP_ENV;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = `Hello World! ${appVersion} - ${appEnv}`;
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
