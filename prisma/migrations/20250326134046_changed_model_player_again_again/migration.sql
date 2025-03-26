/*
  Warnings:

  - You are about to drop the column `career_assists` on the `Player` table. All the data in the column will be lost.
  - You are about to drop the column `career_blocks` on the `Player` table. All the data in the column will be lost.
  - You are about to drop the column `career_points` on the `Player` table. All the data in the column will be lost.
  - You are about to drop the column `career_rebounds` on the `Player` table. All the data in the column will be lost.
  - You are about to drop the column `career_steals` on the `Player` table. All the data in the column will be lost.
  - Added the required column `assists_avg` to the `Player` table without a default value. This is not possible if the table is not empty.
  - Added the required column `points_avg` to the `Player` table without a default value. This is not possible if the table is not empty.
  - Added the required column `rebounds_avg` to the `Player` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Player" DROP COLUMN "career_assists",
DROP COLUMN "career_blocks",
DROP COLUMN "career_points",
DROP COLUMN "career_rebounds",
DROP COLUMN "career_steals",
ADD COLUMN     "assists_avg" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "blocks_avg" DOUBLE PRECISION,
ADD COLUMN     "points_avg" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "rebounds_avg" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "steals_avg" DOUBLE PRECISION;
