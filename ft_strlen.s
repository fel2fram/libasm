global _ft_strlen

_ft_strlen:
				mov     rax, -1
.L2:
        add     rax, 1
        cmp			BYTE [rdi + rax], 0
        jne     .L2
        ret
