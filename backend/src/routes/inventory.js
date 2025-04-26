import express from 'express';
const router = express.Router();

// In-memory inventory for demo
let inventory = [
  { id: 1, name: 'XP Potion', desc: 'Grants 100 XP.' },
  { id: 2, name: 'Gold Coin', desc: 'Spend in the shop.' }
];

// Get inventory
router.get('/', (req, res) => {
  res.json(inventory);
});

export default router;
