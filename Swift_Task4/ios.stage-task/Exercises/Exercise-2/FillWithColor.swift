import Foundation



final class FillWithColor {
    
    var grid: [[Int]] = [[]]
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        
       
        
        
        if (row < 0 && column < 0 && row >= image.count && column >= image[0].count && image[row][column] == newColor) {
            return image
        }
        
        grid = image
        
        draw(row, column, newColor, grid[row][column])
        return grid
    }
    
    func draw(_ i: Int, _ j: Int, _ newColor: Int, _ oldColor: Int){
        
        grid[i][j] = newColor
        if i != 0 {
            if grid[i - 1][j] == oldColor {
                draw(i - 1, j, newColor, oldColor)
            }
        }
        if j != 0 {
            if grid[i][j - 1] == oldColor {
                draw(i , j - 1, newColor, oldColor)
            }
        }
        if i + 1 != grid.count {
            if grid[i + 1][j] == oldColor{
                draw(i + 1, j, newColor, oldColor)
            }
        }
        if j + 1 != grid[0].count {
            if grid[i][j + 1] == oldColor {
                draw(i, j + 1, newColor, oldColor)
            }
        }
    }
}
