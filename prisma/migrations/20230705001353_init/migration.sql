-- CreateTable
CREATE TABLE "Accomodation" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "guests" INTEGER NOT NULL,
    "bathrooms" INTEGER NOT NULL,
    "description" TEXT NOT NULL,
    "rooms" INTEGER NOT NULL,
    "beds" INTEGER NOT NULL,
    "distribution" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "disabled" BOOLEAN NOT NULL DEFAULT false,
    "typeAccomodationId" INTEGER,

    CONSTRAINT "Accomodation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TypeAccomodation" (
    "id" SERIAL NOT NULL,
    "type" TEXT NOT NULL,

    CONSTRAINT "TypeAccomodation_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "TypeAccomodation_type_key" ON "TypeAccomodation"("type");

-- AddForeignKey
ALTER TABLE "Accomodation" ADD CONSTRAINT "Accomodation_typeAccomodationId_fkey" FOREIGN KEY ("typeAccomodationId") REFERENCES "TypeAccomodation"("id") ON DELETE SET NULL ON UPDATE CASCADE;
