section	.text
global _ft_atoi_base

_ft_atoi_base:
				mov     rdx, -1
				mov			rax, 0
				mov			rcx, 10
				mov			rbx, 1
.esp:
				inc     rdx
				cmp			BYTE [rdi + rdx], 32
				je			.esp
				dec			rdx
.plus:
				inc     rdx
				cmp			BYTE [rdi + rdx], 43
				je			.plus
				cmp			BYTE [rdi + rdx], 45
				je			.moins
				dec			rdx
.nb:
				inc			rdx
				mul			cl
				add			al, BYTE [rdi + rdx]
				sub			rax, 48
				cmp			BYTE [rdi + rdx + 1], 48
				jl     .ret
				cmp			BYTE [rdi + rdx + 1], 57
				jg     .ret
				jmp			.nb
.ret:
				mul		rbx
				ret
.moins:
				mov		rsi, rbx
				sub		rbx, rsi
				sub		rbx, rsi
				jmp		.plus
