#include <stdio.h>
#include <stdlib.h>

typedef struct s_list
{
void *data;
struct s_list *next;
} t_list;

int ft_strcmp(char *s, char *s2);
char* ft_strcpy(char *s, char *s2);
int ft_strlen(char *s);
ssize_t ft_read(int fildes, void *buf, size_t nbyte);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
char *ft_strdup(const char *s1);
int	ft_atoi_base(char *str, char *base);
int	ft_findchar(char c, char *base);
t_list *ft_create_elem(void *data);
void ft_list_push_front(t_list **begin_list, void *data);
int ft_list_size(t_list *begin_list);
void ft_list_sort(t_list **begin_list, int (*cmp)());
