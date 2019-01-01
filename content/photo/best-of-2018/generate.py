import pprint
file = open("images.txt")
names = file.readlines()
for name in names:  
  print("- src: " + name.strip())
  print("  title: ")
  print("  params: ")
  print("    caption: ")
