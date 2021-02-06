import SwiftUI

struct ProductDetailView: View {
  // MARK: - PROPERTIES

  @EnvironmentObject var shop: Shop

  // MARK: - BODY

  var body: some View {
    VStack(alignment: .leading, spacing: 5, content: {

      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

      HeaderDetailView()
        .padding(.horizontal)

      TopPartDetailView()
        .padding(.horizontal)
        .zIndex(1)

      // DETAIL BOTTOM
      VStack(alignment: .center, spacing: 0, content: {

        // RATING + SIZE
        RatingSizesDetailView()
          .padding(.top, -20)
          .padding(.bottom, 10)
        // DESCRIPTION
        ScrollView(.vertical, showsIndicators: false, content: {
          Text(shop.selectedProduct?.description ?? sampleProduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        }) //: SCROLL

        // QUANTITY + FAVORITE
        QuantityFavoriteDetailView()
          .padding(.vertical, 10)
        // ADD TO CART
        AddToCartDetailView()
          .padding(.bottom, 20)
      }) //: VStack
      .zIndex(0)
      .padding(.horizontal)
      .background(
        Color.white
          .clipShape(CustomShape())
          .padding(.top, -105)
      )

    }) //: VStack
    .ignoresSafeArea(.all, edges: .all)
    .background(
      Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
      ).ignoresSafeArea(.all, edges: .all)
    )
  }
}

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
      .environmentObject(Shop())
      .previewLayout(.fixed(width: 375, height: 821))
  }
}
