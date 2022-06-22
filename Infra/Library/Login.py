import random

class Login():
    def sortear_nome(self):
        firtnames = ['Abby', 'Barbara', 'Maicon', 'Milene', 'Robson', 'Jorge', 'Carlos', 'Gustavo']
        return random.choice(firtnames)

print(Login.sortear_nome(Login))