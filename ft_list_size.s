section	.text
global _ft_list_size

_ft_list_size:
				mov			rax, -1
.boucle:
				inc			rax
				cmp			rdi, 0
				je			.fin
				mov			rdi, [rdi+8]
				jmp			.boucle
.fin:
				ret
