import SwiftUI

struct CategoryGridView: View {

  // MARK: - PROPERTIES

  // MARK: - BODY

  var body: some View {
    ScrollView(.horizontal, showsIndicators: false, content: {

      LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
        Section(
          header: SectionView(rotateClockwise: false),
          footer: SectionView(rotateClockwise: true)
        ) {
          ForEach(categories) { category in
            CategoryItemView(category: category)
          }
        }
      }) //: GRID
      .frame(height: 140)
      .padding(.horizontal, 155)
      .padding(.vertical, 10)

    }) //: SCROLL
  }
}

// MARK: - PREVIEW

struct CategoryGridView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryGridView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(colorBackground)
  }
}