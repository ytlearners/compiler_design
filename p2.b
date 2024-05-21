include <stdio.h>
#include <string.h>
int main() {
    char line[100];
    printf("Enter a line: ");
    fgets(line, 100, stdin);

    if (line[0] == '/') {
        if (line[1] == '/') {
            printf("The given line is a single-line comment.\n");
        } else if (line[1] == '*') {
            printf("The given line is a multi-line comment.\n");
        } else {
            printf("The given line is not a comment.\n");
        }
    } else {
        printf("The given line is not a comment.\n");
    }
    return 0;
}
