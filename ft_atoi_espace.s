section	.text
global _ft_atoi_base

_ft_atoi_base:
				mov     rdx, 0
				mov			rax, 0
				mov			rcx, 10
				mov			rbx, 1
.esp:
				inc     rdx
				cmp			BYTE [rdi + rdx - 1], 32
				je			.esp
				dec			rdx
.plus:
				inc     rdx
				cmp			BYTE [rdi + rdx - 1], 43
				je			.plus
				dec			rdx
.nb:
				inc			rdx
				mul			cl
				add			al, BYTE [rdi + rdx - 1]
				sub			rax, 48
				cmp			BYTE [rdi + rdx], 48
				jl     .ret
				cmp			BYTE [rdi + rdx], 57
				jg     .ret
				jmp			.nb
.ret:
				ret
