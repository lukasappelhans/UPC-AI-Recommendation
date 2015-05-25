;;; ************************************************************************
;;; Ontology 
;;; ************************************************************************
; Mon May 25 13:25:51 CEST 2015
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
		(allowed-values spanish catalan english catalan_spanish catalan_spanish_english spanish_english)
		(default catalan_spanish)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prerequisites
;+		(comment "The prerequisites of a course. Can be Passed or Unpassed Courses.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(single-slot quantityOfWork
		(type SYMBOL)
		(allowed-values high medium low)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semesterOfRegistration
;+		(comment "The semester for which the recommendation will be done.")
		(type INTEGER)
		(range 1 20)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfTheme
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxNumOfLabHours
;+		(comment "The maximum number of Laboratory hours that a student can accept for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfSpecialty
		(type STRING)
;+		(cardinality 1 1)
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
	(single-slot hours
		(type SYMBOL)
		(allowed-values morning afternoon both)
		(default morning)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot mark
;+		(comment "The final mark of a student for this Passed Course.\nIf the course is unpassed the default value is -1.")
		(type INTEGER)
		(range -1 10)
		(default -1)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semesterOpen
;+		(comment "The semester in which the course is available. (Winter, spring or Both)")
		(type SYMBOL)
		(allowed-values spring winter both)
		(default both)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot coursesContained
;+		(comment "The courses that a theme contains.")
		(type INSTANCE)
;+		(allowed-classes)
;+		(inverse-slot specializedTheme)
		(create-accessor read-write))
	(single-slot ECTS
;+		(comment "The ECTS credits of a course.")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot courses
;+		(comment "Courses that offer this competence.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(multislot specialtiesOfInterest
;+		(comment "The Specialties that a student is interested in completing,")
		(type INSTANCE)
;+		(allowed-classes Specialty)
		(create-accessor read-write))
	(single-slot preferredHours
;+		(comment "The type of hours that a student prefers.")
		(type SYMBOL)
		(allowed-values morning afternoon any)
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
;+		(inverse-slot coursesOfSpecialty)
		(create-accessor read-write))
	(single-slot labHours
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot acceptedCourseDifficulty
;+		(comment "The difficulty level of courses that is accepted by a student")
		(type SYMBOL)
		(allowed-values easy difficult any)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot passedCourses
;+		(comment "Courses that a student has already passed")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(single-slot level
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot coursesOfSpecialty
		(type INSTANCE)
;+		(allowed-classes Course)
;+		(inverse-slot specialty)
		(create-accessor read-write))
	(single-slot nameOfCompetence
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfCourse
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot course
;+		(comment "Competence that a course offers.")
		(type INSTANCE)
;+		(allowed-classes)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxNumOfDevotedHours
;+		(comment "The maximum number of hours of devotion that a student can accept for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot difficulty
;+		(comment "The degree of difficulty of a course.")
		(type SYMBOL)
		(allowed-values easy medium difficult)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot theoryHours
		(type INTEGER)
		(default 4)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot type
;+		(comment "Type of course (compulsory etc.)")
		(type SYMBOL)
		(allowed-values compulsory optional specialization_compulsory specialization_complementary)
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
	(multislot specializedThemesOfInterest
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(multislot specializedThemesIncluded
;+		(comment "Specialized Themes included in a specialty,")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot problemHours
		(type INTEGER)
		(default 0)
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
		(allowed-values high medium low)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot creditsAlreadyObtained
;+		(comment "Credits already obtained by a student for this competence.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfStudent
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specializedThemesContained
;+		(comment "Specialized themes that a course contains.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot specializedTheme
;+		(comment "Specialized Themes to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
;+		(cardinality 0 1)
;+		(inverse-slot coursesContained)
		(create-accessor read-write))
	(single-slot numberOfEnrolledPreviousSemester
;+		(comment "The number of enrolled students for the previous semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Student
	(is-a USER)
	(role concrete)
	(multislot specialtiesOfInterest
;+		(comment "The Specialties that a student is interested in completing,")
		(type INSTANCE)
;+		(allowed-classes Specialty)
		(create-accessor read-write))
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
	(multislot specializedThemesOfInterest
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot preferredHours
;+		(comment "The type of hours that a student prefers.")
		(type SYMBOL)
		(allowed-values morning afternoon any)
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
		(range 1 20)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot passedCourseSemester
;+		(comment "The semester during which a student passed a course. Entered in the same order as the Passed Courses.")
		(type INTEGER)
		(range 1 8)
		(create-accessor read-write))
	(single-slot maxNumOfLabHours
;+		(comment "The maximum number of Laboratory hours that a student can accept for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot marks
;+		(comment "The marks of a student. Entered in the same order as the Passed Courses.")
		(type INTEGER)
		(range 0 10)
		(create-accessor read-write))
	(single-slot interestToCompletePrimarySpecialty
;+		(comment "The degree of the student's interest in completing their primarySpecialty during this semester.")
		(type SYMBOL)
		(allowed-values high medium low)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfStudent
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot acceptedCourseDifficulty
;+		(comment "The difficulty level of courses that is accepted by a student")
		(type SYMBOL)
		(allowed-values easy difficult any)
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
	(single-slot teachingLanguage
;+		(comment "The language(s) in which a course is taught.")
		(type SYMBOL)
		(allowed-values spanish catalan english catalan_spanish catalan_spanish_english spanish_english)
		(default catalan_spanish)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfCourse
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prerequisites
;+		(comment "The prerequisites of a course. Can be Passed or Unpassed Courses.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(single-slot problemHours
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot quantityOfWork
		(type SYMBOL)
		(allowed-values high medium low)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot project
;+		(comment "True if the course is a project - course")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot difficulty
;+		(comment "The degree of difficulty of a course.")
		(type SYMBOL)
		(allowed-values easy medium difficult)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot percentageOfPassedPreviousSemester
;+		(comment "The percentage of students that passed the course for the previous semester.")
		(type FLOAT)
		(range 0.0 100.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot theoryHours
		(type INTEGER)
		(default 4)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot hours
		(type SYMBOL)
		(allowed-values morning afternoon both)
		(default morning)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot specialty
;+		(comment "The specialty to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes Specialty)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semesterOpen
;+		(comment "The semester in which the course is available. (Winter, spring or Both)")
		(type SYMBOL)
		(allowed-values spring winter both)
		(default both)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot type
;+		(comment "Type of course (compulsory etc.)")
		(type SYMBOL)
		(allowed-values compulsory optional specialization_compulsory specialization_complementary)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot labHours
		(type INTEGER)
		(default 0)
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
	(single-slot specializedTheme
;+		(comment "Specialized Themes to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numberOfEnrolledPreviousSemester
;+		(comment "The number of enrolled students for the previous semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Theme
	(is-a USER)
	(role concrete)
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
	(multislot coursesContained
;+		(comment "The courses that a theme contains.")
		(type INSTANCE)
;+		(allowed-classes)
		(create-accessor read-write))
	(multislot relativeSpecializedThemes
;+		(comment "Specialized Themes that are relative to this theme.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write)))

(defclass Specialty
	(is-a USER)
	(role concrete)
	(single-slot nameOfSpecialty
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot specializedThemesIncluded
;+		(comment "Specialized Themes included in a specialty,")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(multislot coursesOfSpecialty
		(type INSTANCE)
;+		(allowed-classes Course)
		(create-accessor read-write)))

(defclass Competence
	(is-a USER)
	(role concrete)
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

(defclass CompetenceOfCourse "A competence that a course includes and its level."
	(is-a Competence)
	(role concrete)
	(single-slot level
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

;;; ************************************************************************
;;; Instances 
;;; ************************************************************************

(definstances instances

; Mon May 25 13:25:51 CEST 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")

([Practica2_Class0] of  Course

	(difficulty DIFFICULT)
	(ECTS 7.5)
	(labHours 0)
	(nameOfCourse "Physics")
	(numberOfEnrolledPreviousSemester 76)
	(problemHours 0)
	(project FALSE)
	(quantityOfWork HIGH)
	(semester 1)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30030])
	(specialty [Practica2_Class20001])
	(theoryHours 4)
	(type compulsory))

([Practica2_Class1] of  Course

	(ECTS 7.5)
	(labHours 1)
	(nameOfCourse "Programming 1")
	(numberOfEnrolledPreviousSemester 80)
	(problemHours 0)
	(semester 1)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30001])
	(specialty [Practica2_Class20001])
	(theoryHours 3)
	(type compulsory))

([Practica2_Class10000] of  Student

	(marks 9 7 10 5 6)
	(nameOfStudent "Juan_Martinez")
	(passedCourses
		[Practica2_Class7]
		[Practica2_Class0]
		[Practica2_Class2]
		[Practica2_Class3]
		[Practica2_Class4]
		[Practica2_Class10029])
	(passedCourseSemester 1 1 1 2 2)
	(semesterOfRegistration 3))

([Practica2_Class10008] of  Course

	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Databases")
	(numberOfEnrolledPreviousSemester 67)
	(prerequisites
		[Practica2_Class1]
		[Practica2_Class5])
	(problemHours 0)
	(semester 3)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30010])
	(specialty [Practica2_Class20001])
	(theoryHours 4)
	(type compulsory))

([Practica2_Class10009] of  Course

	(ECTS 6.0)
	(labHours 2)
	(nameOfCourse "Operating Systems")
	(numberOfEnrolledPreviousSemester 53)
	(prerequisites
		[Practica2_Class6]
		[Practica2_Class2])
	(problemHours 0)
	(semester 3)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30002])
	(specialty [Practica2_Class20001])
	(theoryHours 2)
	(type compulsory))

([Practica2_Class10010] of  Course

	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Data Structures and algorithmics")
	(numberOfEnrolledPreviousSemester 45)
	(prerequisites
		[Practica2_Class1]
		[Practica2_Class5])
	(problemHours 0)
	(semester 3)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30004])
	(specialty [Practica2_Class20001])
	(theoryHours 4)
	(type compulsory))

([Practica2_Class10011] of  Course

	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Computer Interfacing")
	(numberOfEnrolledPreviousSemester 37)
	(prerequisites
		[Practica2_Class6]
		[Practica2_Class2])
	(problemHours 0)
	(semester 3)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30011])
	(specialty [Practica2_Class20001])
	(theoryHours 4)
	(type compulsory))

([Practica2_Class10012] of  Course

	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Business and Economic Environment")
	(numberOfEnrolledPreviousSemester 30)
	(problemHours 0)
	(semester 4)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30018])
	(specialty [Practica2_Class20001])
	(theoryHours 4)
	(type compulsory))

([Practica2_Class10013] of  Course

	(corequisites [Practica2_Class10010])
	(ECTS 6.0)
	(labHours 1)
	(nameOfCourse "Introduction to Software Engineering")
	(numberOfEnrolledPreviousSemester 60)
	(prerequisites [Practica2_Class10008])
	(problemHours 0)
	(semester 4)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30005])
	(specialty [Practica2_Class20001])
	(theoryHours 3)
	(type compulsory))

([Practica2_Class10014] of  Course

	(corequisites [Practica2_Class10009])
	(ECTS 6.0)
	(labHours 2)
	(nameOfCourse "Computer Networks")
	(numberOfEnrolledPreviousSemester 46)
	(problemHours 0)
	(semester 4)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30009])
	(specialty [Practica2_Class20001])
	(theoryHours 2)
	(type compulsory))

([Practica2_Class10015] of  Course

	(corequisites
		[Practica2_Class10013]
		[Practica2_Class10008])
	(ECTS 6.0)
	(labHours 3)
	(nameOfCourse "Programming Projects")
	(numberOfEnrolledPreviousSemester 70)
	(problemHours 0)
	(project TRUE)
	(semester 4)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30001])
	(specialty [Practica2_Class20001])
	(theoryHours 1)
	(type compulsory))

([Practica2_Class10016] of  Course

	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Computer Architecture")
	(numberOfEnrolledPreviousSemester 50)
	(prerequisites
		[Practica2_Class6]
		[Practica2_Class10009])
	(problemHours 0)
	(semester 4)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30011])
	(specialty [Practica2_Class20001])
	(theoryHours 4)
	(type compulsory))

([Practica2_Class10017] of  Course

	(ECTS 6.0)
	(labHours 2)
	(nameOfCourse "Parallelism")
	(numberOfEnrolledPreviousSemester 43)
	(prerequisites
		[Practica2_Class10016]
		[Practica2_Class10010]
		[Practica2_Class10009])
	(problemHours 0)
	(semester 5)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30015])
	(specialty [Practica2_Class20001])
	(theoryHours 2)
	(type compulsory))

([Practica2_Class10018] of  Course

	(ECTS 6.0)
	(labHours 2)
	(nameOfCourse "Interaction and Interface Design")
	(numberOfEnrolledPreviousSemester 63)
	(prerequisites
		[Practica2_Class10010]
		[Practica2_Class3])
	(problemHours 0)
	(semester 6)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30014])
	(specialty [Practica2_Class20001])
	(theoryHours 2)
	(type compulsory))

([Practica2_Class10019] of  Specialty

	(coursesOfSpecialty
		[Practica2_Class10026]
		[Practica2_Class10033]
		[Practica2_Class10029]
		[Practica2_Class10024]
		[Practica2_Class10036]
		[Practica2_Class10025]
		[Practica2_Class10027]
		[Practica2_Class10031]
		[Practica2_Class10034]
		[Practica2_Class10035]
		[Practica2_Class10028]
		[Practica2_Class10030])
	(nameOfSpecialty "Computing"))

([Practica2_Class10020] of  Specialty

	(coursesOfSpecialty
		[Practica2_Class30038]
		[Practica2_Class30039]
		[Practica2_Class30040]
		[Practica2_Class30041]
		[Practica2_Class30042]
		[Practica2_Class30043]
		[Practica2_Class30044]
		[Practica2_Class30045]
		[Practica2_Class30046]
		[Practica2_Class30047]
		[Practica2_Class30048]
		[Practica2_Class30049]
		[Practica2_Class30050])
	(nameOfSpecialty "Computer Engineering"))

([Practica2_Class10021] of  Specialty

	(coursesOfSpecialty
		[Practica2_Class30051]
		[Practica2_Class30052]
		[Practica2_Class30053]
		[Practica2_Class30054]
		[Practica2_Class30055]
		[Practica2_Class30056]
		[Practica2_Class30057]
		[Practica2_Class30058]
		[Practica2_Class30059]
		[Practica2_Class30060]
		[Practica2_Class30061]
		[Practica2_Class30062])
	(nameOfSpecialty "Software Engineering"))

([Practica2_Class10022] of  Specialty

	(coursesOfSpecialty
		[Practica2_Class30063]
		[Practica2_Class30064]
		[Practica2_Class30066]
		[Practica2_Class30067]
		[Practica2_Class30068]
		[Practica2_Class30070]
		[Practica2_Class30071]
		[Practica2_Class30072]
		[Practica2_Class30073])
	(nameOfSpecialty "Information Systems"))

([Practica2_Class10023] of  Specialty

	(coursesOfSpecialty
		[Practica2_Class30069]
		[Practica2_Class30075]
		[Practica2_Class30076]
		[Practica2_Class30077]
		[Practica2_Class30074]
		[Practica2_Class30079]
		[Practica2_Class30080]
		[Practica2_Class30082]
		[Practica2_Class30083]
		[Practica2_Class30078])
	(nameOfSpecialty "Information Technologies"))

([Practica2_Class10024] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(nameOfCourse "Algorithmics")
	(numberOfEnrolledPreviousSemester 60)
	(prerequisites
		[Practica2_Class10010]
		[Practica2_Class10038])
	(problemHours 2)
	(semester 5)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30004])
	(specialty [Practica2_Class10019])
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class10025] of  Course

	(ECTS 6.0)
	(labHours 2)
	(nameOfCourse "Graphics")
	(numberOfEnrolledPreviousSemester 40)
	(prerequisites
		[Practica2_Class10018]
		[Practica2_Class10015])
	(problemHours 0)
	(semester 5)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30014])
	(specialty [Practica2_Class10019])
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class10026] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(labHours 1)
	(nameOfCourse "Artificial Intelligence")
	(numberOfEnrolledPreviousSemester 45)
	(prerequisites [Practica2_Class10010])
	(problemHours 1)
	(project FALSE)
	(semester 5)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30003])
	(specialty [Practica2_Class10019])
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class10027] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Logic in Information Technology")
	(numberOfEnrolledPreviousSemester 19)
	(prerequisites [Practica2_Class10010])
	(problemHours 1)
	(semester 5)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30017])
	(specialty [Practica2_Class10019])
	(theoryHours 3)
	(type specialization_compulsory))

