assume cs:code
code segment
tv:
mov ax,0b800h
mov es,ax 
mov bx,0h 
mov al,
mov es:[bx],al
mov ax,02h
mov es:[bx+1h],ax 
mov ax,2
mov es:[bx+2h],ax
mov ax,02h
mov es:[bx+3h],ax 
ret
main:
call tv
code ends
end main

