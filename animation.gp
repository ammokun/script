#-------------------------------------------------------------------------------
# gnuplotの設定
#-------------------------------------------------------------------------------
reset
set terminal aqua dashed
set xlabel font "Arial, 20"
set ylabel font "Arial, 20"
set tics font "Arial, 20"
set xtics offset 0, -0.2
set xtics 0.5
set ytics offset -0.1, 0
set key font "Arial, 15"
set ylabel offset -2,0
set lmargin 15
set tmargin 2
set bmargin 5
set nokey                # 凡例の非表示
set xrange [0:3]      # x軸方向の範囲の設定
set yrange [0:3]      # y軸方向の範囲の設定
#set size square          # 図を正方形にする
#set xl "x"
#set yl "n_e []"
#set xlabel "x/{/Symbol l}"
# set ylabel "Electron density [cm^-^3]"
#set logscale y
#set format y "10^{%L}"
set term gif animate     # 出力をgifアニメに設定
set output "animation_ne.gif" # 出力ファイル名の設定

#-------------------------------------------------------------------------------
# 変数の設定
#-------------------------------------------------------------------------------
n0 = 1    # ループ変数の初期値
n1 = 350  # ループ変数の最大値
dn = 1    # ループ変数の増加間隔

#-------------------------------------------------------------------------------
# ループの開始
#-------------------------------------------------------------------------------
load "gnuplot_script/animation.plt" 