([Practica2_Class10028] of  Course

	(ECTS 6.0)
	(labHours 2)
	(nameOfCourse "Programming Languages")
	(numberOfEnrolledPreviousSemester 80)
	(prerequisites [Practica2_Class10015])
	(problemHours 0)
	(semester 6)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30001])
	(specialty [Practica2_Class10019])
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class10029] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(labHours 2)
	(nameOfCourse "Theory of Computation")
	(numberOfEnrolledPreviousSemester 39)
	(prerequisites [Practica2_Class10010])
	(problemHours 2)
	(semester 6)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30004])
	(specialty [Practica2_Class10019])
	(theoryHours 0)
	(type specialization_compulsory))

([Practica2_Class10030] of  Course

	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Advanced Algorithmics")
	(numberOfEnrolledPreviousSemester 30)
	(prerequisites [Practica2_Class10024])
	(problemHours 3)
	(project TRUE)
	(semester 6)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30004])
	(specialty [Practica2_Class10019])
	(theoryHours 2)
	(type specialization_complementary))

([Practica2_Class10031] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Machine Learning")
	(numberOfEnrolledPreviousSemester 19)
	(prerequisites [Practica2_Class10038])
	(problemHours 0)
	(semester 6)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30003])
	(specialty [Practica2_Class10019])
	(theoryHours 4)
	(type specialization_complementary))

