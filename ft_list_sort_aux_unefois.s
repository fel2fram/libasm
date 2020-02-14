section	.text
global _ft_list_sort_aux

;tests inutiles

_ft_list_sort_aux:
				cmp			rdi, 0
				je			.fin
				mov			rdi,	[rdi]
				cmp			rdi, 0
				je			.fin
.boucle:
				mov			rbx, rdi
				mov			rdi, [rdi+8]
				cmp			rdi, 0
				je			.fin
				mov			rcx, [rdi]
				mov			rdx, [rbx]
				cmp			rcx, rdx
				jge			.boucle
				mov			[rdi], rdx
				mov			[rbx], rcx
				jmp			.boucle
.fin:
				ret

				section	.text
				global _ft_list_sort_aux
				extern  _ft_list_size

				;tests inutiles
				_ft_list_sort_aux:
								cmp			rdi, 0
								je			.fin
								mov			rdi,	[rdi]
								push		rdi
								call		_ft_list_size
								pop			rdi
				.ntours:
								dec			rax
								push		rdi
								call		_ft_unpointed
								pop			rdi
								cmp			rax, 0
								jne			.ntours
				.fin:
								ret

				global _ft_unpointed

				_ft_unpointed:
								cmp			rdi, 0
								je			.fin
				.boucle:
								mov			rbx, rdi
								mov			rdi, [rdi+8]
								cmp			rdi, 0
								je			.fin
								mov			rcx, [rdi]
								mov			rdx, [rbx]
								cmp			rcx, rdx
								jle			.boucle
								mov			[rdi], rdx
								mov			[rbx], rcx
								jmp			.boucle
				.fin:
								ret
