-- CreateTable
CREATE TABLE "Team" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Team_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Player" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "career_points" DOUBLE PRECISION NOT NULL,
    "career_assists" DOUBLE PRECISION NOT NULL,
    "career_rebounds" DOUBLE PRECISION NOT NULL,
    "career_steals" DOUBLE PRECISION NOT NULL,
    "career_blocks" DOUBLE PRECISION NOT NULL,
    "career_turnovers" DOUBLE PRECISION NOT NULL,
    "finals_played" INTEGER NOT NULL,
    "finals_won" INTEGER NOT NULL,

    CONSTRAINT "Player_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_TeamPlayers" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,

    CONSTRAINT "_TeamPlayers_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE INDEX "_TeamPlayers_B_index" ON "_TeamPlayers"("B");

-- AddForeignKey
ALTER TABLE "_TeamPlayers" ADD CONSTRAINT "_TeamPlayers_A_fkey" FOREIGN KEY ("A") REFERENCES "Player"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TeamPlayers" ADD CONSTRAINT "_TeamPlayers_B_fkey" FOREIGN KEY ("B") REFERENCES "Team"("id") ON DELETE CASCADE ON UPDATE CASCADE;
