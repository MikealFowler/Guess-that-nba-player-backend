/*
  Warnings:

  - You are about to drop the `Team` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_TeamPlayers` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_TeamPlayers" DROP CONSTRAINT "_TeamPlayers_A_fkey";

-- DropForeignKey
ALTER TABLE "_TeamPlayers" DROP CONSTRAINT "_TeamPlayers_B_fkey";

-- DropTable
DROP TABLE "Team";

-- DropTable
DROP TABLE "_TeamPlayers";
