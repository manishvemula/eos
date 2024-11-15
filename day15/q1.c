/**1. Thread sum of integers in given range (start number and end number).
Print result in main().**/


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

struct range{
	int st;
	int end;
};

struct output{
	int sum;
};

void* sum_res(void *param) {
    struct range *r = (struct range *)param;
    struct output *o = (struct output *)malloc(sizeof(struct output));
	o->sum=0;
    for(int i=r->st;i<=r->end;i++){
		o->sum=o->sum+i;
	}
	printf("sum is %d",o->sum);
    return o;
	
}

int main() {
    pthread_t t;
    struct range r={ .st=1, .end=5 };
	struct output *out;
	/**
	printf("enter start index:\n");
	scanf("%d",&r->st);
	printf("enter end index:\n");
	scanf("%d",&r->end);
**/
    pthread_create(&t, NULL,sum_res,&r);
	pthread_join(t,(void **)&out);
	free(out);
    return 0;
}