([Practica2_Class10033] of  Course

	(ECTS 6.0)
	(hours afternoon)
	(labHours 2)
	(nameOfCourse "Compilers")
	(numberOfEnrolledPreviousSemester 30)
	(prerequisites [Practica2_Class10029])
	(problemHours 0)
	(semester 6)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30001])
	(specialty [Practica2_Class10019])
	(theoryHours 2)
	(type specialization_complementary))

([Practica2_Class10034] of  Course

	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Numerical Computation")
	(numberOfEnrolledPreviousSemester 29)
	(prerequisites
		[Practica2_Class3]
		[Practica2_Class4])
	(problemHours 0)
	(semester 6)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30028])
	(specialty [Practica2_Class10019])
	(theoryHours 4)
	(type specialization_complementary))

([Practica2_Class10035] of  Course

	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Operations Research")
	(numberOfEnrolledPreviousSemester 30)
	(prerequisites [Practica2_Class10038])
	(problemHours 0)
	(semester 6)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30016])
	(specialty [Practica2_Class10019])
	(theoryHours 4)
	(type specialization_complementary))

([Practica2_Class10036] of  Course

	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Distributed Intelligent Systems")
	(numberOfEnrolledPreviousSemester 26)
	(prerequisites [Practica2_Class10026])
	(problemHours 0)
	(semester 6)
	(semesterOpen spring)
	(specializedTheme [Practica2_Class30003])
	(specialty [Practica2_Class10019])
	(theoryHours 4)
	(type specialization_complementary))

([Practica2_Class10038] of  Course

	(ECTS 6.0)
	(labHours 0)
	(nameOfCourse "Probability and Statistics")
	(numberOfEnrolledPreviousSemester 77)
	(prerequisites
		[Practica2_Class3]
		[Practica2_Class4])
	(problemHours 1)
	(semester 3)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30028])
	(specialty [Practica2_Class20001])
	(theoryHours 3)
	(type compulsory))

([Practica2_Class2] of  Course

	(ECTS 7.5)
	(labHours 0)
	(nameOfCourse "Introduction to Computers")
	(numberOfEnrolledPreviousSemester 65)
	(problemHours 0)
	(semester 1)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30011])
	(specialty [Practica2_Class20001])
	(theoryHours 4)
	(type compulsory))

([Practica2_Class20001] of  Specialty

	(coursesOfSpecialty
		[Practica2_Class10012]
		[Practica2_Class10016]
		[Practica2_Class10011]
		[Practica2_Class10014]
		[Practica2_Class6]
		[Practica2_Class10010]
		[Practica2_Class10008]
		[Practica2_Class10018]
		[Practica2_Class2]
		[Practica2_Class10013]
		[Practica2_Class7]
		[Practica2_Class3]
		[Practica2_Class4]
		[Practica2_Class10009]
		[Practica2_Class10017]
		[Practica2_Class0]
		[Practica2_Class10038]
		[Practica2_Class1]
		[Practica2_Class5]
		[Practica2_Class10015]
		[Practica2_Class30085]
		[Practica2_Class30087]
		[Practica2_Class30089]
		[Practica2_Class30090]
		[Practica2_Class30091]
		[Practica2_Class30092]
		[Practica2_Class30093]
		[Practica2_Class30094]
		[Practica2_Class30095]
		[Practica2_Class30096]
		[Practica2_Class30098]
		[Practica2_Class30099]
		[Practica2_Class30100]
		[Practica2_Class30101]
		[Practica2_Class30102]
		[Practica2_Class30103]
		[Practica2_Class30104]
		[Practica2_Class30105]
		[Practica2_Class30106]
		[Practica2_Class30107]
		[Practica2_Class30108]
		[Practica2_Class30109]
		[Practica2_Class30111]
		[Practica2_Class30113]
		[Practica2_Class30114]
		[Practica2_Class30115])
	(nameOfSpecialty "General"))

([Practica2_Class3] of  Course

	(ECTS 7.5)
	(labHours 0)
	(nameOfCourse "Mathematics 1")
	(numberOfEnrolledPreviousSemester 79)
	(problemHours 0)
	(semester 2)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30029])
	(specialty [Practica2_Class20001])
	(theoryHours 4)
	(type compulsory))

([Practica2_Class30001] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30057]
		[Practica2_Class10033]
		[Practica2_Class1]
		[Practica2_Class5]
		[Practica2_Class10028]
		[Practica2_Class10015])
	(nameOfTheme "Programming Languages and Concepts")
	(relativeSpecializedThemes
		[Practica2_Class30002]
		[Practica2_Class30005]
		[Practica2_Class30007]))

([Practica2_Class30002] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30044]
		[Practica2_Class30074]
		[Practica2_Class10009]
		[Practica2_Class30069]
		[Practica2_Class30062]
		[Practica2_Class30042])
	(nameOfTheme "Operating Systems")
	(relativeSpecializedThemes
		[Practica2_Class30012]
		[Practica2_Class30011]
		[Practica2_Class30015]))

([Practica2_Class30003] of  SpecializedTheme

	(coursesContained
		[Practica2_Class10026]
		[Practica2_Class10036]
		[Practica2_Class30060]
		[Practica2_Class10031])
	(nameOfTheme "Artificial Intelligence")
	(relativeSpecializedThemes
		[Practica2_Class30004]
		[Practica2_Class30020]
		[Practica2_Class30017]))

