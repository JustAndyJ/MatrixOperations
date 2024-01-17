import Foundation
 

func DymanicMatrix(){
  print("\nSet the number of rows: ", terminator: "")
  if let rows = readLine(), let numRows = Int(rows) {
    var matrix = [[Int]]()
    var row = [Int]()

    for _ in 0..<numRows {
      print("\nSet the number of columns: ", terminator: "")
      if let colums = readLine(), let numColums = Int(colums) {
        row.append(numColums)
        matrix.append(Array(repeating: 0, count: numColums))
      }else{
        print("Invalid input. Exiting...")
        return
      }
    }

    for i in 0..<numRows {
      for j in 0..<row[i] {
        matrix[i][j] =  potAlg((i + 1 ),(j + 1))
        print("\(matrix[i][j])\t", terminator: "")
      }
      print()
    }
 
  }else {
    print("ivalided Input. Exting")
    return
  }
  func potAlg(_ base: Int,_ exponen: Int) -> Int {
    return Int(pow(Double(base), Double(exponen)))
  }
  
}
DymanicMatrix()