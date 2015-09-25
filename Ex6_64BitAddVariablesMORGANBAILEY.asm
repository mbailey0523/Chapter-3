; AddVariables.asm - Chapter 3 example.

ExitProcess proto

;removed .model

.data
firstval  qword 20002000h
secondval qword 11111111h
thirdval  qword 22222222h
sum qword 0

.code
main proc
	mov	rax,firstval		;eax is the 32-bit register. must be changed to the 64-bit register rax		
	add	rax,secondval		
	add rax,thirdval
	mov sum,rax

	mov rcx,0
	call ExitProcess	;changed INVOKE
main endp
end
