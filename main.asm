push rbp
mov rbp, rsp

mov eax, [rdi]
mov [rbp - 4], eax

mov esi, 1
loop_start:
    cmp esi, rsi
    jge loop_end

    mov eax, [rdi + esi 4]
    cmp eax, [rbp - 4]
    jg update_max

    inc esi
    jmp loop_start
update_max:
    mov [rbp - 4], eax
    inc esi
    jmp loop_start
loop_end:

mov rsp, rbp
pop rbp

ret*