([Practica2_Class30004] of  SpecializedTheme

	(coursesContained
		[Practica2_Class10030]
		[Practica2_Class10024]
		[Practica2_Class10010]
		[Practica2_Class10029])
	(nameOfTheme "Algorithms")
	(relativeSpecializedThemes
		[Practica2_Class30028]
		[Practica2_Class30029]))

([Practica2_Class30005] of  SpecializedTheme

	(coursesContained
		[Practica2_Class10013]
		[Practica2_Class30054]
		[Practica2_Class30051])
	(nameOfTheme "Software Engineering")
	(relativeSpecializedThemes
		[Practica2_Class30006]
		[Practica2_Class30001]
		[Practica2_Class30007]))

([Practica2_Class30006] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30059]
		[Practica2_Class30064]
		[Practica2_Class30049])
	(nameOfTheme "Information Systems")
	(relativeSpecializedThemes
		[Practica2_Class30006]
		[Practica2_Class30005]))

([Practica2_Class30007] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30068]
		[Practica2_Class30076]
		[Practica2_Class30056]
		[Practica2_Class30055])
	(nameOfTheme "Software Projects"))

([Practica2_Class30008] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30075]
		[Practica2_Class30082]
		[Practica2_Class30052])
	(nameOfTheme "Internet")
	(relativeSpecializedThemes
		[Practica2_Class30014]
		[Practica2_Class30009]))

([Practica2_Class30009] of  SpecializedTheme

	(coursesContained
		[Practica2_Class10014]
		[Practica2_Class30043]
		[Practica2_Class30079]
		[Practica2_Class30080]
		[Practica2_Class30083]
		[Practica2_Class30078])
	(nameOfTheme "Network and Communication Systems")
	(relativeSpecializedThemes
		[Practica2_Class30008]
		[Practica2_Class30025]))

([Practica2_Class30010] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30058]
		[Practica2_Class30053]
		[Practica2_Class10008])
	(nameOfTheme "Databases")
	(relativeSpecializedThemes [Practica2_Class30010]))

([Practica2_Class30011] of  SpecializedTheme

	(coursesContained
		[Practica2_Class10016]
		[Practica2_Class10011]
		[Practica2_Class6]
		[Practica2_Class2])
	(nameOfTheme "Computer Architecture")
	(relativeSpecializedThemes
		[Practica2_Class30012]
		[Practica2_Class30002]))

([Practica2_Class30012] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30047]
		[Practica2_Class30038]
		[Practica2_Class30041]
		[Practica2_Class30039]
		[Practica2_Class30040]
		[Practica2_Class30050])
	(nameOfTheme "Advanced Computer Architecture")
	(relativeSpecializedThemes
		[Practica2_Class30011]
		[Practica2_Class30002]
		[Practica2_Class30015]))

([Practica2_Class30013] of  SpecializedTheme

	(coursesContained [Practica2_Class30048])
	(nameOfTheme "Signals")
	(relativeSpecializedThemes [Practica2_Class30022]))

([Practica2_Class30014] of  SpecializedTheme

	(coursesContained
		[Practica2_Class10025]
		[Practica2_Class10018])
	(nameOfTheme "Graphics and Interface Design")
	(relativeSpecializedThemes
		[Practica2_Class30028]
		[Practica2_Class30019]
		[Practica2_Class30026]))

([Practica2_Class30015] of  SpecializedTheme

	(coursesContained
		[Practica2_Class10017]
		[Practica2_Class30045])
	(nameOfTheme "Parallelism")
	(relativeSpecializedThemes
		[Practica2_Class30012]
		[Practica2_Class30011]
		[Practica2_Class30002]))

([Practica2_Class30016] of  SpecializedTheme

	(coursesContained [Practica2_Class10035])
	(nameOfTheme "Operations Research")
	(relativeSpecializedThemes
		[Practica2_Class30028]
		[Practica2_Class30018]))

([Practica2_Class30017] of  SpecializedTheme

	(coursesContained [Practica2_Class10027])
	(nameOfTheme "Logic")
	(relativeSpecializedThemes
		[Practica2_Class30004]
		[Practica2_Class30029]))

([Practica2_Class30018] of  SpecializedTheme

	(coursesContained
		[Practica2_Class10012]
		[Practica2_Class30071]
		[Practica2_Class30066]
		[Practica2_Class30067]
		[Practica2_Class30072]
		[Practica2_Class30073])
	(nameOfTheme "Entrepreneurship and Innovation")
	(relativeSpecializedThemes
		[Practica2_Class30028]
		[Practica2_Class30016]))

([Practica2_Class30019] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30061]
		[Practica2_Class30093]
		[Practica2_Class30090]
		[Practica2_Class30091])
	(nameOfTheme "Computer Vision and Virtual Reality")
	(relativeSpecializedThemes
		[Practica2_Class30028]
		[Practica2_Class30014]
		[Practica2_Class30026]))

([Practica2_Class30020] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30095]
		[Practica2_Class30094]
		[Practica2_Class30096])
	(nameOfTheme "Human-Centered Technology")
	(relativeSpecializedThemes [Practica2_Class30021]))

([Practica2_Class30021] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30099]
		[Practica2_Class30100]
		[Practica2_Class30098])
	(nameOfTheme "Social and Environmental Issues")
	(relativeSpecializedThemes [Practica2_Class30020]))

([Practica2_Class30022] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30101]
		[Practica2_Class30102])
	(nameOfTheme "Robotics and Automatic Systems")
	(relativeSpecializedThemes
		[Practica2_Class30003]
		[Practica2_Class30013]))

([Practica2_Class30023] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30106]
		[Practica2_Class30104]
		[Practica2_Class30103])
	(nameOfTheme "Supercomputing and Scientific Applications")
	(relativeSpecializedThemes
		[Practica2_Class30004]
		[Practica2_Class30028]
		[Practica2_Class30025]))

([Practica2_Class30024] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30085]
		[Practica2_Class30063]
		[Practica2_Class30046]
		[Practica2_Class30107]
		[Practica2_Class30108]
		[Practica2_Class30070])
	(nameOfTheme "Data Processing")
	(relativeSpecializedThemes
		[Practica2_Class30010]
		[Practica2_Class30025]))

([Practica2_Class30025] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30105]
		[Practica2_Class30077])
	(nameOfTheme "Security")
	(relativeSpecializedThemes
		[Practica2_Class30028]
		[Practica2_Class30009]))

([Practica2_Class30026] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30087]
		[Practica2_Class30092]
		[Practica2_Class30109])
	(nameOfTheme "Video Games and Media Technologies")
	(relativeSpecializedThemes
		[Practica2_Class30028]
		[Practica2_Class30019]
		[Practica2_Class30014]))

([Practica2_Class30027] of  SpecializedTheme

	(coursesContained
		[Practica2_Class30111]
		[Practica2_Class30113]
		[Practica2_Class30114])
	(nameOfTheme "Technical Communication in Academic and Professional Settings"))

([Practica2_Class30028] of  SpecializedTheme

	(coursesContained
		[Practica2_Class10034]
		[Practica2_Class10038]
		[Practica2_Class30115])
	(nameOfTheme "Applied Mathematics")
	(relativeSpecializedThemes
		[Practica2_Class30030]
		[Practica2_Class30029]))

([Practica2_Class30029] of  SpecializedTheme

	(coursesContained
		[Practica2_Class7]
		[Practica2_Class3]
		[Practica2_Class4])
	(nameOfTheme "Theoretical Mathematics")
	(relativeSpecializedThemes
		[Practica2_Class30028]
		[Practica2_Class30030]))

([Practica2_Class30030] of  SpecializedTheme

	(coursesContained [Practica2_Class0])
	(nameOfTheme "Physics")
	(relativeSpecializedThemes
		[Practica2_Class30028]
		[Practica2_Class30029]))

