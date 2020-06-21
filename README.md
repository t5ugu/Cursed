# Cursed Piston
ver. 1.16+
## 概要
注意: WorldのすべてのItem Frameが透明化します。

## セットアップ
```/function piston:give```をチャットから実行すると、

以下のアイテムがもらえます。

・**Item Frame**

　　何の変哲もないItem Frameです。

　

・PistonとSticky Piston(以降、2つ合わせて**Piston**と表記)

　　それぞれ、Custom Model Dataをもっていますが、それ以外は通常と変わりません。

　

・Command Block(以降、**Command Block** と表記)

　　Command記入済み。不都合があれば、書換え可。

## 使い方
1. 好きなところにItem Frameをつけて、*Piston*を飾る。

2. 好きな角度に回転させて、

2-1. *Command Block*をButtonで実行する。

2-2. ```/funtion piston:1st-start```をチャットで実行する。

　

2-1でも2-2でも、最寄りのものが動きます。

VanillaのPiston/Sticky Pistonでできることは、疑似的に同じ挙動をします。

それ以外に、Item Frame特有の45°、135°、225°、315°の向きでも動くようにしたものが、このDatapackです。

Buttonに最適なスパンで実行されるので、一度だけ実行することは出来ません。

## フォルダーの説明
```
<Root>
┝-resourcepacks
┃ ┇
┃ ┝-"piston" <- DL this
┃ ┇
┃
┝-saves
┇ ┇
  ┝-<World>
  ┇ ┝-advancements
    ┝-data
    ┝-datapack
    ┇ ┇
      ┝-"Cur'dPiston" <- DL this
      ┇
```
### Cur'dPiston
functionが入っています。

これは**データパック**なので、これを*ワールド\datapack*に入れてください。

### piston
modelを構成しています。

これは**リソースパック**なので、これを先程のデータパックを入れたフォルダーのあるところの*resourcepacks*に入れてください
