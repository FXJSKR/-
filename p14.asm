assume cs:code;p13配套测试程序
;用于测试自己写的除法溢出中断程序
code segment 
main: 
mov ax,2h 
mov cl,0h 
div cl 
code ends 
end main 