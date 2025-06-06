;安装0号中断
assume cs:code
code segment
do0:
jmp string_end
string_start:
db 'div overflow!'
string_end:
mov ax,0b800h
mov es,ax
mov cx,offset string_end-offset string_start;0d==13
mov bx,offset string_start
mov si,0h 
f:
mov ax,cs:[bx]
mov es:[si],ax
mov ax,02h
mov es:[si+1],ax 
add si,2h
inc bx
loop f
do0end:

main:
mov cx,offset do0end-offset do0
mov bx,offset do0 
mov ax,2000h
mov ds,ax
mov si,0h
f1: 
mov ax,cs:[bx]
mov ds:[si],ax
inc bx 
inc si 
loop f1
mov ax,0h 
mov ds,ax 
mov ax,0h 
mov ds:[0],ax
mov ds:[2],2000h
mov ax,4c00h
int 21h
code ends
end main 