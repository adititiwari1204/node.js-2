const express = require('express');
const app = express();

// Basic JSON API
app.get('/', (req, res) => {
  res.json({ message: 'Hello from Node CI/CD sample' });
});

app.get('/health', (req, res) => {
  res.json({ status: 'ok' });
});

app.get('/users', (req, res) => {
  res.json([
    { id: 1, name: 'Alice' },
    { id: 2, name: 'Bob' }
  ]);
});

// Start server if run directly
if (require.main === module) {
  const port = process.env.PORT || 3000;
  app.listen(port, () => {
    console.log(`Server running on port ${port}`);
  });
}

module.exports = app;
