#-------------------------------------------------------------------------------
# gnuplotの設定
#-------------------------------------------------------------------------------
reset
load "gnuplot_script/template.gp"
set nokey                # 凡例の非表示
set xrange [0:3]      # x軸方向の範囲の設定
set yrange [0.0001:1]      # y軸方向の範囲の設定
set size square          # 図を正方形にする
#set xl "x"
#set yl "n_e []"
set logscale y
set format y "10^{%L}"
set term gif animate     # 出力をgifアニメに設定
set output "animation.gif" # 出力ファイル名の設定

#-------------------------------------------------------------------------------
# 変数の設定
#-------------------------------------------------------------------------------
n0 = 1    # ループ変数の初期値
n1 = 300  # ループ変数の最大値
dn = 1    # ループ変数の増加間隔

#-------------------------------------------------------------------------------
# ループの開始
#-------------------------------------------------------------------------------
load "gnuplot_script/animation.plt" 
