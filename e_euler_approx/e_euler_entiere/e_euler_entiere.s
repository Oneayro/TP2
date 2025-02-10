.text
.globl e_euler_entiere

e_euler_entiere:
# Epilogue 
push %ebp
mov %esp,%ebp
push %ebx
push %esi
push %edi

movl 8(%ebp),%esi   # esi = iteration 10 
movl $0, -4(%ebp)    # Initialise la somme à 0 dans une variable locale

# DEBUT COMPLETION


# FIN COMPLETION
# NE RIEN MODIFIER APRES CETTE LIGNE
end:
addl $0x01, -4(%ebp) # cas 1/0!
movl -4(%ebp), %eax

# Prologue
pop %edi
pop %esi
pop %ebx
leave
ret