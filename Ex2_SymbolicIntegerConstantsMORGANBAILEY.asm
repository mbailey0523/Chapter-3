; Chapter 3 Exercise 2: Symbolic Integer Constants

Comment !
Description: Write a program that defines symbolic constants
for all of the days of the week. Create an array variable
that uses the symbols as initializers.
!

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
	
SUNDAY = 1
MONDAY = 2
TUESDAY = 3
WEDNESDAY = 4
THURSDAY = 5
FRIDAY = 6
SATURDAY = 7

.data
myDays WORD SUNDAY,MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY

.code
main PROC
	mov ax,myDays		; ax = 1
	mov ax,[myDays+2]	; ax = 2
	mov ax,[myDays+4]	; ax = 3
	mov ax,[myDays+6]	; ax = 4
	mov ax,[myDays+8]	; ax = 5
	mov ax,[myDays+10]	; ax = 6
	mov ax,[myDays+12]	; ax = 7

	INVOKE ExitProcess,0
main ENDP
END main
