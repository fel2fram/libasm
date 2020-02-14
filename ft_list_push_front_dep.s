section	.text
global _ft_list_push_front
extern _ft_create_elem

;proteger les create

_ft_list_push_front:
				push		rdi
				mov     rdi, rsi
				call		_ft_create_elem
				pop			rdi
				cmp			rax, 0
				je			.ret
				mov			rbx, [rdi]
				mov			[rax+8], rbx
				mov			[rdi], rax
.ret:
				ret
