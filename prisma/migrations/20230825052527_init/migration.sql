/*
  Warnings:

  - You are about to drop the `Contracts` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Contracts";

-- CreateTable
CREATE TABLE "contracts" (
    "id" SERIAL NOT NULL,
    "customer_id" INTEGER,
    "agent_id" INTEGER,
    "accommodation_id" INTEGER,
    "price" INTEGER NOT NULL,
    "date_began" TIMESTAMP(3),
    "ending_date" TIMESTAMP(3),

    CONSTRAINT "contracts_pkey" PRIMARY KEY ("id")
);
