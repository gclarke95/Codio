class Person:
    """Represents a generic Person."""
    def __init__(self, first, last, weight, height):
          self.first_name = first
          self.last_name = last
          self.weight_in_lbs = weight
          self.height_in_inches = height
          
p1 = Person('Tom', 'Thumb', 150, 68)
p2 = Person('Dan', 'HSDAS', 140, 78)
p3 = Person('Jack', 'dfs', 130, 98)
p4 = Person('Grace', 'umb', 120, 58)
p5 = Person('Ellie', 'Tmb', 110, 88)

first_name = ["Tom", "Dan", "Jack", "Grace", "Ellie"]
for item in first_name:
  print (item)
  




