assume cs:code;不合适b
;现在合适了
;不可以把数字当asacall码
code segment
;参数al（年/月/日）
f:
out 70h,al
in al,71h
mov cl,4h 
shr al,cl
mov dh,al
in al,71h
and al,00001111b
mov dl,al
ret
mov bx,0h 
tv:
mov ax,0b800h
mov es,ax 
add dh,30h
mov es:[bx],dh
mov ax,02h
mov es:[bx+1h],ax 
add dl,30h
mov es:[bx+2h],dl
mov es:[bx+3h],ax 
add bx,6h
ret

main:
mov al,8h
call f
call tv 

mov al,7h 
call f 
call tv 

code ends
end main