([Practica2_Class30031] of  GeneralTheme

	(nameOfTheme "Programming and Software")
	(specializedThemesContained
		[Practica2_Class30019]
		[Practica2_Class30014]
		[Practica2_Class30006]
		[Practica2_Class30008]
		[Practica2_Class30002]
		[Practica2_Class30015]
		[Practica2_Class30001]
		[Practica2_Class30025]
		[Practica2_Class30005]
		[Practica2_Class30007]
		[Practica2_Class30026]))

([Practica2_Class30032] of  GeneralTheme

	(nameOfTheme "Theoretical Computer Science")
	(specializedThemesContained
		[Practica2_Class30004]
		[Practica2_Class30003]
		[Practica2_Class30017]
		[Practica2_Class30025]
		[Practica2_Class30023]))

([Practica2_Class30033] of  GeneralTheme

	(nameOfTheme "Data Management")
	(specializedThemesContained
		[Practica2_Class30024]
		[Practica2_Class30010]))

([Practica2_Class30034] of  GeneralTheme

	(nameOfTheme "Networks")
	(specializedThemesContained
		[Practica2_Class30008]
		[Practica2_Class30009]))

([Practica2_Class30035] of  GeneralTheme

	(nameOfTheme "Computer Architecture and Hardware")
	(specializedThemesContained
		[Practica2_Class30012]
		[Practica2_Class30011]
		[Practica2_Class30015]
		[Practica2_Class30022]
		[Practica2_Class30013]))

([Practica2_Class30036] of  GeneralTheme

	(nameOfTheme "Mathematics and Physics")
	(specializedThemesContained
		[Practica2_Class30028]
		[Practica2_Class30030]
		[Practica2_Class30029]))

([Practica2_Class30037] of  GeneralTheme

	(nameOfTheme "Other (Social and Environmental Issues, Academic Skills, Business Concepts)")
	(specializedThemesContained
		[Practica2_Class30018]
		[Practica2_Class30020]
		[Practica2_Class30016]
		[Practica2_Class30021]
		[Practica2_Class30027]))

([Practica2_Class30038] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Computer Architecture II")
	(numberOfEnrolledPreviousSemester 35)
	(prerequisites [Practica2_Class10016])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30012])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type specialization_compulsory))

([Practica2_Class30039] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Design of Microcomputer-Based Systems")
	(numberOfEnrolledPreviousSemester 20)
	(prerequisites [Practica2_Class10011])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30012])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30040] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Multiprocessors")
	(numberOfEnrolledPreviousSemester 32)
	(prerequisites
		[Practica2_Class30038]
		[Practica2_Class10017])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30012])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type specialization_compulsory))

([Practica2_Class30041] of  Course

	(corequisites
		[Practica2_Class30038]
		[Practica2_Class30039]
		[Practica2_Class30042])
	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Computer Engineering Project")
	(numberOfEnrolledPreviousSemester 36)
	(problemHours 0)
	(project TRUE)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30012])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 1)
	(type specialization_compulsory))

([Practica2_Class30042] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Operating Systems II")
	(numberOfEnrolledPreviousSemester 36)
	(prerequisites [Practica2_Class10009])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30002])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30043] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Computer Networks II")
	(numberOfEnrolledPreviousSemester 52)
	(prerequisites [Practica2_Class10014])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30009])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30044] of  Course

	(corequisites [Practica2_Class30042])
	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Advanced Concepts on Operating Systems")
	(numberOfEnrolledPreviousSemester 25)
	(problemHours 0)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30002])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_complementary))

([Practica2_Class30045] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Programming and Parallel Architectures")
	(numberOfEnrolledPreviousSemester 40)
	(prerequisites [Practica2_Class10017])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30015])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_complementary))

([Practica2_Class30046] of  Course

	(corequisites [Practica2_Class10009])
	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Data-Processing Centers")
	(numberOfEnrolledPreviousSemester 22)
	(prerequisites [Practica2_Class10014])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30024])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_complementary))

([Practica2_Class30047] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Awareness of Architecture in Programming")
	(numberOfEnrolledPreviousSemester 16)
	(prerequisites [Practica2_Class10016])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30012])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_complementary))

([Practica2_Class30048] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Digital Signal Processing")
	(numberOfEnrolledPreviousSemester 22)
	(prerequisites [Practica2_Class10011])
	(problemHours 1)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30013])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_complementary))

([Practica2_Class30049] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Real-Time Systems")
	(numberOfEnrolledPreviousSemester 21)
	(prerequisites
		[Practica2_Class30039]
		[Practica2_Class10009])
	(problemHours 0)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30006])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type specialization_complementary))

([Practica2_Class30050] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "VLSI")
	(numberOfEnrolledPreviousSemester 24)
	(prerequisites [Practica2_Class30038])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30012])
	(specialty [Practica2_Class10020])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_complementary))

([Practica2_Class30051] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Software Architecture")
	(numberOfEnrolledPreviousSemester 48)
	(prerequisites [Practica2_Class10013])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30005])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type specialization_compulsory))

([Practica2_Class30052] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Web Services and Applications")
	(numberOfEnrolledPreviousSemester 28)
	(prerequisites [Practica2_Class30051])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30008])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30053] of  Course

	(corequisites [Practica2_Class10013])
	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Database Design")
	(numberOfEnrolledPreviousSemester 30)
	(prerequisites [Practica2_Class10008])
	(problemHours 0)
	(project TRUE)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30010])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30054] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Requirements Engineering")
	(numberOfEnrolledPreviousSemester 24)
	(prerequisites
		[Practica2_Class10012]
		[Practica2_Class10013])
	(problemHours 0)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30005])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_compulsory))

([Practica2_Class30055] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Software Project Management")
	(numberOfEnrolledPreviousSemester 63)
	(prerequisites
		[Practica2_Class10012]
		[Practica2_Class10013])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30007])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30056] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 3)
	(nameOfCourse "Software Engineering Project")
	(numberOfEnrolledPreviousSemester 66)
	(prerequisites
		[Practica2_Class30054]
		[Practica2_Class30051]
		[Practica2_Class30055])
	(problemHours 0)
	(project TRUE)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30007])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 1)
	(type specialization_compulsory))

([Practica2_Class30057] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Advanced Programming Concepts")
	(numberOfEnrolledPreviousSemester 60)
	(prerequisites
		[Practica2_Class10013]
		[Practica2_Class10015])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30001])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_complementary))

([Practica2_Class30058] of  Course

	(corequisites [Practica2_Class30053])
	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Concepts for Specialized Databases")
	(numberOfEnrolledPreviousSemester 26)
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30010])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type specialization_complementary))

([Practica2_Class30059] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Information Systems Concepts")
	(numberOfEnrolledPreviousSemester 38)
	(prerequisites
		[Practica2_Class10012]
		[Practica2_Class10008])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30006])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type specialization_complementary))

([Practica2_Class30060] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Knowledge Engineering and Intelligent Distributed Systems")
	(numberOfEnrolledPreviousSemester 22)
	(prerequisites [Practica2_Class30051])
	(problemHours 0)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30003])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type specialization_complementary))

([Practica2_Class30061] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "SImulation")
	(numberOfEnrolledPreviousSemester 26)
	(prerequisites [Practica2_Class10038])
	(problemHours 0)
	(project TRUE)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30019])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_complementary))

([Practica2_Class30062] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Operating Systems for Distributed Applications")
	(numberOfEnrolledPreviousSemester 26)
	(prerequisites [Practica2_Class10009])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30002])
	(specialty [Practica2_Class10021])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_complementary))

