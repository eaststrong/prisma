-- AlterTable
ALTER TABLE "Department" ADD COLUMN     "u_id" CHAR(21),
ALTER COLUMN "p_id" DROP NOT NULL;

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "s_id" CHAR(21);

-- CreateTable
CREATE TABLE "User_Supervisor" (
    "u_id" CHAR(21) NOT NULL,
    "s_id" CHAR(21) NOT NULL,

    CONSTRAINT "User_Supervisor_pkey" PRIMARY KEY ("u_id","s_id")
);
