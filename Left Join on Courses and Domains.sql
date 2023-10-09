SELECT "courses".course_name, "domains".domain_name
FROM unirms."courses"
LEFT JOIN unirms."domains" ON "courses".domain_id = "domains".domain_id;