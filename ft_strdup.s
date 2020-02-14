section	.text
global _ft_strdup
extern	_malloc

_ft_strdup:
				mov     rbx, 0
.L1:
				add     rbx, 1
				cmp			BYTE [rdi + rbx - 1], 0
				jne     .L1
				push		rdi
				mov			rdi, rbx
				call		_malloc
				pop			rdi
				mov     rbx, -1
.L2:
        add     rbx, 1
				mov			rcx, [rdi + rbx]
				mov			[rax + rbx], rcx
				cmp     BYTE [rdi + rbx], 0
				jne			.L2
        ret
