/*
  Warnings:

  - A unique constraint covering the columns `[player_name]` on the table `Player` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Player_player_name_key" ON "Player"("player_name");
