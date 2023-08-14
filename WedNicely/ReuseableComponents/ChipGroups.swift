
import SwiftUI

struct ChipGroup: View {
    @Binding var selectedChips: Set<String>
    let chips: [String]
    let allowMultipleSelection: Bool

    var body: some View {
        ZStack{
            ColorConstants.Colors.BLUE_COLOR_Light
            
            GeometryReader { geometry in
                VStack(alignment: .leading, spacing: 8) {
                    let rows = divideIntoRows(chips: chips, availableWidth: geometry.size.width)
                    ForEach(rows, id: \.self) { rowChips in
                        HStack(spacing: 8) {
                            ForEach(rowChips, id: \.self) { chip in
                                createChipView(chip: chip)
                            }
                        }
                    }
                }
                
            }.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
    }

    private func createChipView(chip: String) -> some View {
        Button(action: {
            toggleSelection(chip)
        }) {
            Text(chip)
                .foregroundColor(selectedChips.contains(chip) ? .white : .black)
                .padding(.horizontal, 10)
                .padding(.vertical, 6)
                .background(selectedChips.contains(chip) ? Color.blue : Color.white)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(selectedChips.contains(chip) ? Color.blue : Color.gray, lineWidth: 2)
                )
        }
        .buttonStyle(PlainButtonStyle()) // Remove button highlighting
    }

    private func divideIntoRows(chips: [String], availableWidth: CGFloat) -> [[String]] {
        var rows: [[String]] = []
        var currentRowChips: [String] = []
        var currentRowWidth: CGFloat = 0

        for chip in chips {
            let chipWidth = calculateTextWidth(text: chip) + 35 // Add padding to chip width
            if currentRowWidth + chipWidth <= availableWidth {
                currentRowChips.append(chip)
                currentRowWidth += chipWidth
            } else {
                rows.append(currentRowChips)
                currentRowChips = [chip]
                currentRowWidth = chipWidth
            }
        }

        if !currentRowChips.isEmpty {
            rows.append(currentRowChips)
        }

        return rows
    }

    private func toggleSelection(_ chip: String) {
        if allowMultipleSelection {
            if selectedChips.contains(chip) {
                selectedChips.remove(chip)
            } else {
                selectedChips.insert(chip)
            }
        } else {
            selectedChips.removeAll()
            selectedChips.insert(chip)
        }
    }

    private func calculateTextWidth(text: String) -> CGFloat {
        let font = UIFont.systemFont(ofSize: 17)
        let attributes = [NSAttributedString.Key.font: font]
        let size = (text as NSString).size(withAttributes: attributes)
        return size.width
    }
}


//struct ChipGroup_Previews: PreviewProvider {
//
//    static var previews: some View {
//        ChipGroup(chips: ["Chip 1", "Chip 2", "Chip 3", "Chip 4", "Chip 5", "Chip 6", "Chip 7", "Chip 8", "Chip 9", "Chip 10", "Chip 11", "Chip 12"], allowMultipleSelection: false)
//    }
//}
