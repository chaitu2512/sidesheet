import { MaterialSheet } from './sidesheet'

@Entry
@Component
struct Index {
  @State showSideSheet : boolean = false
  @Builder
  sheetDesign(): any {
    Text("Custom builder design")
  }

  build() {
    Stack() {
      Column() {

        Button('Show Sheet')
          .onClick(() => this.showSideSheet = true )

      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.Green)

      MaterialSheet({
        ui: this.sheetDesign(),
        visible: $showSideSheet
      })
    }
  }
}