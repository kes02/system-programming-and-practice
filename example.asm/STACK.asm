MAIN	START	0
FIRST	JSUB	STKINIT
	LDA	#1
	STA	@TOP
	JSUB	PUSH
	LDA	#2
	STA	@TOP
	JSUB	PUSH	
	LDA	#3
	STA	@TOP
	JSUB	PUSH

	JSUB	POP
	LDA	@TOP
	STA	OUT1
	JSUB	POP
	LDA	@TOP
	STA	OUT2
	JSUB	POP
	LDA	@TOP
	STA	OUT3

A	J	A

STKINIT	LDA	#STACK
	STA	TOP
	RSUB

PUSH	LDA	TOP
	ADD	#3
	STA	TOP
	RSUB

POP	LDA	TOP
	SUB	#3
	STA	TOP
	RSUB
OUT1	RESW	1
OUT2	RESW	1
OUT3	RESW	1
TOP	RESW	1
STACK	RESW	10000
