assume cs:code
code segment
start:
s:
mov ax,1
inc ax
k:
mov si,offset s
mov di,offset s0
mov cx,offset k
sub cx,si
now: 
mov al,cs:[si]
mov cs:[di],al
inc di
inc si
loop now
s0:
nop
nop
nop
nop
nop
nop
mov ax,4c00h
int 21h
code ends
end start
