const env = require('dotenv');
const app = require('./app');

env.config();
console.log(process.env.PORT);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`App is running on port ${PORT}`);
  console.log(`http://localhost:${PORT}`);
});
