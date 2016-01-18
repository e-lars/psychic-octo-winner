#include <cs50.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main (int argc, string argv[])
{
    if (argc !=2 )
    {
        printf("Please enter one and only one key as an argument\n");
        return 1;
    }
     else
    for(int i = 0, l = strlen(argv[1]); i < l; i++) 
    {
        if (isalpha(argv[1]) == 0 )
        {
        printf("Keyword must only contain letters A-Z and a-z\n");
        return 1;
        }
    }
    {
    string k = (argv[1]);
    string plain = GetString();
    for (int i=0, length = strlen(plain); i < length; i++)
    {
        if (isupper(plain[i]) || islower(plain[i]))
        {
            int v = strlen(k);
            //Shifts plain text by the appropriate digit of K
            if (isupper(plain[i]) && plain[i] + (k[i % v]) <= 'Z')
                 printf("%c", plain[i] + k[i % v] % 26 );
            else if (isupper(plain[i]) && plain[i]+k[i % v] > 'Z')
                printf("%c", plain[i] +k[i % v]  % 26 - 26 );
            else if (islower(plain[i]) && plain[i] + k[i % v] % 26 < 'z')
                printf("%c", plain[i] + k[i % v] % 26  );
            else 
                printf("%c", plain[i] + k[i % v] % 26 - 26  );
        }
        //prints spaces and other punctuation
        else
            printf("%c", plain[i]);
        }
    }
    printf("\n");
    return 0;
    
    }
