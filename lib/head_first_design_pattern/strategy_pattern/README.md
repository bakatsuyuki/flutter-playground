# メモ

## アンチパターンの問題点は？
- サブクラスを使ってすべて表現するパターンでは・・・
    - もともとあった `Duck` クラスに新しい `fly` メソッドを追加することで、 `RubberDuck` も飛べるようになってしまった
    - あるDuckでは不要にな振る舞いをそのDuckごとにoverrideして処理をしないようにする必要がある
- Flyableなどを実装するパターンでは・・・
    - Flyableを継承しているクラスで、振る舞いを共通化できないため、何十個もクラスで重複が大量に発生し、変更がとても大変になる
## Strategy Patternのメリットは?
- 別のDuckどうしで重複する振る舞いを使い回せる
- サブクラスで何もしないケースで明示的にその振る舞いを渡すことで柔軟になる
