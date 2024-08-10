@Component
struct Shake {
  build() {
    NavDestination() {
      Text("摇一摇")
        .fontSize(60)
    }
    .title("摇一摇")
  }
}

export { Shake }