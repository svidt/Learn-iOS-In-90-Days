var a = [String:String]()

// Adding a key value pair
a["J183"] = "Chris Ching"

// Retrieving the value for a given key
a["J183"]

// Update
a["J183"] = "Todd Cho"

// Remove a key value pair
a["J183"] = nil

// Declaring a dictionary initialized to key value pairs
var b = ["J183":"Chris Ching", "J294":"John Cho"]

// Iterating through a dictionary
for (key, value) in b {
    print("key is:" + key)
    print("value is:" + value)
}
