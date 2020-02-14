section	.text
global _ft_list_push_front
extern _ft_create_elem
extern _malloc

;proteger les create

_ft_list_push_front:
				push		rdi
				push 		rsi
				mov     rdi, 16
				call		_malloc
				pop 		rdi
				cmp			rax, 0
				je			.fail
				mov			[rax], rdi
				mov			QWORD [rax+8], 0
				pop			rdi
				mov			rbx, [rdi]
				mov			[rax+8], rbx
				mov			[rdi], rax
				ret
.fail:
				pop			rdi
				ret
