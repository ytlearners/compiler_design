#include <stdio.h>

int main() {
    FILE *fptr;
    char sentence[1000];

    printf("Enter the text to write to the file:\n");
    fgets(sentence, sizeof(sentence), stdin);

    fptr = fopen("output.txt", "w");
    if (fptr == NULL) {
        printf("Error opening file!\n");
        return 1;
    }

    fprintf(fptr, "%s", sentence);
    fclose(fptr);
    printf("Text written to file successfully!\n");
    return 0;
}
