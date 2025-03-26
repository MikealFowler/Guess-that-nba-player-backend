/*
  Warnings:

  - You are about to drop the column `name` on the `Player` table. All the data in the column will be lost.
  - Added the required column `player_name` to the `Player` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Player" DROP COLUMN "name",
ADD COLUMN     "player_name" TEXT NOT NULL;
