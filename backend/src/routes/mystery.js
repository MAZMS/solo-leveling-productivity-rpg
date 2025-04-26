import express from 'express';
const router = express.Router();

// Mystery box endpoint
router.post('/', (req, res) => {
  const rewards = [
    { type: 'gold', amount: 50, message: 'You found 50 gold!' },
    { type: 'mentor', message: 'A wild Mentor appears: +1 productivity tip!' },
    { type: 'xp', amount: 100, message: 'XP Boost: +100 XP!' },
    { type: 'none', message: 'Nothing... this time. Try again tomorrow!' }
  ];
  const reward = rewards[Math.floor(Math.random() * rewards.length)];
  res.json({ reward });
});

export default router;
