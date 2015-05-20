;;; ************************************************************************
;;; Ontology 
;;; ************************************************************************

; Wed May 20 16:02:30 CEST 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot maxNumOfCourses
;+		(comment "The maximum number of courses that a student wants to be enrolled in for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot primarySpecialty
;+		(comment "The specialty that a student is most interested in completing.")
		(type INSTANCE)
;+		(allowed-classes Specialty)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot teachingLanguage
;+		(comment "The language(s) in which a course is taught.")
		(type SYMBOL)
		(allowed-values SPANISH CATALAN ENGLISH CATALAN_SPANISH CATALAN_ENGLISH SPANISH_ENGLISH CATALAN_SPANISH_ENGLISH)
		(default CATALAN)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prerequisites
;+		(comment "The prerequisites of a course. Can be Passed or Unpassed Courses.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(single-slot quantityOfWork
		(type SYMBOL)
		(allowed-values HIGH MEDIUM LOW)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semesterOfRegistration
;+		(comment "The semester for which the recommendation will be done.")
		(type INTEGER)
		(range 1 %3FVARIABLE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfTheme
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfSpecialty
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxNumOfLabHours
;+		(comment "The maximum number of Laboratory hours that a student can accept for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot percentageOfPassedPreviousSemester
;+		(comment "The percentage of students that passed the course for the previous semester.")
		(type FLOAT)
		(range 0.0 100.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot credits
;+		(comment "Credits that a course offers for a specific competence.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot mark
;+		(comment "The final mark of a student for this Passed Course.\nIf the course is unpassed the default value is -1.")
		(type INTEGER)
		(range -1 10)
		(default -1)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot hours
		(type SYMBOL)
		(allowed-values MORNING AFTERNOON BOTH)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semesterOpen
;+		(comment "The semester in which the course is available. (Winter, spring or Both)")
		(type SYMBOL)
		(allowed-values SPRING WINTER BOTH)
		(default BOTH)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot coursesContained
;+		(comment "The courses that a theme contains.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(multislot courses
;+		(comment "Courses that offer this competence.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(single-slot ECTS
;+		(comment "The ECTS credits of a course.")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Practica2_Class10001
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specialtiesOfInterest
;+		(comment "The Specialties that a student is interested in completing,")
		(type INSTANCE)
;+		(allowed-classes Specialty)
		(create-accessor read-write))
	(single-slot preferredHours
;+		(comment "The type of hours that a student prefers.")
		(type SYMBOL)
		(allowed-values MORNING AFTERNOON ANY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot competencesOfInterest
;+		(comment "The competences that the student is interested in obtaining,")
		(type INSTANCE)
;+		(allowed-classes CompetenceOfInterest)
		(create-accessor read-write))
	(multislot marks
;+		(comment "The marks of a student. Entered in the same order as the Passed Courses.")
		(type INTEGER)
		(range 0 10)
		(create-accessor read-write))
	(single-slot specialty
;+		(comment "The specialty to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes Specialty)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot labHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot acceptedCourseDifficulty
;+		(comment "The difficulty level of courses that is accepted by a student")
		(type SYMBOL)
		(allowed-values EASY DIFFICULT ANY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot passedCourses
;+		(comment "Courses that a student has already passed")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(single-slot nameOfCompetence
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfCourse
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxNumOfDevotedHours
;+		(comment "The maximum number of hours of devotion that a student can accept for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot course
;+		(comment "Competence that a course offers.")
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot difficulty
;+		(comment "The degree of difficulty of a course.")
		(type SYMBOL)
		(allowed-values EASY MEDIUM DIFFICULT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot theoryHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot type
;+		(comment "Type of course (compulsory etc.)")
		(type SYMBOL)
		(allowed-values COMPULSORY SPECIALIZATION_COMPULSORY SPECIALIZATION_COMPLEMENTARY OPTIONAL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semesterPassed
;+		(comment "The semester during which a student was enrolled in this course.\nIf the student has not passed this course the default value is -1.")
		(type INTEGER)
		(range -1 8)
		(default -1)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot corequisites
;+		(comment "The corequisites of a course. Can be Passed or Unpassed courses.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(single-slot semester
;+		(comment "The semester of a course according to the curriculum of the university.")
		(type INTEGER)
		(range 1 8)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot passed
;+		(comment "True if the student has passed this course. Default value is false.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specializedThemesOfInterest
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(multislot specializedThemesIncluded
;+		(comment "Specialized Themes included in a specialty,")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(multislot specializedThemes
;+		(comment "Specialized Themes to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot problemHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot passedCourseSemester
;+		(comment "The semester during which a student passed a course. Entered in the same order as the Passed Courses.")
		(type INTEGER)
		(range 1 8)
		(create-accessor read-write))
	(single-slot project
;+		(comment "True if the course is a project - course")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot relativeSpecializedThemes
;+		(comment "Specialized Themes that are relative to this theme.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot interestToCompletePrimarySpecialty
;+		(comment "The degree of the student's interest in completing their primarySpecialty during this semester.")
		(type SYMBOL)
		(allowed-values HIGH MEDIUM NONE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfStudent
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot creditsAlreadyObtained
;+		(comment "Credits already obtained by a student for this competence.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specializedThemesContained
;+		(comment "Specialized themes that a course contains.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot numberOfEnrolledPreviousSemester
;+		(comment "The number of enrolled students for the previous semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Student
	(is-a USER)
	(role concrete)
	(single-slot maxNumOfCourses
;+		(comment "The maximum number of courses that a student wants to be enrolled in for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specialtiesOfInterest
;+		(comment "The Specialties that a student is interested in completing,")
		(type INSTANCE)
;+		(allowed-classes Specialty)
		(create-accessor read-write))
	(single-slot primarySpecialty
;+		(comment "The specialty that a student is most interested in completing.")
		(type INSTANCE)
;+		(allowed-classes Specialty)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specializedThemesOfInterest
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot preferredHours
;+		(comment "The type of hours that a student prefers.")
		(type SYMBOL)
		(allowed-values MORNING AFTERNOON ANY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot competencesOfInterest
;+		(comment "The competences that the student is interested in obtaining,")
		(type INSTANCE)
;+		(allowed-classes CompetenceOfInterest)
		(create-accessor read-write))
	(single-slot maxNumOfDevotedHours
;+		(comment "The maximum number of hours of devotion that a student can accept for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semesterOfRegistration
;+		(comment "The semester for which the recommendation will be done.")
		(type INTEGER)
		(range 1 %3FVARIABLE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot passedCourseSemester
;+		(comment "The semester during which a student passed a course. Entered in the same order as the Passed Courses.")
		(type INTEGER)
		(range 1 8)
		(create-accessor read-write))
	(multislot marks
;+		(comment "The marks of a student. Entered in the same order as the Passed Courses.")
		(type INTEGER)
		(range 0 10)
		(create-accessor read-write))
	(single-slot maxNumOfLabHours
;+		(comment "The maximum number of Laboratory hours that a student can accept for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot interestToCompletePrimarySpecialty
;+		(comment "The degree of the student's interest in completing their primarySpecialty during this semester.")
		(type SYMBOL)
		(allowed-values HIGH MEDIUM NONE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfStudent
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot acceptedCourseDifficulty
;+		(comment "The difficulty level of courses that is accepted by a student")
		(type SYMBOL)
		(allowed-values EASY DIFFICULT ANY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot passedCourses
;+		(comment "Courses that a student has already passed")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write)))

(defclass Course
	(is-a USER)
	(role concrete)
	(single-slot semester
;+		(comment "The semester of a course according to the curriculum of the university.")
		(type INTEGER)
		(range 1 8)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot passed
;+		(comment "True if the student has passed this course. Default value is false.")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
		(default FALSE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfCourse
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot teachingLanguage
;+		(comment "The language(s) in which a course is taught.")
		(type SYMBOL)
		(allowed-values SPANISH CATALAN ENGLISH CATALAN_SPANISH CATALAN_ENGLISH SPANISH_ENGLISH CATALAN_SPANISH_ENGLISH)
		(default CATALAN)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prerequisites
;+		(comment "The prerequisites of a course. Can be Passed or Unpassed Courses.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(multislot specializedThemes
;+		(comment "Specialized Themes to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot quantityOfWork
		(type SYMBOL)
		(allowed-values HIGH MEDIUM LOW)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot problemHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot project
;+		(comment "True if the course is a project - course")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot percentageOfPassedPreviousSemester
;+		(comment "The percentage of students that passed the course for the previous semester.")
		(type FLOAT)
		(range 0.0 100.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot difficulty
;+		(comment "The degree of difficulty of a course.")
		(type SYMBOL)
		(allowed-values EASY MEDIUM DIFFICULT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot theoryHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot hours
		(type SYMBOL)
		(allowed-values MORNING AFTERNOON BOTH)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semesterOpen
;+		(comment "The semester in which the course is available. (Winter, spring or Both)")
		(type SYMBOL)
		(allowed-values SPRING WINTER BOTH)
		(default BOTH)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot specialty
;+		(comment "The specialty to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes Specialty)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot type
;+		(comment "Type of course (compulsory etc.)")
		(type SYMBOL)
		(allowed-values COMPULSORY SPECIALIZATION_COMPULSORY SPECIALIZATION_COMPLEMENTARY OPTIONAL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot labHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot corequisites
;+		(comment "The corequisites of a course. Can be Passed or Unpassed courses.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(single-slot ECTS
;+		(comment "The ECTS credits of a course.")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numberOfEnrolledPreviousSemester
;+		(comment "The number of enrolled students for the previous semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Theme
	(is-a USER)
	(role abstract)
	(multislot coursesContained
;+		(comment "The courses that a theme contains.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(single-slot nameOfTheme
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass GeneralTheme
	(is-a Theme)
	(role concrete)
	(multislot specializedThemesContained
;+		(comment "Specialized themes that a course contains.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write)))

(defclass SpecializedTheme
	(is-a Theme)
	(role concrete)
	(multislot relativeSpecializedThemes
;+		(comment "Specialized Themes that are relative to this theme.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write)))

(defclass NonITTheme
	(is-a Theme)
	(role concrete))

(defclass Specialty
	(is-a USER)
	(role concrete)
	(single-slot nameOfSpecialty
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specializedThemesIncluded
;+		(comment "Specialized Themes included in a specialty,")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write)))

(defclass Competence
	(is-a USER)
	(role abstract)
	(single-slot nameOfCompetence
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass CompetenceOfInterest "A competence that the student is interested in obtaining."
	(is-a Competence)
	(role concrete)
	(single-slot credits
;+		(comment "Credits that a course offers for a specific competence.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot creditsAlreadyObtained
;+		(comment "Credits already obtained by a student for this competence.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot course
;+		(comment "Competence that a course offers.")
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot courses
;+		(comment "Courses that offer this competence.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write)))

(defclass CompetenceOfCourse "A competence that a course includes and its level (Credits slot)"
	(is-a Competence)
	(role concrete))


;;; ************************************************************************
;;; Instances 
;;; ************************************************************************

; Wed May 20 16:02:30 CEST 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")

([Practica2_Class0] of  Course

	(difficulty DIFFICULT)
	(ECTS 7.5)
	(nameOfCourse "Physics")
	(passed FALSE)
	(project FALSE)
	(quantityOfWork HIGH)
	(semester 1)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class1] of  Course

	(ECTS 7.5)
	(nameOfCourse "Programming 1")
	(passed FALSE)
	(semester 1)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10000] of  Student

	(marks 9 7 10 5 6)
	(nameOfStudent "Juan Martinez")
	(passedCourses
		[Practica2_Class7]
		[Practica2_Class0]
		[Practica2_Class2]
		[Practica2_Class3]
		[Practica2_Class4])
	(passedCourseSemester 1 1 1 2 2)
	(semesterOfRegistration 3))

([Practica2_Class10008] of  Course

	(ECTS 6.0)
	(nameOfCourse "Databases")
	(passed FALSE)
	(prerequisites
		[Practica2_Class1]
		[Practica2_Class5])
	(semester 3)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10009] of  Course

	(ECTS 6.0)
	(nameOfCourse "Operating Systems")
	(passed FALSE)
	(prerequisites
		[Practica2_Class6]
		[Practica2_Class2])
	(semester 3)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10010] of  Course

	(ECTS 6.0)
	(nameOfCourse "Data Structures and algorithmics")
	(passed FALSE)
	(prerequisites
		[Practica2_Class1]
		[Practica2_Class5])
	(semester 3)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10011] of  Course

	(ECTS 6.0)
	(nameOfCourse "Computer Interfacing")
	(passed FALSE)
	(prerequisites
		[Practica2_Class6]
		[Practica2_Class2])
	(semester 3)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10012] of  Course

	(ECTS 6.0)
	(nameOfCourse "Business and Economic Environment")
	(passed FALSE)
	(semester 4)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10013] of  Course

	(corequisites [Practica2_Class10010])
	(ECTS 6.0)
	(nameOfCourse "Introduction to Software Engineering")
	(passed FALSE)
	(prerequisites [Practica2_Class10008])
	(semester 4)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10014] of  Course

	(corequisites [Practica2_Class10009])
	(ECTS 6.0)
	(nameOfCourse "Computer Networks")
	(passed FALSE)
	(semester 4)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10015] of  Course

	(corequisites
		[Practica2_Class10013]
		[Practica2_Class10008])
	(ECTS 6.0)
	(nameOfCourse "Programming Projects")
	(passed FALSE)
	(semester 4)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10016] of  Course

	(ECTS 6.0)
	(nameOfCourse "Computer Architecture")
	(passed FALSE)
	(prerequisites
		[Practica2_Class6]
		[Practica2_Class10009])
	(semester 4)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10017] of  Course

	(ECTS 6.0)
	(nameOfCourse "Parallelism")
	(passed FALSE)
	(prerequisites
		[Practica2_Class10016]
		[Practica2_Class10010]
		[Practica2_Class10009])
	(semester 5)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10018] of  Course

	(ECTS 6.0)
	(nameOfCourse "Interaction and Interface Design")
	(passed FALSE)
	(prerequisites
		[Practica2_Class10010]
		[Practica2_Class3])
	(semester 6)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class10019] of  Specialty

	(nameOfSpecialty "Computing"))

([Practica2_Class10020] of  Specialty

	(nameOfSpecialty "Computer Engineering"))

([Practica2_Class10021] of  Specialty

	(nameOfSpecialty "Software Engineering"))

([Practica2_Class10022] of  Specialty

	(nameOfSpecialty "Information Systems"))

([Practica2_Class10023] of  Specialty

	(nameOfSpecialty "Information Technologies"))

([Practica2_Class10024] of  Course

	(corequisites [Practica2_Class10015])
	(nameOfCourse "Algorithmics")
	(passed FALSE)
	(prerequisites
		[Practica2_Class10010]
		[Practica2_Class10038])
	(semester 5)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPULSORY))

([Practica2_Class10025] of  Course

	(ECTS 6.0)
	(nameOfCourse "Graphics")
	(passed FALSE)
	(prerequisites
		[Practica2_Class10018]
		[Practica2_Class10015])
	(semester 5)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPULSORY))

([Practica2_Class10026] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(nameOfCourse "Artificial Intelligence")
	(passed FALSE)
	(prerequisites [Practica2_Class10010])
	(project FALSE)
	(semester 5)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPULSORY))

([Practica2_Class10027] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(nameOfCourse "Logic in Information Technology")
	(passed FALSE)
	(prerequisites [Practica2_Class10010])
	(semester 5)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPULSORY))

([Practica2_Class10028] of  Course

	(ECTS 6.0)
	(nameOfCourse "Programming Languages")
	(passed FALSE)
	(prerequisites [Practica2_Class10015])
	(semester 6)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPULSORY))

([Practica2_Class10029] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(nameOfCourse "Theory of Computation")
	(passed FALSE)
	(prerequisites [Practica2_Class10010])
	(semester 6)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPULSORY))

([Practica2_Class10030] of  Course

	(ECTS 6.0)
	(nameOfCourse "Advanced Algorithmics")
	(passed FALSE)
	(prerequisites [Practica2_Class10024])
	(semester 6)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPLEMENTARY))

([Practica2_Class10031] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(nameOfCourse "Machine Learning")
	(passed FALSE)
	(prerequisites [Practica2_Class10038])
	(semester 6)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPLEMENTARY))

([Practica2_Class10032] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(nameOfCourse "Searching and Analysis of Massive Information")
	(passed FALSE)
	(prerequisites
		[Practica2_Class10008]
		[Practica2_Class10038])
	(semester 6)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPLEMENTARY))

([Practica2_Class10033] of  Course

	(ECTS 6.0)
	(nameOfCourse "Compilers")
	(passed FALSE)
	(prerequisites [Practica2_Class10029])
	(semester 6)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPLEMENTARY))

([Practica2_Class10034] of  Course

	(ECTS 6.0)
	(nameOfCourse "Numerical Computation")
	(passed FALSE)
	(prerequisites
		[Practica2_Class3]
		[Practica2_Class4])
	(semester 6)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPLEMENTARY))

([Practica2_Class10035] of  Course

	(ECTS 6.0)
	(nameOfCourse "Operations Research")
	(passed FALSE)
	(prerequisites [Practica2_Class10038])
	(semester 6)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPLEMENTARY))

([Practica2_Class10036] of  Course

	(ECTS 6.0)
	(nameOfCourse "Distributed Intelligent Systems")
	(passed FALSE)
	(prerequisites [Practica2_Class10026])
	(semester 6)
	(semesterOpen BOTH)
	(specialty [Practica2_Class10019])
	(type SPECIALIZATION_COMPLEMENTARY))

([Practica2_Class10037] of  Specialty
)

([Practica2_Class10038] of  Course

	(ECTS 6.0)
	(nameOfCourse "Probability and Statistics")
	(passed FALSE)
	(prerequisites
		[Practica2_Class3]
		[Practica2_Class4])
	(semester 3)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class2] of  Course

	(ECTS 7.5)
	(nameOfCourse "Introduction to Computers")
	(passed FALSE)
	(semester 1)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class3] of  Course

	(ECTS 7.5)
	(nameOfCourse "Mathematics 1")
	(passed FALSE)
	(semester 2)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class4] of  Course

	(ECTS 7.5)
	(nameOfCourse "Mathematics 2")
	(passed FALSE)
	(semester 2)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class5] of  Course

	(ECTS 7.5)
	(nameOfCourse "Programming 2")
	(passed FALSE)
	(semester 2)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class6] of  Course

	(ECTS 7.5)
	(nameOfCourse "Computer Organization")
	(passed FALSE)
	(semester 2)
	(semesterOpen BOTH)
	(type COMPULSORY))

([Practica2_Class7] of  Course

	(ECTS 7.5)
	(nameOfCourse "Mathematical Foundations")
	(passed FALSE)
	(semester 1)
	(type COMPULSORY))


;;; ************************************************************************
;;; End of code generated with Protege 
;;; ************************************************************************


;;; ************************************************************************
;;; Class Declarations 
;;; ************************************************************************

;;;TODO : Add justifications for the recommendation ?
;;; Class of Recommendations suitable to create lists of recommendations

(defclass Recommendation 
	(is-a USER)
	(role concrete)
	(slot course
		(type INSTANCE)
		(create-accessor read-write))
	(slot points
		(type INTEGER)
		(create-accessor read-write))
)


;;; ************************************************************************
;;; Module Declarations 
;;; ************************************************************************

;;; Main Module
(defmodule MAIN (export ?ALL))

;;; Module for student data collection
(defmodule StudentData
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Module for student data collection
(defmodule UserQuestions
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule StudentPreferences
	(import MAIN ?ALL)
	(import StudentData deftemplate ?ALL)
	(export ?ALL)
)

;;; Module for processing of courses adequate for the student
(defmodule processed
	(import MAIN ?ALL)
	(import StudentData deftemplate ?ALL)
	(import StudentPreferences deftemplate ?ALL)
	(export ?ALL)
)

;;; Module for processing of solutions
(defmodule generation
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Module for presentation of the results
(defmodule presentation
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; ************************************************************************
;;; Message Declarations 
;;; ************************************************************************


;;; TODO add the rest of the course fields
;;; Print the Course data
(defmessage-handler MAIN::Course print ()
	(format t "Name: %s %n" ?self:nameOfCourse)
	(printout t crlf)
	(printout t "ECTS: ")
	(format t "ECTS: %d" ?self:ECTS)
	(printout t crlf)
	(format t "Semester: %d" ?self:semester)	
	(printout t crlf)
	(format t "Hours: %d" ?self:hours)
	(printout t crlf)
	(format t "Difficulty: %s" ?self:difficulty)
	(printout t crlf)
	(format t "Specialty: %d" (send ?self:specialty get-nameOfSpecialty))
	(printout t crlf)
	(progn$ (?specializedTheme (send ?self get-specializedThemes))
		(format t "%s " (send ?specializedTheme get-nameOfTheme))
	)
        (printout t crlf)
)

;;; Print recommendations
(defmessage-handler MAIN::Recomendation print ()
	(printout t "-----------------------------------" crlf)
	(printout t (send ?self:Course print))
	(printout t crlf)
	(format t "Recommendation level: %d %n" ?self:points)
	(printout t crlf)
	(printout t "-----------------------------------" crlf)
)


;;; ************************************************************************
;;; Template Declarations 
;;; ************************************************************************

;;; TODO: add the rest of the Student fields
;;; Template for the Student data
(deftemplate MAIN::Student
	(slot nameOfStudent (type STRING))
	(slot semesterOfRegistration (type INTEGER))
)

;;; TODO: process the fields, add more defaults
;;; Template for the Student Preferences
(deftemplate MAIN::Preferences
	(slot acceptedCourseDifficulty (type SYMBOL) (default ANY))
	(multislot competencesOfInterest (type INSTANCE))
	(slot interestToCompletePrimarySpecialty (type SYMBOL) (default HIGH))
	(slot maxNumOfCourses (type INTEGER) (default 6))
	(slot maxNumOfDevotedHours (type INTEGER))
	(slot maxNumOfLabHours (type INTEGER))
	(slot preferredHours (type SYMBOL) (default ANY))
	(slot primarySpecialty (type INSTANCE))
	(multislot specializedThemesOfInterest (type INSTANCE))
	(multislot specialtiesOfInterest (type INSTANCE))
)


;;; Template for an unordered recommendation list
(deftemplate MAIN::UnorderedRecommendationList
	(multislot recommendations (type INSTANCE))
)

;;; Template for an ordered recommendation list
(deftemplate MAIN::OrderedRecommendationList
	(multislot recommendations (type INSTANCE))
)



;;; ************************************************************************
;;; Function Declarations 
;;; ************************************************************************


;;; TODO : do we need this function ? If yes, uncomment
;;; Function that returns the element with the most points
(deffunction maxPoints ($?list)
	(bind ?max-1)
	(bind ?element nil)
	(progn$ (?curr-rec $?list)
		(bind ?curr-cont (send ?curr-rec get-course))
		(bind ?curr-point (send ?curr-rec get-points))
		(if (> ?curr-point ?max)
			then 
			(bind ?max ?curr-point)
			(bind ?element ?curr-rec)
		)
	)
	?element
)



;;; Fuction to ask a question that accepts any answer
(deffunction generalQuestion (?question)
    (format t "%s " ?question)
	(bind ?answer (read))
	(while (not (lexemep ?answer)) do
		(format t "%s " ?question)
		(bind ?answer (read))
    )
	?answer
)

(deffunction integerQuestion (?question)
    (format t "%s " ?question)
	(bind ?answer (read))
	(while (not (integerp ?answer)) do
		(format t "%s " ?question)
		(bind ?answer (read))
    )
	?answer
)


;;; Function to ask a question with a specified series of accepted answers
(deffunction MAIN::QuestionWithOptions (?question $?allowed-values)
   (format t "%s "?question)
   (progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
	)
   (printout t ": ")
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (format t "%s "?question)
	  (progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
	  )
	  (printout t ": ")
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   ?answer
)


;;; Function to ask a question that accepts a unique numerical answer
(deffunction MAIN::NumericQuestion (?question ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?question ?rangini ?rangfi)
	(bind ?answer (read))
	(while (not(and(>= ?answer ?rangini)(<= ?answer ?rangfi))) do
		(format t "%s [%d, %d] " ?question ?rangini ?rangfi)
		(bind ?answer (read))
	)
	?answer
)


;;; TODO: Add functions for other types of questions if needed


;;; Function to ask a question that accepts specific numbered answers
(deffunction MAIN::SpecificNumberedQuestion (?question $?possible-values)
    (bind ?line (format nil "%s" ?question))
    (printout t ?line crlf)
    (progn$ (?var ?possible-values) 
            (bind ?line (format nil "  %d. %s" ?var-index ?var))
            (printout t ?line crlf)
    )
    (bind ?answer (NumericQuestion "Please, choose an option:" 1 (length$ ?possible-values)))
	?answer
)


;;; Function to ask a question that accepts multiple specific numbered answers
(deffunction SpecificMultiQuestion (?question $?possible-values)
    (bind ?line (format nil "%s" ?question))
    (printout t ?line crlf)
    (progn$ (?var ?possible-values) 
            (bind ?line (format nil "  %d. %s" ?var-index ?var))
            (printout t ?line crlf)
    )
    (format t "%s" "Please, enter the numbers of your preferred options separated with a space: ")
    (bind ?ans (readline))
    (bind ?numbers (str-explode ?ans))
    (bind $?list (create$ ))
    (progn$ (?var ?numbers) 
        (if (and (integerp ?var) (and (>= ?var 1) (<= ?var (length$ ?possible-values))))
            then 
                (if (not (member$ ?var ?list))
                    then (bind ?list (insert$ ?list (+ (length$ ?list) 1) ?var))
                )
        ) 
    )
    ?list
)



;;; ************************************************************************
;;; Rule and Fact Declarations 
;;; ************************************************************************




(defrule CreateRecommendationsList 
	(not (UnorderedRecommendationList))
	=>
	(assert (UnorderedRecommendationList))
)

(defrule CreateOrderedList 
	(not (OrderedRecommendationList))
	(UnorderedRecommendationList (recommendations $?list))
	=>
	(bind $?result (create$ ))
	(while (and (not (eq (length$ $?list) 0)) (< (length$ $?result) 21))  do
		(bind ?curr-rec (maxPoints $?lista))
		(bind $?lista (delete-member$ $?lista ?curr-rec))
		(bind $?result (insert$ $?result (+ (length$ $?result) 1) ?curr-rec))
	)
	(assert (OrderedRecommendationList (recommendations $?result)))
)

(defrule MAIN::initialRule "First rule"
	(declare (salience 10))
	=>
	(printout t "Welcome to our course recommendation system." crlf)
	(printout t crlf)
	(focus UserQuestions)
)

;;; Modulo recopilacion

(defrule UserQuestions::AskMaxHours 
	(not (Preferences))
	=>
	(bind ?maxNumOfDevotedHours (integerQuestion "Please enter the maximum hours you can dedicate per week:"))
	(assert (Preferences (maxNumOfDevotedHours ?maxNumOfDevotedHours)))
)
