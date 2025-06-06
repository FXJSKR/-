assume cs:code,ds:data
data segment
dw 5 dup(3)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov ax,7
mov word ptr ds:[0],2
div word ptr ds:[0]
mov ax,4c00h
int 21h
code ends
end start