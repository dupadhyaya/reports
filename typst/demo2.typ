// 1. Load the data (Treats each row as an array: ["Value1", "Value2"])
#let data = csv("../data/data1.csv")

// 2. Render inside a table
#table(
  columns: 3, // Set the number of columns to match your CSV
  [*ID*], [*Name*], [*Email*], // Optional manual headers
  
  // Flatten turns the nested rows into a single flat list, 
  // and `..` unpacks them as individual cells.
  ..data.flatten() 
)