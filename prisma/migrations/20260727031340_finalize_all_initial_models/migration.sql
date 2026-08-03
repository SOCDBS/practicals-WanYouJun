-- DropForeignKey
ALTER TABLE "student" DROP CONSTRAINT "student_crse_code_fk";

-- AlterTable
ALTER TABLE "stud_mod_performance" ALTER COLUMN "mark" DROP NOT NULL,
ALTER COLUMN "grade" DROP NOT NULL;

-- AlterTable
ALTER TABLE "student" ALTER COLUMN "mobile_phone" DROP NOT NULL,
ALTER COLUMN "home_phone" DROP NOT NULL,
ALTER COLUMN "crse_code" SET DATA TYPE VARCHAR(5);

-- RenameForeignKey
ALTER TABLE "stud_mod_performance" RENAME CONSTRAINT "stud_mod_performance_adm_no_fk" TO "stud_mod_performance_adm_no_fkey";

-- RenameForeignKey
ALTER TABLE "stud_mod_performance" RENAME CONSTRAINT "stud_mod_performance_mod_registered_fk" TO "stud_mod_performance_mod_registered_fkey";

-- AddForeignKey
ALTER TABLE "module" ADD CONSTRAINT "mod_mod_coord_fk" FOREIGN KEY ("mod_coord") REFERENCES "staff"("staff_no") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "student" ADD CONSTRAINT "student_crse_code_fk" FOREIGN KEY ("crse_code") REFERENCES "course"("crse_code") ON DELETE NO ACTION ON UPDATE NO ACTION;
