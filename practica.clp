; Sat May 16 13:57:35 CEST 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
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
	(single-slot type
;+		(comment "Type of course (compulsory etc.)")
		(type SYMBOL)
		(allowed-values COMPULSORY SPECIALIZATION_COMPULSORY SPECIALIZATION_COMPLEMENTARY OPTIONAL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot corequisites
;+		(comment "The corequisites of a course. Can be Passed or Unpassed courses.")
		(type INSTANCE)
;+		(allowed-classes PassedCourse UnpassedCourse)
		(create-accessor read-write))
	(single-slot numberOfEnrolledPreviousSemester
;+		(comment "The number of enrolled students for the previous semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot project
;+		(comment "True if the course is a project - course")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semesterPassed
;+		(comment "The semester during which a student was enrolled in this course.")
		(type INTEGER)
		(range 1 8)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Practica2_Class5
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot quantityOfWork
		(type SYMBOL)
		(allowed-values HIGH MEDIUM LOW)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prerequisites
;+		(comment "The prerequisites of a course. Can be Passed or Unpassed Courses.")
		(type INSTANCE)
;+		(allowed-classes PassedCourse UnpassedCourse)
		(create-accessor read-write))
	(single-slot theoryHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot creditsAlreadyObtained
;+		(comment "Credits already obtained by a student for this competence.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot hours
		(type SYMBOL)
		(allowed-values MORNING AFTERNOON BOTH)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot course
;+		(comment "Competence that a course offers.")
		(type INSTANCE)
;+		(allowed-classes PassedCourse UnpassedCourse)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot passedCourses
;+		(comment "Courses that a student has already passed")
		(type INSTANCE)
;+		(allowed-classes PassedCourse)
		(create-accessor read-write))
	(multislot coursesContained
;+		(comment "The courses that a theme contains.")
		(type INSTANCE)
;+		(allowed-classes PassedCourse UnpassedCourse)
		(create-accessor read-write))
	(single-slot ECTS
;+		(comment "The ECTS credits of a course.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfCompetence
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specializedThemesOfInterest
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot maxNumOfCourses
;+		(comment "The maximum number of courses that a student wants to be enrolled in for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specializedThemesContained
;+		(comment "Specialized themes that a course contains.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot problemHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxNumOfDevotedHours
;+		(comment "The maximum number of hours of devotion that a student can accept for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semester
;+		(comment "The semester of a course according to the curriculum of the university.")
		(type INTEGER)
		(range 1 8)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specializedThemes
;+		(comment "Specialized Themes to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot labHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfCourse
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specializedThemesIncluded
;+		(comment "Specialized Themes included in a specialty,")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot maxNumOfLabHours
;+		(comment "The maximum number of Laboratory hours that a student can accept for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot specialty
;+		(comment "The specialty to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes Specialty)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot acceptedCourseDifficulty
;+		(comment "The difficulty level of courses that is accepted by a student")
		(type SYMBOL)
		(allowed-values EASY DIFFICULT ANY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfStudent
		(type STRING)
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
	(single-slot preferredHours
;+		(comment "The type of hours that a student prefers.")
		(type SYMBOL)
		(allowed-values MORNING AFTERNOON ANY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot mark
;+		(comment "The final mark of a student for this Passed Course.")
		(type INTEGER)
		(range 0 10)
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
	(single-slot difficulty
;+		(comment "The degree of difficulty of a course.")
		(type SYMBOL)
		(allowed-values EASY MEDIUM DIFFICULT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot credits
;+		(comment "Credits that a course offers for a specific competence.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot percentageOfPassedPreviousSemester
;+		(comment "The percentage of students that passed the course for the previous semester.")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot courses
;+		(comment "Courses that offer this competence.")
		(type INSTANCE)
;+		(allowed-classes PassedCourse UnpassedCourse)
		(create-accessor read-write))
	(multislot competencesOfInterest
;+		(comment "The competences that the student is interested in obtaining,")
		(type INSTANCE)
;+		(allowed-classes CompetenceOfInterest)
		(create-accessor read-write)))

(defclass Student
	(is-a USER)
	(role concrete)
	(multislot passedCourses
;+		(comment "Courses that a student has already passed")
		(type INSTANCE)
;+		(allowed-classes PassedCourse)
		(create-accessor read-write))
	(single-slot nameOfStudent
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxNumOfLabHours
;+		(comment "The maximum number of Laboratory hours that a student can accept for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specialtiesOfInterest
;+		(comment "The Specialties that a student is interested in completing,")
		(type INSTANCE)
;+		(allowed-classes Specialty)
		(create-accessor read-write))
	(single-slot maxNumOfDevotedHours
;+		(comment "The maximum number of hours of devotion that a student can accept for this semester.")
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
	(single-slot maxNumOfCourses
;+		(comment "The maximum number of courses that a student wants to be enrolled in for this semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot competencesOfInterest
;+		(comment "The competences that the student is interested in obtaining,")
		(type INSTANCE)
;+		(allowed-classes CompetenceOfInterest)
		(create-accessor read-write))
	(single-slot acceptedCourseDifficulty
;+		(comment "The difficulty level of courses that is accepted by a student")
		(type SYMBOL)
		(allowed-values EASY DIFFICULT ANY)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot preferredHours
;+		(comment "The type of hours that a student prefers.")
		(type SYMBOL)
		(allowed-values MORNING AFTERNOON ANY)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Course
	(is-a USER)
	(role abstract)
	(single-slot specialty
;+		(comment "The specialty to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes Specialty)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ECTS
;+		(comment "The ECTS credits of a course.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semester
;+		(comment "The semester of a course according to the curriculum of the university.")
		(type INTEGER)
		(range 1 8)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot specializedThemes
;+		(comment "Specialized Themes to which a course belongs.")
		(type INSTANCE)
;+		(allowed-classes SpecializedTheme)
		(create-accessor read-write))
	(single-slot hours
		(type SYMBOL)
		(allowed-values MORNING AFTERNOON BOTH)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nameOfCourse
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot difficulty
;+		(comment "The degree of difficulty of a course.")
		(type SYMBOL)
		(allowed-values EASY MEDIUM DIFFICULT)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass PassedCourse
	(is-a Course)
	(role concrete)
	(single-slot mark
;+		(comment "The final mark of a student for this Passed Course.")
		(type INTEGER)
		(range 0 10)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot semesterPassed
;+		(comment "The semester during which a student was enrolled in this course.")
		(type INTEGER)
		(range 1 8)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass UnpassedCourse
	(is-a Course)
	(role concrete)
	(multislot corequisites
;+		(comment "The corequisites of a course. Can be Passed or Unpassed courses.")
		(type INSTANCE)
;+		(allowed-classes PassedCourse UnpassedCourse)
		(create-accessor read-write))
	(single-slot numberOfEnrolledPreviousSemester
;+		(comment "The number of enrolled students for the previous semester.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot project
;+		(comment "True if the course is a project - course")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Practica2_Class5
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prerequisites
;+		(comment "The prerequisites of a course. Can be Passed or Unpassed Courses.")
		(type INSTANCE)
;+		(allowed-classes PassedCourse UnpassedCourse)
		(create-accessor read-write))
	(single-slot percentageOfPassedPreviousSemester
;+		(comment "The percentage of students that passed the course for the previous semester.")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot theoryHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot labHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot type
;+		(comment "Type of course (compulsory etc.)")
		(type SYMBOL)
		(allowed-values COMPULSORY SPECIALIZATION_COMPULSORY SPECIALIZATION_COMPLEMENTARY OPTIONAL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot problemHours
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Theme
	(is-a USER)
	(role abstract)
	(single-slot nameOfTheme
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot coursesContained
;+		(comment "The courses that a theme contains.")
		(type INSTANCE)
;+		(allowed-classes PassedCourse UnpassedCourse)
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
	(multislot courses
;+		(comment "Courses that offer this competence.")
		(type INSTANCE)
;+		(allowed-classes PassedCourse UnpassedCourse)
		(create-accessor read-write))
	(single-slot creditsAlreadyObtained
;+		(comment "Credits already obtained by a student for this competence.")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot course
;+		(comment "Competence that a course offers.")
		(type INSTANCE)
;+		(allowed-classes PassedCourse UnpassedCourse)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass CompetenceOfCourse "A competence that a course includes and its level (Credits slot)"
	(is-a Competence)
	(role concrete))












(defmodule MAIN (export ?ALL))

;;; Modulo de recopilacion de los datos del usuario
(defmodule UserQuestions
	(import MAIN ?ALL)
	(export ?ALL)
)


(defclass Recommendation 
	(is-a USER)
	(role concrete)
	(slot course
		(type INSTANCE))
	(slot points
		(type INTEGER))
)

(deftemplate MAIN::UnorderedRecommendationList
	(multislot recommendations 
                (type INSTANCE))
)

(deftemplate MAIN::OrderedRecommendationList
	(multislot recommendations 
                (type INSTANCE))
)

(deftemplate MAIN::User
	(slot name)
	(slot semester)
)

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

(deffunction generalQuestion (?question)
    (format t "%s " ?question)
	(bind ?answer (read))
	(while (not (lexemep ?answer)) do
		(format t "%s " ?question)
		(bind ?answer (read))
    )
	?answer
)

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

(deffunction maxPoints ($?lista)
	(bind ?max-1)
	(bind ?element nil)
	;(progn$ (?curr-rec $?lista)
	;	(bind ?curr-cont (send ?curr-rec get-course))
	;	(bind ?curr-punt (send ?curr-rec get-points))
	;	(if (> ?curr-punt ?max)
	;		then 
	;		(bind ?max ?curr-punt)
	;		(bind ?element ?curr-rec)
	;	)
	;)
	?element
)

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

(defrule UserQuestions::AskName 
	(not (User))
	=>
	(bind ?name (generalQuestion "What's your name?"))
	(assert (User (name ?name)))
)
