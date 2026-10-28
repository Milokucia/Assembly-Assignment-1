;Milo Kucia
;Oct 5 2026
;Fibonacci Project for assembly class

.386P
.model flat
extern _ExitProcess@4: near

.data
previous dd 0
next     dd 1
sum      dd 0

.code

main Proc near
_main:
    mov eax, 10     ;n

    mov ecx, 1
loopTop:
    cmp ecx, eax
    jge loopEnd
    mov edx, previous
    add edx, next
    mov sum, edx
    mov edx, next
    mov previous, edx
    mov edx, sum
    mov next, edx
    inc ecx
    jmp loopTop
loopEnd:
    mov eax, next

    push 0
    call _ExitProcess@4
main ENDP
end main
