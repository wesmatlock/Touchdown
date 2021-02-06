import SwiftUI

struct NavigationBarDetailView: View {
  // MARK: - PROPERTIES

  // MARK: - BODY

  var body: some View {
    HStack {
      Button(action: {}, label: {
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
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}
