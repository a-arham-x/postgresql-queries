SELECT "exams"."id" FROM public."exams" INNER JOIN public."visits" ON "visits"."id" = "exams"."visit_id"
WHERE "visits"."patient_id"=1800;
