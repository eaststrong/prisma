-- CreateTable
CREATE TABLE "User" (
    "id" CHAR(21) NOT NULL,
    "code" VARCHAR(191) NOT NULL,
    "created_at" CHAR(19) NOT NULL,
    "updated_at" CHAR(19) NOT NULL,
    "deleted_at" CHAR(19),
    "name" TEXT NOT NULL,
    "note" TEXT,
    "d_id" CHAR(21) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Department" (
    "id" CHAR(21) NOT NULL,
    "code" VARCHAR(191) NOT NULL,
    "created_at" CHAR(19) NOT NULL,
    "updated_at" CHAR(19) NOT NULL,
    "deleted_at" CHAR(19),
    "name" TEXT NOT NULL,
    "note" TEXT,
    "p_id" CHAR(21) NOT NULL,

    CONSTRAINT "Department_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User_Department" (
    "u_id" CHAR(21) NOT NULL,
    "d_id" CHAR(21) NOT NULL,

    CONSTRAINT "User_Department_pkey" PRIMARY KEY ("u_id","d_id")
);

-- CreateTable
CREATE TABLE "Department_Parent" (
    "d_id" CHAR(21) NOT NULL,
    "p_id" CHAR(21) NOT NULL,

    CONSTRAINT "Department_Parent_pkey" PRIMARY KEY ("d_id","p_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_code_key" ON "User"("code");

-- CreateIndex
CREATE INDEX "User_code_idx" ON "User"("code");

-- CreateIndex
CREATE UNIQUE INDEX "Department_code_key" ON "Department"("code");

-- CreateIndex
CREATE INDEX "Department_code_idx" ON "Department"("code");
