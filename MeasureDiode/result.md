# 概要

Seeeduino XIAO m0 と、3種類のダイオードで、測定・比較した。

# 必要条件

README.md で説明した必要条件を再掲する。

* マイコンの定格

| symbol | value    |
|:-------|---------:|
| Vdd    |     3.3V |
| VIL    |  <=0.99V |
| VIH    | >=1.815V |

* 2キー同時入力に対応するための必要条件

| IO1 | IO2 | IO3 | | D | Analog |
|-----|-----|-----|-|--:|-------:|
| Ipu | L   | Ipu | | 0 |  <0.99 |
| Ipu | Ipu | L   | | 1 | >1.815 |
| Ipd | H   | Ipd | | 1 | >1.815 |
| H   | Ipd | Ipd | | 0 |  <0.99 |

# 測定に使用したパーツと特性

| パーツ   | 特性          |
|----------|---------------|
| 1N4148   | Vf=1.0V@10mA  |
| 1N4148W  | Vf=0.7V@1.0mA |
| 1SS355VM | Vf=1.2V@100mA |
| R=470    | R=470Ω±10%  |
| R=2k     | R=2kΩ±10%   |

# 1ダイオード

ダイオード RD は使用せず(ショート)、ダイオード D と
抵抗 R のみ使用したパターンの測定結果です。

## `R=470, RD=short, D=1N4148`

| IO1 | IO2 | IO3 | | D | Analog |
|-----|-----|-----|-|--:|-------:|
| Ipu | L   | Ipu | | 0 |  0.524 |
| Ipu | Ipu | L   | | 0 |  1.087 |
| Ipd | H   | Ipd | | 1 |  2.794 |
| H   | Ipd | Ipd | | 1 |  2.236 |

## `R=2k, RD=short, D=1N4148`

| IO1 | IO2 | IO3 | | D | Analog |
|-----|-----|-----|-|--:|-------:|
| Ipu | L   | Ipu | | 0 |  0.624 |
| Ipu | Ipu | L   | | 1 |  1.313 |
| Ipd | H   | Ipd | | 1 |  2.694 |
| H   | Ipd | Ipd | | 1 |  2.006 |

## `R=470, RD=short, D=1N4148W`

| IO1 | IO2 | IO3 | | D | Analog |
|-----|-----|-----|-|--:|-------:|
| Ipu | L   | Ipu | | 0 |  0.506 |
| Ipu | Ipu | L   | | 0 |  1.025 |
| Ipd | H   | Ipd | | 1 |  2.819 |
| H   | Ipd | Ipd | | 1 |  2.296 |

## `R=470, RD=short,  D=1SS355VM`

| IO1 | IO2 | IO3 | | D | Analog |
|-----|-----|-----|-|--:|-------:|
| Ipu | L   | Ipu | | 0 |  0.493 |
| Ipu | Ipu | L   | | 0 |  1.021 |
| Ipd | H   | Ipd | | 1 |  2.827 |
| H   | Ipd | Ipd | | 1 |  2.305 |

# 2ダイオード

ダイオード RD も使用したパターンの測定結果です。

## `R=470, RD=1N4148, D=1N4148`

| IO1 | IO2 | IO3 | | D | Analog |
|-----|-----|-----|-|--:|-------:|
| Ipu | L   | Ipu | | 0 |  0.975 |
| Ipu | Ipu | L   | | 1 |  1.954 |
| Ipd | H   | Ipd | | 1 |  2.339 |
| H   | Ipd | Ipd | | 1 |  1.373 |

## `R=2k, RD=1N4148, D=1N4148`

| IO1 | IO2 | IO3 | | D | Analog |
|-----|-----|-----|-|--:|-------:|
| Ipu | L   | Ipu | | 0 |  1.062 |
| Ipu | Ipu | L   | | 1 |  2.112 |
| Ipd | H   | Ipd | | 1 |  2.255 |
| H   | Ipd | Ipd | | 1 |  1.217 |

## `R=470, RD=1N4148W, D=1N4148W`

| IO1 | IO2 | IO3 | | D | Analog |
|-----|-----|-----|-|--:|-------:|
| Ipu | L   | Ipu | | 0 |  0.939 |
| Ipu | Ipu | L   | | 1 |  1.857 |
| Ipd | H   | Ipd | | 1 |  2.378 |
| H   | Ipd | Ipd | | 1 |  1.463 |

## `R=470, RD=1SS355VM, D=1N4148W`

| IO1 | IO2 | IO3 | | D | Analog |
|-----|-----|-----|-|--:|-------:|
| Ipu | L   | Ipu | | 0 |  0.936 |
| Ipu | Ipu | L   | | 1 |  1.764 |
| Ipd | H   | Ipd | | 1 |  2.375 |
| H   | Ipd | Ipd | | 1 |  1.533 |

# 結論

今回 3種類のダイオードを使用したが、Vfの値はいずれも約 0.5V でほぼ同じであった。

ダイオードを2つ、抵抗1つを直列に接続することで、プルアップ方式の時に
ぎりぎり仕様の範囲に収まる電圧となり、実用できそうなことが分かった。
また、抵抗の値を増減することで、微妙な調整ができそうである。

ダイオード2つでは、プルダウン方式ではゴーストが発生することが分かった。
ただし、ダイオード3つを直列に接続することで、仕様の範囲に収まる電圧となる可能性がある。