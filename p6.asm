assume cs:code 
code segment
start:
mov ax,offset start
s:
mov bx,offset s
mov ax,4c00h
int 21h
code ends
end start
