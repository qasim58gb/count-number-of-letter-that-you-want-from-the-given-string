include irvine32.inc
.data
str1 byte "I love pakistan to much",0
msg2 byte "total letter that you want to count in a given string is : ",0
character byte 'a',0
count dword 0
.code
Main proc
		mov edx,offset str1
		call writestring
		call crlf
		
		mov ecx,sizeof str1
		mov esi,offset str1
		
	disp:
		mov al,[esi]
		cmp al,character
		je valuefound
		
		add esi,type str1
	
	loop disp
	jmp result
	
	valuefound:
		add count,1
		add esi ,type str1
		jmp disp
	result:	
	mov edx,offset msg2
	call writestring
	mov eax,count
	call writedec
	call crlf
Exit
Main endp 
End main