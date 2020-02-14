section	.text
global _ft_atoi_base
extern _ft_strlen
extern _ft_findchar

;probleme avec 654 et base de taille 6

_ft_atoi_base:
				mov     r10, -1
				mov			rbx, 1
				push		rdi
				mov			rdi, rsi
				call		_ft_strlen
				pop			rdi
				mov			rcx, rax
				mov			rax, 0
.esp:
				inc     r10
				cmp			BYTE [rdi + r10], 32
				je			.esp
				dec			r10
.plus:
				inc     r10
				cmp			BYTE [rdi + r10], 43
				je			.plus
				cmp			BYTE [rdi + r10], 45
				je			.moins
				dec			r10
.nb:
				inc			r10
				mul			rcx
				mov			r8, rax
				push		rdi
				mov			rdi, [rdi + r10]
				call		_ft_findchar
				pop			rdi
				cmp			rax, -1
				je     .ret
				add			rax, r8
				jmp			.nb
.ret:
				mov		rax, r8
				div		rcx
				mul		rbx
				ret
.moins:
				mov		r8, rbx
				sub		rbx, r8
				sub		rbx, r8
				jmp		.plus
