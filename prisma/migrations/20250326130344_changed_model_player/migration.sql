-- AlterTable
ALTER TABLE "Player" ALTER COLUMN "career_steals" DROP NOT NULL,
ALTER COLUMN "career_blocks" DROP NOT NULL,
ALTER COLUMN "career_turnovers" DROP NOT NULL,
ALTER COLUMN "finals_played" DROP NOT NULL,
ALTER COLUMN "finals_won" DROP NOT NULL;
