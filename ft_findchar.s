section	.text
global _ft_findchar

_ft_findchar:
				mov     rax, -1
.L2:
				add     rax, 1
				cmp			BYTE [rsi + rax], 0
				je     .nf
				cmp			BYTE [rsi + rax], dil
				je     .f
				jmp			.L2
.nf:
				mov			rax, -1
.f:
				ret