([Practica2_Class30063] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Data Analysis and Information Exploitation")
	(numberOfEnrolledPreviousSemester 23)
	(prerequisites
		[Practica2_Class10012]
		[Practica2_Class10008]
		[Practica2_Class10038])
	(problemHours 0)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30024])
	(specialty [Practica2_Class10022])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30064] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Information Systems Design")
	(numberOfEnrolledPreviousSemester 35)
	(prerequisites [Practica2_Class10013])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30006])
	(specialty [Practica2_Class10022])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30066] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "E-Business")
	(numberOfEnrolledPreviousSemester 25)
	(prerequisites [Practica2_Class30067])
	(problemHours 0)
	(project TRUE)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30018])
	(specialty [Practica2_Class10022])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30067] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Information Systems for Organizations")
	(numberOfEnrolledPreviousSemester 22)
	(prerequisites
		[Practica2_Class10012]
		[Practica2_Class10008])
	(problemHours 0)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30018])
	(specialty [Practica2_Class10022])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_compulsory))

([Practica2_Class30068] of  Course

	(corequisites
		[Practica2_Class30066]
		[Practica2_Class30054])
	(ECTS 6.0)
	(hours morning)
	(labHours 3)
	(nameOfCourse "Information Systems Project")
	(numberOfEnrolledPreviousSemester 35)
	(prerequisites [Practica2_Class30064])
	(problemHours 0)
	(project TRUE)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30007])
	(specialty [Practica2_Class10022])
	(teachingLanguage CATALAN)
	(theoryHours 1)
	(type specialization_compulsory))

([Practica2_Class30069] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 3)
	(nameOfCourse "Operating Systems Administration")
	(numberOfEnrolledPreviousSemester 32)
	(prerequisites [Practica2_Class10009])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30002])
	(specialty [Practica2_Class10023])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30070] of  Course

	(corequisites [Practica2_Class10015])
	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Searching and Analysis of Massive Information")
	(numberOfEnrolledPreviousSemester 18)
	(prerequisites
		[Practica2_Class10008]
		[Practica2_Class10038])
	(problemHours 0)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30024])
	(specialty [Practica2_Class10022])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_complementary))

([Practica2_Class30071] of  Course

	(corequisites [Practica2_Class30066])
	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Digital Strategy on Organizations")
	(numberOfEnrolledPreviousSemester 17)
	(problemHours 0)
	(project TRUE)
	(semesterOpen spring)
	(specializedTheme [Practica2_Class30018])
	(specialty [Practica2_Class10022])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_complementary))

([Practica2_Class30072] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Marketing on Internet")
	(numberOfEnrolledPreviousSemester 16)
	(prerequisites [Practica2_Class10012])
	(problemHours 0)
	(project TRUE)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30018])
	(specialty [Practica2_Class10022])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_complementary))

([Practica2_Class30073] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Viability of Business Projects")
	(numberOfEnrolledPreviousSemester 33)
	(prerequisites [Practica2_Class10012])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30018])
	(specialty [Practica2_Class10022])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_complementary))

([Practica2_Class30074] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Advanced Operating Systems")
	(numberOfEnrolledPreviousSemester 30)
	(prerequisites [Practica2_Class10009])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30002])
	(specialty [Practica2_Class10023])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30075] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Internet Protocols")
	(numberOfEnrolledPreviousSemester 35)
	(prerequisites [Practica2_Class10014])
	(problemHours 0)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30008])
	(specialty [Practica2_Class10023])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_compulsory))

([Practica2_Class30076] of  Course

	(corequisites
		[Practica2_Class30075]
		[Practica2_Class30069])
	(ECTS 6.0)
	(hours morning)
	(labHours 3)
	(nameOfCourse "Information Technologies Project")
	(numberOfEnrolledPreviousSemester 40)
	(problemHours 0)
	(project TRUE)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30007])
	(specialty [Practica2_Class10023])
	(teachingLanguage CATALAN)
	(theoryHours 1)
	(type specialization_compulsory))

([Practica2_Class30077] of  Course

	(corequisites
		[Practica2_Class10014]
		[Practica2_Class10009])
	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Security in Information Technology")
	(numberOfEnrolledPreviousSemester 37)
	(problemHours 0)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30025])
	(specialty [Practica2_Class10023])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type specialization_compulsory))

([Practica2_Class30078] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Information Transmission and Encoding")
	(numberOfEnrolledPreviousSemester 21)
	(prerequisites
		[Practica2_Class7]
		[Practica2_Class3]
		[Practica2_Class4])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30009])
	(specialty [Practica2_Class10023])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type specialization_complementary))

([Practica2_Class30079] of  Course

	(corequisites [Practica2_Class10014])
	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Computer Networks Technologies")
	(numberOfEnrolledPreviousSemester 23)
	(problemHours 0)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30009])
	(specialty [Practica2_Class10023])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type specialization_compulsory))

([Practica2_Class30080] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Distributed Applications")
	(numberOfEnrolledPreviousSemester 28)
	(prerequisites [Practica2_Class10014])
	(problemHours 0)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30009])
	(specialty [Practica2_Class10023])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_compulsory))

([Practica2_Class30082] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Mobile Internet")
	(numberOfEnrolledPreviousSemester 28)
	(prerequisites [Practica2_Class10014])
	(problemHours 0)
	(project TRUE)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30008])
	(specialty [Practica2_Class10023])
	(teachingLanguage CATALAN)
	(theoryHours 1)
	(type specialization_complementary))

([Practica2_Class30083] of  Course

	(corequisites
		[Practica2_Class30075]
		[Practica2_Class10009])
	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Distributed Network Systems")
	(numberOfEnrolledPreviousSemester 36)
	(prerequisites [Practica2_Class10014])
	(problemHours 0)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30009])
	(specialty [Practica2_Class10023])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type specialization_complementary))

([Practica2_Class30085] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Communication Devices and Protocols")
	(numberOfEnrolledPreviousSemester 30)
	(prerequisites [Practica2_Class10014])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30024])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30087] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Graphic Cards and Accelerators")
	(numberOfEnrolledPreviousSemester 23)
	(prerequisites
		[Practica2_Class10016]
		[Practica2_Class6])
	(problemHours 0)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30026])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30089] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Finance and Human Resources")
	(numberOfEnrolledPreviousSemester 14)
	(prerequisites [Practica2_Class10012])
	(problemHours 0)
	(semesterOpen spring)
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30090] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Curve and Surface Design")
	(numberOfEnrolledPreviousSemester 20)
	(prerequisites
		[Practica2_Class7]
		[Practica2_Class3])
	(problemHours 0)
	(semesterOpen spring)
	(specializedTheme [Practica2_Class30019])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30091] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Virtual Reality")
	(numberOfEnrolledPreviousSemester 22)
	(prerequisites [Practica2_Class10025])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30019])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type optional))

([Practica2_Class30092] of  Course

	(corequisites [Practica2_Class30091])
	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Physically Realistic Modelling and Animation")
	(numberOfEnrolledPreviousSemester 21)
	(problemHours 0)
	(project TRUE)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30026])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type optional))

([Practica2_Class30093] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Computer Vision")
	(numberOfEnrolledPreviousSemester 19)
	(prerequisites
		[Practica2_Class7]
		[Practica2_Class3]
		[Practica2_Class4])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30019])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type optional))

([Practica2_Class30094] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Medical Imaging")
	(numberOfEnrolledPreviousSemester 18)
	(problemHours 0)
	(semesterOpen spring)
	(specializedTheme [Practica2_Class30020])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type optional))

([Practica2_Class30095] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Interfacess and Accessibility")
	(numberOfEnrolledPreviousSemester 33)
	(problemHours 0)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30020])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type optional))

([Practica2_Class30096] of  Course

	(corequisites [Practica2_Class30048])
	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Natural Language Processing")
	(numberOfEnrolledPreviousSemester 19)
	(problemHours 0)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30020])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type optional))

([Practica2_Class30098] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Social and Environmental Issues of Information Technologies")
	(numberOfEnrolledPreviousSemester 30)
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30021])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30099] of  Course

	(corequisites [Practica2_Class10016])
	(ECTS 6.0)
	(hours morning)
	(labHours 3)
	(nameOfCourse "Architecture, repairing and recycling PCs")
	(numberOfEnrolledPreviousSemester 9)
	(problemHours 0)
	(project TRUE)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30021])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 1)
	(type optional))

