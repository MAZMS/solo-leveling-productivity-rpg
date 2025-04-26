import express from 'express';
const router = express.Router();

// In-memory quest list for demo
let quests = [
  { id: 1, title: 'Morning Routine', description: 'Complete your morning routine.', xp: 50, gold: 10, completed: false },
  { id: 2, title: 'Deep Work', description: 'Focus for 2 hours on a key task.', xp: 100, gold: 25, completed: false }
];

// Get all quests
router.get('/', (req, res) => {
  res.json(quests);
});

// Complete a quest
router.post('/:id/complete', (req, res) => {
  const quest = quests.find(q => q.id === parseInt(req.params.id));
  if (!quest) return res.status(404).json({ error: 'Quest not found' });
  quest.completed = true;
  // Mystery box: 20% chance for bonus loot
  let loot = { xp: quest.xp, gold: quest.gold };
  if (Math.random() < 0.2) {
    loot.mystery = 'You found a Mystery Box! +50 gold!';
    loot.gold += 50;
  }
  res.json({ message: 'Quest completed!', loot });
});

export default router;
