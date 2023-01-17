MAIN	START	0
FIRST	JSUB	QUEINIT
	LDA	#10
	STA	@REAR
	JSUB	PUSH

	LDA	#20
	STA	@REAR
	JSUB	PUSH	

	LDA	#30
	STA	@REAR
	JSUB	PUSH

	JSUB	POP
	LDA	@FRONT
	STA	OUT1
	JSUB	POP
	LDA	@FRONT
	STA	OUT2
	JSUB	POP
	LDA	@FRONT
	STA	OUT3

A	J	A

QUEINIT	LDA	#QUEUE
	STA	REAR
	SUB	#3
	STA	FRONT
	RSUB

PUSH	LDA	REAR
	ADD	#3
	STA	REAR
	RSUB

POP	LDA	FRONT
	ADD	#3
	STA	FRONT
	RSUB
OUT1	RESW	1
OUT2	RESW	1
OUT3	RESW	1
REAR	RESW	1
FRONT	RESW	1
QUEUE	RESW	10000

