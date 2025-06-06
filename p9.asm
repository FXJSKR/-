assume cs:code,ds:data
data segment
db 'hello'
data ends

code segment
start:
mov ax,0b800h
mov es,ax
mov ax,data
mov ds,ax
mov cx,5h
mov si,0h
mov di,0h

f:
mov ax,ds:[di]
mov es:[si],ax
mov ax,02h
mov es:[si+1],ax
inc di
add si,2h 

loop f

code ends
end start