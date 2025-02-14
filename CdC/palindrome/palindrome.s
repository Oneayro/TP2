.text
.globl isPalindromeASM
isPalindromeASM:
pushl %ebp
movl %esp, %ebp
pushl %ebx
movl 8(%ebp), %esi #potential palindrome    #copie la valeur stockée à add %ebp + 8 et met dans %esi
# DEBUT COMPLETION

findEnd:
    movb (%esi), %al
    cmpb $0, %al   #cmp si char = \0 (null)
    je endFound
    incl %esi 
    jmp findEnd


endFound:
    decl %esi
    movl %esi, %edi     #mov la position de %esi dans %edi (position du dernier char)
    movl 8(%ebp), %esi  #restaurer position chaine i


verification:               
    cmpl %esi, %edi     #compare lesz adresses mémoire associé à la chaine de char
    jge palindrome
   
    movb (%esi), %al         #premier caractere dans al
    movb (%edi), %ah         #dernier caractere dans ah
    cmpb %al, %ah            #commparer al et ah (k et k)   
    jne notPalindrome 
    incl %esi
    decl %edi
    jmp verification

palindrome:
    movl $1, %eax
    jmp fin

notPalindrome:
    movl $0, %eax

fin:
# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
retour:   
popl %ebx
leave
ret
