# CRUD of the Array

#Create
musicians = []
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
                # 0             # 1              # 2             #3
                 #-4                #-3                 #-2              #-1
# Read
musicians[0]
musicians[0..-2]

#Update
musicians[0] =  "Diogo Telo" # replace the priviuos value
musicians[0,1] =  ["Diogo Telo", "Roger Boy"]  # replace the priviuos value

musicians.insert(1, "Telo")
musicians.push("Pedro")
musicians << "Pedro"

#Delete
musicians.delete("Telo") # the value that I want the delete
musicians.delete_at(3) #position of the value that I want to delete


#Range
(1..10) # include the last one
(1...10) # range that will not include the last one
("a".."z").to_a
