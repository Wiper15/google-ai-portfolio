const express = require('express');
const { GoogleGenerativeAI } = require('@google/generative-ai');
const path = require('path');
const app = express();
app.use(express.json());
app.use(express.static(path.join(__dirname, '/')));

const genAI = new GoogleGenerativeAI(process.env.GEMINI_API_KEY);

app.post('/api/chat', async (req, res) => {
  try {
    const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });
    const result = await model.generateContent(req.body.message);
    res.json({ answer: result.response.text() });
  } catch (err) {
    res.status(500).json({ error: "AI Engine Offline" });
  }
});

const PORT = process.env.PORT |

| 8080;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
