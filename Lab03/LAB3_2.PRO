domains
	disease,indication,name = symbol
predicates
	symptom(name, indication)
	hypothesis(name, disease)
clauses
	symptom(raj, body_pain).
	symptom(raj, chills).
	symptom(raj, runny_nose).
	hypothesis(Patient, fever):-symptom(Patient, body_pain),symptom(Patient, chills),symptom(Patient, runny_nose). 