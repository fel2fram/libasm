#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "main.h"

int cmp(void *a, void *b)
{
	return((*(int*)(a)) - (*(int*)(b)));
}

int main()
{
	//char *hey = malloc(15);//"salut";
	//strcpy(hey, "salut");
	//ft_strcpy(hey, "salut");
	//ft_strcpy(hey + 2, "salutplu");
	//printf("%s",hey);
	/*printf("%d\n", ft_strcmp("sdf", ""));
	printf("%d\n", strcmp("sdf", ""));*/

int a = 25;
int b = 34;
int c = 8;
int d = 0;
	t_list *ho = ft_create_elem(&a);
	ft_list_push_front(&ho, &c);
	ft_list_push_front(&ho, &b);
	ft_list_push_front(&ho, &d);

printf("%d|%d|%d||%d|%d|%d\n", *((int*)(ho->data)), *(int*)(ho->next->data), *(int*)(ho->next->next->data), ft_list_size(ho),ft_list_size(ho->next)
,ft_list_size(ho->next->next));
	ft_list_sort(&ho, &cmp);
	printf("%d|%d|%d||%d|%d|%d\n", *(int*)(ho->data), *(int*)(ho->next->data), *(int*)(ho->next->next->data), ft_list_size(ho),ft_list_size(ho->next)
,ft_list_size(ho->next->next));
ft_list_sort(&ho, &cmp);
printf("%d|%d|%d||%d|%d|%d\n", *(int*)(ho->data), *(int*)(ho->next->data), *(int*)(ho->next->next->data), ft_list_size(ho),ft_list_size(ho->next)
,ft_list_size(ho->next->next));
ft_list_sort(&ho, &cmp);
printf("%d|%d|%d||%d|%d|%d\n", *(int*)(ho->data), *(int*)(ho->next->data), *(int*)(ho->next->next->data), ft_list_size(ho),ft_list_size(ho->next)
,ft_list_size(ho->next->next));
	//printf("%d", sizeof(t_list));
}
