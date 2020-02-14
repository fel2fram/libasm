global _ft_strcmp

_ft_strcmp:
				mov     rbx, -1
.L2:
        add     rbx, 1
				mov			rax, [rdi + rbx]
				cmp			BYTE [rsi + rbx], al
        jl     .L3
        jg     .L4
				cmp     BYTE [rsi + rbx], 0
				jne			.L2
				mov			rax, 0
				ret
.L3:
				mov			rax, 1
        ret
.L4:
				mov			rax, -1
				ret
