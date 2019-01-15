-- pets and owners
-- blog posts and authors
-- teachers and students
-- parents and children
-- classes and objects
-- projects and contributors

-- Determine the above relationships are one to many or many to many. 
-- Always ask the question in both directions. Note if you need to clarify meaning of relationship. 
-- If it is a many to many, what is the name of the middle table (join table)?

-- pets and owners - many to many
-- pets can have multiple owners in the case of multiple family members.
-- owners can have multple pets.
-- join table - family

-- blog posts and authors - one to many
-- there can be multiple blog posts made by a single author, but there are is only one author per blog post

-- teachers and students - many to many
-- teachers can have multiple students and students can have multiple teachers
-- join table - schedule

--parents and child - many to many
-- parents can have multiple children, child can have multiple parents
-- joim table - family tree

--classes and objects one to many
--object has multiple classes but classes have one object

--projects and contributors many to many
-- many contributors to projects, many projects to each person
-- join table - project experience

