//@Component
//export struct CustomDesign {
//  @Builder
//  customDesign(): any {
//    Text("Custom builder design")
//  }
//  show : boolean = true
//  build() {
//    Column() {
//
//      LibraryDesign({
//        ui: this.customDesign()
//      })
//
//    }
//  }
//}

@Component
export struct LibraryDesign {
  @BuilderParam
  private ui: () => any
  @Link show : boolean
  build() {
    if(this.show) {
        Column() {
          this.ui()
          Text("Library with custom builder").fontSize(30)
        }
        .transition({ type: TransitionType.Insert, scale: { x: 0.0, centerX: 0.0 } })
        .transition({ type: TransitionType.Delete, scale: { x: 0.0, centerX: 0.0 } })
        .width("70%")
      .backgroundColor("#ffb80000")
    }
  }
}