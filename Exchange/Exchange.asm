;Milo Kucia
;Oct 2 2026
;Exchange asm Code

.386P
.model flat
extern _ExitProcess@4: near

.data
number1 dd 10
number2 dd 20
number3 dd 30
number4 dd 40

.code

main Proc near  
_main:
    mov eax, number1
    mov ebx, number2
    mov ecx, number3
    mov edx, number4

    xchg number1, edx
    xchg number2, ecx
    xchg number3, ebx
    xchg number4, eax

    push 0
    call _ExitProcess@4 
main ENDP
end main