([Practica2_Class30100] of  Course

	(corequisites [Practica2_Class1])
	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Free Software and Social Development")
	(numberOfEnrolledPreviousSemester 17)
	(problemHours 0)
	(project TRUE)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30021])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type optional))

([Practica2_Class30101] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Computer Systems for Automation")
	(numberOfEnrolledPreviousSemester 18)
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30022])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30102] of  Course

	(corequisites [Practica2_Class30101])
	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Robotics")
	(numberOfEnrolledPreviousSemester 28)
	(prerequisites [Practica2_Class4])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30022])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type optional))

([Practica2_Class30103] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Scientific Applications of Computing")
	(numberOfEnrolledPreviousSemester 21)
	(prerequisites
		[Practica2_Class3]
		[Practica2_Class4]
		[Practica2_Class1]
		[Practica2_Class5])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30023])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30104] of  Course

	(corequisites [Practica2_Class30105])
	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Quantum Computing and Cryptography")
	(numberOfEnrolledPreviousSemester 21)
	(prerequisites
		[Practica2_Class10030]
		[Practica2_Class0]
		[Practica2_Class5])
	(problemHours 0)
	(semesterOpen spring)
	(specializedTheme [Practica2_Class30023])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type optional))

([Practica2_Class30105] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Cryptography")
	(numberOfEnrolledPreviousSemester 29)
	(prerequisites [Practica2_Class3])
	(problemHours 2)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30025])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type optional))

([Practica2_Class30106] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Introduction to Supercomputing")
	(numberOfEnrolledPreviousSemester 13)
	(prerequisites
		[Practica2_Class10034]
		[Practica2_Class1]
		[Practica2_Class5])
	(problemHours 0)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30023])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30107] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Data and Image Compression")
	(numberOfEnrolledPreviousSemester 23)
	(problemHours 0)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30024])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type optional))

([Practica2_Class30108] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 1)
	(nameOfCourse "Data Mining")
	(numberOfEnrolledPreviousSemester 19)
	(prerequisites [Practica2_Class10008])
	(problemHours 0)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30024])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30109] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 2)
	(nameOfCourse "Video Games")
	(numberOfEnrolledPreviousSemester 21)
	(prerequisites [Practica2_Class10025])
	(problemHours 0)
	(project TRUE)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30026])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 2)
	(type optional))

([Practica2_Class30111] of  Course

	(ECTS 6.0)
	(hours afternoon)
	(labHours 0)
	(nameOfCourse "Academic Skills for Developing a Project")
	(numberOfEnrolledPreviousSemester 9)
	(problemHours 0)
	(semesterOpen winter)
	(specializedTheme [Practica2_Class30027])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30112] of  Specialty
)

([Practica2_Class30113] of  Course

	(ECTS 6.0)
	(hours afternoon)
	(labHours 0)
	(nameOfCourse "Academic Professional Speaking Skills")
	(numberOfEnrolledPreviousSemester 9)
	(problemHours 0)
	(semesterOpen spring)
	(specializedTheme [Practica2_Class30027])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30114] of  Course

	(ECTS 6.0)
	(hours afternoon)
	(labHours 0)
	(nameOfCourse "Writing Skills for Engineering")
	(numberOfEnrolledPreviousSemester 16)
	(problemHours 0)
	(semesterOpen spring)
	(specializedTheme [Practica2_Class30027])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 3)
	(type optional))

([Practica2_Class30115] of  Course

	(ECTS 6.0)
	(hours morning)
	(labHours 0)
	(nameOfCourse "Computational Geometry")
	(numberOfEnrolledPreviousSemester 20)
	(prerequisites [Practica2_Class3])
	(problemHours 0)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30028])
	(specialty [Practica2_Class20001])
	(teachingLanguage CATALAN)
	(theoryHours 4)
	(type optional))

([Practica2_Class4] of  Course

	(ECTS 7.5)
	(labHours 0)
	(nameOfCourse "Mathematics 2")
	(numberOfEnrolledPreviousSemester 78)
	(problemHours 0)
	(semester 2)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30029])
	(specialty [Practica2_Class20001])
	(theoryHours 4)
	(type compulsory))

([Practica2_Class5] of  Course

	(ECTS 7.5)
	(labHours 2)
	(nameOfCourse "Programming 2")
	(numberOfEnrolledPreviousSemester 79)
	(problemHours 0)
	(semester 2)
	(semesterOpen BOTH)
	(specializedTheme [Practica2_Class30001])
	(specialty [Practica2_Class20001])
	(theoryHours 2)
	(type compulsory))

([Practica2_Class6] of  Course

	(ECTS 7.5)
	(labHours 2)
	(nameOfCourse "Computer Organization")
	(numberOfEnrolledPreviousSemester 56)
	(problemHours 0)
	(semester 2)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30011])
	(specialty [Practica2_Class20001])
	(theoryHours 2)
	(type compulsory))

([Practica2_Class7] of  Course

	(ECTS 7.5)
	(labHours 0)
	(nameOfCourse "Mathematical Foundations")
	(numberOfEnrolledPreviousSemester 80)
	(problemHours 0)
	(semester 1)
	(semesterOpen both)
	(specializedTheme [Practica2_Class30029])
	(specialty [Practica2_Class20001])
	(theoryHours 4)
	(type compulsory))

)

;;; ************************************************************************
;;; End of code generated with Protege 
;;; ************************************************************************




;;; ************************************************************************
;;; Class Declarations 
;;; ************************************************************************


;;; Class of Recommendations suitable to create lists of recommendations

