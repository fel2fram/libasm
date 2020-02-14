section	.text
global _ft_create_elem
extern _malloc

;proteger les malloc

_ft_create_elem:
				push		rdi
				mov     rdi, 16
				call		_malloc
				pop			rdi
				cmp			rax, 0
				je			.ret
				mov			[rax], rdi
				mov			QWORD [rax+8], 0
.ret:
				ret
