const express = require('express');
const os = require('os');
const app = express();

let requestCount = 0;

app.get('/', (req, res) => {
  requestCount += 1;
  const message = `Pod request count ${requestCount} / OS ${os.hostname()}`;

  console.log(message);

  res.send(message);
});

const PORT = 32100;

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
