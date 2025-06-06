assume cs:code,ds:data,ss:stack

data segment 
dw 1h,2h
data ends

stack segment
dw 8h dup (3h)
stack ends

code segment
start:
mov bx,data
mov ds,bx
mov bx,stack
mov ss,bx
;mov sp,10h
push word ptr ds:[1]
mov ax,word ptr ds:[0]
mov word ptr ds:[1],ax
pop ax
mov word ptr ds:[0],ax
mov ax,4c00h
int 21h
code ends
end start

