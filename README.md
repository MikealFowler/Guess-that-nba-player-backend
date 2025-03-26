# 🏀 Guess That NBA Player - Backend

An Express + Prisma backend API powering the **Guess That NBA Player** game. It provides player data for a React-based guessing game.

---

## 📦 Tech Stack

- **Node.js**
- **Express**
- **Prisma (PostgreSQL or SQLite)**
- **Jest + Supertest** (for testing)
- **CORS** (for frontend communication)
- **dotenv** (for environment config)

---

## 🚀 Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/MikealFowler/Guess-that-nba-player-backendGuess-that-nba-player-backend.git
cd guess-that-nba-player-backend
```

---

### 2. Install Dependencies

```bash
npm install
```

---

### 3. Set Up Environment Variables

Create a `.env` file in the project root:

```
DATABASE_URL=your_database_url_here
PORT=3000
```

---

### 4. Set Up the Database with Prisma

```bash
npx prisma generate
npx prisma migrate dev --name init
```

Make sure your database is running and accessible.

---

### 5. Seed the Database

You must seed the database with player data before using the API:

```bash
npm run seed:teams
npm run seed:players
```

### 6. Start the Server

```bash
npm start
```

The API will be running at:  
`http://localhost:3000/api`

---

## 🧪 Running Tests

To run the Jest test suite:

```bash
npm test
```

Tests cover:
- `GET /api/randomplayer`
- `GET /api/allplayers`
- `GET /api/player/:id` (with 404 handling)

---

## 📘 API Endpoints

| Method | Route                 | Description                    |
|--------|------------------------|--------------------------------|
| GET    | `/api/randomplayer`    | Get a random NBA player        |
| GET    | `/api/allplayers`      | Get all NBA players            |
| GET    | `/api/player/:id`      | Get a player by ID             |

---

## 💡 Future Improvements

- Add rate limiting or auth if deployed publicly
- Enhance data validation and error handling
- Add filtering or search routes
- Write unit tests for raw utility functions

---

## 👨‍💼 Author

**Mikeal Fowler**  


---

## 🏀 Shoutout

Special thanks to basketball-reference.com or any data source used for compiling player stats.

---

