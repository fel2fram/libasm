global _ft_strcpy

_ft_strcpy:
				mov     rbx, -1
.L2:
        add     rbx, 1
				mov			rax, [rsi + rbx]
				mov			[rdi + rbx], rax
				cmp     rax, 0
				jne			.L2
.L3:
        ret
