import SwiftUI

struct NavigationBarDetailView: View {
  // MARK: - PROPERTIES

  @EnvironmentObject var shop: Shop

  // MARK: - BODY

  var body: some View {
    HStack {
      Button(action: {
        feedback.impactOccurred()
        
        withAnimation(.easeIn) {
          shop.selectedProduct = nil
          shop.showingProduct = false
        }
      }, label: {
        Image(systemName: "chevron.left")

        Spacer()

        Button(action: {}, label: {
          Image(systemName: "cart")
            .font(.title)
        })
      })
    } //: HStack
    .font(.title)
    .foregroundColor(.white)

  }
}

// MARK: - PREVIEW

struct NavigationBarDetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarDetailView()
      .environmentObject(Shop())
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}
