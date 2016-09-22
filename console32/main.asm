; Michael Dorst
; CISP 310
; Lab 3
; Programming Exercise 3.2 #1

; preprocessor directives
.586
.MODEL FLAT

; external files to link with

; stack configuration: set up 4096 stack frames
.STACK 4096

; named memory allocation and initialization
.DATA
number	DWORD	-253	; the number to be added to 74
sum		DWORD	0		; will hold the sum of 74 and -253

; procedure code
.CODE
main	PROC
	mov eax, number		; set eax to number (-253)
	add eax, 74			; add 74 to what's already in eax (-253), store result in eax
	mov sum, eax		; copy results of addition to sum

	mov eax, 0			; exit with return 0
	ret
main	ENDP

END
