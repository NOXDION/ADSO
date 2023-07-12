class Super:
    def __init__(self, name):
        self.name = name
    
    def __str__(self):
        return "Mi nombre es " + self.name + "."
    
class Sub(Super):
    def __init__(self, name):
        Super.__init__(self, name)

obj = Sub("Andy")
print(obj)

'''class Super:
    def __init__(self):
        self.supVar = 11

class Sub(Super):
    def __init__(self):
        super().__init__()
        self.subVar = 12

obj = Sub()
print(obj.subVar)
print(obj.supVar)'''

'''class Level1:
    variable_1 = 100
    def __init__(self):
        self.var_1 = 101

    def fun_1(self):
        return 102

class Level2(Level1):
    variable_2 = 200
    def __init__(self):
        super().__init__()
        self.var_2 = 201
    
    def fun_2(self):
        return 202

class Level3(Level2):
    variable_3 = 300
    def __init__(self):
        super().__init__()
        self.var_3 = 301

    def fun_3(self):
        return 302

obj = Level3()

print(obj.variable_1, obj.var_1, obj.fun_1())
print(obj.variable_2, obj.var_2, obj.fun_2())
print(obj.variable_3, obj.var_3, obj.fun_3())'''
