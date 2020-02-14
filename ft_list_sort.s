section	.text
global _ft_list_sort
extern  _ft_list_size

;tests inutiles
_ft_list_sort:
				mov			r8, rsi
				cmp			rdi, 0
				je			.fin
				mov			rdi,	[rdi]
				push		rdi
				call		_ft_list_size
				pop			rdi
.ntours:
				dec			rax
				push		rax
				push		rdi
				call		_ft_unpointed
				pop			rdi
				pop			rax
				cmp			rax, -1
				jne			.ntours
.fin:
				ret

global _ft_unpointed

_ft_unpointed:
				cmp			rdi, 0
				je			.fin
.boucle:
				mov			rsi, rdi
				mov			rdi, [rdi+8]
				cmp			rdi, 0
				je			.fin
				push		rdi
				push		rsi
				push		r8
				mov			rdi, [rdi]
				mov			rsi, [rsi]
																;call		r8
				pop			r8
				pop			rsi
				pop			rdi
																											mov			r9, [rsi]
																											cmp			r9, [rdi]
																;cmp			rax, 0
				jle			.boucle
				mov			rdx, [rsi]
				mov			rcx, [rdi]
				mov			[rdi], rdx
				mov			[rsi], rcx
				jmp			.boucle
.fin:
				ret
