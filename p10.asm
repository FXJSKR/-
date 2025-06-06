assume cs:code,ds:data
data segment 
db 0fh dup(0h)
code segment 
start:
mov ax,data
mov ds,ax
mov al,8h
out 70h,al
in al,71h
mov ds:[0],al
mov al,7h 
out 70h,al
in al,71h
and al,00001111b
mov dl,al
mov al,ds:[0]
mov cl,4
shr al,cl
mov dh,al
code ends
end start

