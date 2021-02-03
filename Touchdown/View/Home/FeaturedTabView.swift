import SwiftUI

struct FeaturedTabView: View {

  // MARK: - PARAMETERS

  // MARK: - BODY

  var body: some View {
    TabView {
      ForEach(players) { player in
        FeaturedItemView(player: player)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    } //: TABVIEW
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

// MARK: - PREVIEW

struct FeaturedTabView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedTabView()
      .previewDevice("iPhone 12 Pro")
      .background(Color.gray)
  }
}
