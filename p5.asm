assume cs:code,ds:data
data segment
dw 8 dup (0)
data ends
code segment
start:
mov ax,data
mov ds,ax
jmp s
inc bx
s:
mov ax,1
mov ax,4c00h
int 21h
code ends
end start