(defclass Recommendation 
	(is-a USER)
	(role concrete)
	(slot Course
		(type INSTANCE)
		(create-accessor read-write))
	(slot points
		(type INTEGER)
		(create-accessor read-write))
	(multislot justifications
		(type STRING)
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


(defmodule StudentPreferences
	(import MAIN ?ALL)
	(import StudentData deftemplate ?ALL)
	(export ?ALL)
)

;;; Module for processing of courses adequate for the student
(defmodule processing
	(import MAIN ?ALL)
	(import StudentData deftemplate ?ALL)
	(import StudentPreferences deftemplate ?ALL)
	(export ?ALL)
)

;;; Module for generation of solutions
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
	(format t "Hours: %s" ?self:hours)
	(printout t crlf)
	(format t "Difficulty: %s" ?self:difficulty)
	(printout t crlf)
	(format t "Specialty: %s" (send ?self:specialty get-nameOfSpecialty))
	(printout t crlf)
	;(progn$ (?specializedTheme (send ?self get-specializedThemes))
	;	(format t "%s " (send ?specializedTheme get-nameOfTheme))
	;)
        (printout t crlf)
)

;;; Print recommendations
(defmessage-handler MAIN::Recommendation print ()
	(printout t "-----------------------------------" crlf)
	(printout t (send ?self:Course print))
	(printout t crlf)
	(format t "Recommendation level: %d %n" ?self:points)
	(printout t "Justification: " crlf)
	(progn$ (?curr-just ?self:justifications)
		(printout t ?curr-just crlf)
	)
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

;;; Template for the passed Courses
(deftemplate MAIN::PassedCourses
	(slot nameOfPassedCourse (type STRING))
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
	(bind ?max -1)
	(bind ?element nil)
	(progn$ (?curr-rec $?list)
		(bind ?curr-cont (send ?curr-rec get-Course))
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



(defrule MAIN::initialRule "First rule"
	(declare (salience 10))
	=>
	(printout t "*********************************************" crlf)
	(printout t "Welcome to our course recommendation system." crlf) 
	(printout t "*********************************************" crlf)
	(printout t crlf)
	(printout t "Please, answer the following questions:" crlf)
	(printout t crlf)
	(focus StudentData)
)

;;; **************************************************************************

;;; Student Data collection Module

;;; TODO: first middle last name
(defrule StudentData::AskName "ask the student for their full name"
	(not (Student))
	=>
	(bind ?name (generalQuestion "What is your first and last name?"))
	(assert (Student (nameOfStudent ?name)))
	(focus StudentPreferences)
)

;;; A series of preference questions

(defrule StudentPreferences::AskPreferences1 
	(not (Preferences))
	=>
	(bind ?maxNumOfDevotedHours (integerQuestion "Please enter the maximum hours you can dedicate per week:"))

	(assert (Preferences (maxNumOfDevotedHours ?maxNumOfDevotedHours)))
)


(defrule StudentPreferences::AskPreferences2
	?u <- (Preferences (maxNumOfLabHours ?maxNumOfLabHours))
	(not(pref2))
	=>
	(bind ?mNOLH (integerQuestion "Please enter the maximum hours you can dedicate to labs per week:"))
	(modify ?u (maxNumOfLabHours ?mNOLH))
	(assert (pref2))
)

(defrule StudentPreferences::AskPreferences3
	?u <- (Preferences (maxNumOfCourses ?maxNumOfCourses))
	(not (pref3))
	=>
	(bind ?mNOC (integerQuestion "Please enter the maximum amount of courses:"))
	(modify ?u (maxNumOfCourses ?mNOC))
	(assert (pref3))
)

(defrule StudentPreferences::AskPreferences4
	?u <- (Preferences (preferredHours ?preferredHours))
	(not (pref4))
	=>
	(bind ?pH (QuestionWithOptions "Please enter your preferred hours:" morning afternoon any))
	(modify ?u (preferredHours ?pH))
	(assert (pref4))
)

(defrule StudentPreferences::AskPreferences5
	?u <- (Preferences (primarySpecialty ?primarySpecialty))
	(not (pref5))
	=>
	(bind ?pS (SpecificNumberedQuestion "Please enter your primary specialty:" "Computer Engineering" "Computing" "Information Systems" "Information Technologies" "Software Engineering"))
	(modify ?u (primarySpecialty ?pS))
	;(assert (primarySpecialty ?pS))
	(assert (pref5))
	(focus processing)
)


;;; **************************************************************************

;;; Processing Module


(defrule processing::AddAllCourses "All the courses are added and they are processed afterwards"
	(not (AddedAllCourses))
	=>
	(bind $?list (find-all-instances ((?inst Course)) TRUE))
	(progn$ (?curr-con ?list)
		(make-instance (gensym) of Recommendation (Course ?curr-con) (points (send ?curr-con get-points)))
	)	
	(assert (AddedAllCourses))
)


;;; Remove the unsuitable courses from the list

(defrule processing:processPassedCourses "remove the courses that the student has already passed"
	(Student (nameOfStudent ?name))
	?stu <- (object (is-a Student))
	(test (eq (send ?stu get-nameOfStudent) (str-cat ?name)))
	=>
	(printout t "The student records were found in the university database.")
	(printout t crlf)

	(bind ?i 1)
		(while (<= ?i (length$ (send ?stu get-passedCourses)))
		 do
		 (bind ?cour (nth$ ?i (send ?stu get-passedCourses)))
		 ;(printout t (send (instance-address * ?cour) get-nameOfCourse) crlf)
		 (assert (PassedCourses (nameOfPassedCourse (send (instance-address * ?cour) get-nameOfCourse))))
		 (bind ?i (+ ?i 1))
		)
)

(defrule processing:processPassedCoursesAux 
	(PassedCourses (nameOfPassedCourse ?n))
	?rec <- (object (is-a Recommendation) (Course ?cont1))
	?cont <- (object (is-a Course) (nameOfCourse ?name))
	(test (eq (instance-name ?cont) (instance-name ?cont1)))
	(test (eq ?n ?name))
	=>
		(send ?rec delete)
)


(defrule processing:processHours "remove the courses with unsuitable hours"
	(Preferences (preferredHours ?pH))
	?rec <- (object (is-a Recommendation) (Course ?cont1))
	?cont <- (object (is-a Course) (hours ?hours))
	(test (eq (instance-name ?cont) (instance-name ?cont1)))
	(test (not (eq ?pH any))) 
	(test (not (eq ?pH ?hours)))
	=>
	 (send ?rec delete)
)


;;; Increase the points of suitable courses according to a series of criteria

;;; TODO : FIX this
(defrule processing::processSpecialty "increases the points of the courses that belong in the student's primary specialty"
	(Preferences (primarySpecialty ?s))
	?rec <- (object (is-a Recommendation) (Course ?conta) (points ?p)(justifications $?just))
	?cont <- (object (is-a Course) (specialty ?spec))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	;(test (eq (send (instance-address * ?spec) get-nameOfSpecialty) "computing"))
	(test (or(or(or(or(and(eq (send (instance-address * ?spec) get-nameOfSpecialty) "Computer Engineering") (eq ?s 1)) (and(eq (send (instance-address * ?spec) get-nameOfSpecialty) "Computing") (eq ?s 2))) (and(eq (send (instance-address * ?spec) get-nameOfSpecialty) "Information Systems") (eq ?s 3))) (and(eq (send (instance-address * ?spec) get-nameOfSpecialty) "Information Technologies") (eq ?s 4)))  (and(eq (send (instance-address * ?spec) get-nameOfSpecialty) "Software Engineering") (eq ?s 5))))
	
	(not (processedSpecialty ?cont))
	=>
	
		(bind ?p (+ ?p 200))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "The course belongs to your primary specialty -> +200"))
		(send ?rec put-points ?p)
		(send ?rec put-justifications $?just)
		(assert (processedSpecialty ?cont))
)



(defrule processing::PassToGeneration "Pass to the response generation module"
	(declare(salience -10))
	=>
	(printout t "Generating response...")
	(printout t crlf)
	(focus generation)
)



;;; **************************************************************************


;;; Response Generation Module


(defrule generation::CreateRecommendationsList "create and unordered recommendation list"
	(not (UnorderedRecommendationList))
	=>
	(assert (UnorderedRecommendationList))
)


(defrule generation::AddRecommendation "Adds a recommendation to the list"
	(declare (salience 10))
	?rec <- (object (is-a Recommendation))
	?fact <- (UnorderedRecommendationList (recommendations $?list))
	(test (not (member$ ?rec $?list)))
	=>
	(bind $?list (insert$ $?list (+ (length$ $?list) 1) ?rec))
	(modify ?fact (recommendations $?list))
)


(defrule generation::CreateOrderedList "Creates an ordered list of the recommendations" 
	(not (OrderedRecommendationList))
	(UnorderedRecommendationList (recommendations $?list))
	=>
	;;; we look for the maximum in each step
	(bind $?result (create$ ))
	(while (and (not (eq (length$ $?list) 0)) (< (length$ $?result) 6))  
		do
		(bind ?curr-rec (maxPoints $?list))
		(bind $?list (delete-member$ $?list ?curr-rec))
		(bind $?result (insert$ $?result (+ (length$ $?result) 1) ?curr-rec))
	)
	(assert (OrderedRecommendationList (recommendations $?result)))
)


(defrule generation::PassToPresentation "Pass to the presentation module"
	(OrderedRecommendationList)
	=>
	(focus presentation)
)

;;; **************************************************************************


;;; Presentation Module

(defrule presentation::ShowResponse "Show the recommendations"
	(OrderedRecommendationList (recommendations $?recs))
	(not (final))
	=>
	(printout t crlf)
	(printout t "This is your personalized recommendation of courses for this semester:")
	(printout t crlf)

	(printout t "*******************************************************" crlf)
	;(printout t (instance-name ?self) crlf)
	;(bind $?recs ?self:recommendations)
	;(progn$ (?curr-rec $?recs)
	;	(printout t (send ?curr-rec print))
	;)
	(progn$ (?curr-rec $?recs)
		(printout t (send ?curr-rec print))
	)
	(printout t "*******************************************************" crlf)

	(assert (final))
)