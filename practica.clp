(defclass Recommendation 
	(is-a USER)
	(role concrete)
	(slot course
		(type INSTANCE)
		(allowed-classes Course)
		(cardinality 0 1)
		(create-accessor read-write))
	(slot points
		(type INTEGER)
		(create-accessor read-write))
)

(deftemplate MAIN::UnorderedRecommendationList
	(multislot recommendations 
                (type INSTANCE)
		(allowed-classes Recommendation))
)

(deftemplate MAIN::OrderedRecommendationList
	(multislot recommendations 
                (type INSTANCE)
		(allowed-classes Recommendation))
)

(defmessage-handler MAIN::Course print ()
	(format t "Name: %s %n" ?self:nameOfCourse)
	(printout t crlf)
	(format t "Anyo: %d" ?self:anyo)
	(printout t crlf)
	(printout t "ECTS: ")
	(format t "ECTS: %d" ?self::ECTS)
	(printout t crlf)
	(format t "Semester: %d" ?self::semester)	
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
        (printfout t crlf)
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

(deffunction maxPointas ($?lista)
	(bind ?max -1)
	(bind ?elemtn nil)
	(progn$ (?curr-rec $?lista)
		(bind ?curr-cont (send ?curr-rec get-Course))
		(bind ?curr-punt (send ?curr-rec get-points))
		(if (> ?curr-punt ?max)
			then 
			(bind ?max ?curr-punt)
			(bind ?element ?curr-rec)
		)
	)
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

