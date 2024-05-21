#include <stdio.h>
#include <string.h>
int main() {
    char str[100];
    printf("Enter a string: ");
    scanf("%s", str);
    int i = 0;
    while (str[i] != '\0') {
        if (str[i] == 'a') {
            i++;
            continue;
        }
        else if (str[i] == 'b') {
            i++;
            if (str[i] == '\0') {
                printf("The string matches the pattern 'a*b+'\n");
                return 0;
            }
            else if (str[i] == 'b') {
                i++;
                while (str[i] == 'b') {
                    i++;
                }
                if (str[i] == '\0') {
                    printf("The string matches the pattern 'abb'\n");
                    return 0;
                }
            }
        }
        printf("The string does not match any pattern\n");
        return 0;
    }
    printf("The string matches the pattern 'a*'\n");
    return 0;
}
