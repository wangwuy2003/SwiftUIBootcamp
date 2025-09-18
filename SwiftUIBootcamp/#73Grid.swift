//
//  #73Grid.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 18/9/25.
//

import SwiftUI

struct _73Grid: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
            ForEach(0..<4) { rowIndex in
                GridRow(alignment: .top) {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        
                        if cellNumber == 7 {
                            EmptyView()
                            //                            Color.green
                            //                                .gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridColumnAlignment(
                                    cellNumber == 1 ? .trailing :
                                        cellNumber == 4 ? .leading :
                                            .center)
                        }
                    }
                }
            }
        }
        
        //        Grid {
        //            GridRow {
        //                cell(int: 1)
        //                cell(int: 2)
        //                cell(int: 3)
        //            }
        //
        //            Divider()
        //                .gridCellUnsizedAxes(.horizontal)
        //
        //            GridRow {
        //                cell(int: 4)
        //                cell(int: 5)
        //                cell(int: 6)
        //            }
        //        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .frame(height: int == 10 ? 20 : nil)
            .font(.largeTitle)
            .padding()
            .background(.blue)
    }
}

#Preview {
    _73Grid()
}
