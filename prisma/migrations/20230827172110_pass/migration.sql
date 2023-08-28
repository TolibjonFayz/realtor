/*
  Warnings:

  - Made the column `email` on table `agents` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "agents" ALTER COLUMN "email" SET NOT NULL;
