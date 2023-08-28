-- DropIndex
DROP INDEX "agents_uniqueid_key";

-- AlterTable
ALTER TABLE "agents" ALTER COLUMN "full_name" DROP NOT NULL,
ALTER COLUMN "phone_number" DROP NOT NULL,
ALTER COLUMN "uniqueid" DROP NOT NULL;
