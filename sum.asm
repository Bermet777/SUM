section .data
    num1 dd 3
    num2 dd 5

section .text
    global _calculate_sum
_calculate_sum:
    mov eax, [num1]
    add eax, [num2]
    ret
