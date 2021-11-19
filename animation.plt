#nea1.plt

#-------------------------------------------------------------------------------
# ループ処理
#-------------------------------------------------------------------------------
if(exist("n")==0 || n<0) n = n0 # ループ変数の初期化

#-------------------------------------------------------------------------------
# プロット
#-------------------------------------------------------------------------------
filename = sprintf("work_POP/170_140_rad/output_main/%05d.dat", n) # n番目のデータファイルの名前の生成
time = sprintf("%.1f [ns] ", n*0.00588)
plot filename using ($1/100):($48) with lines lw 2 lc rgb"black"          # n番目のデータのプロット

unset label
set label time at graph 0.8,0.9
pause 0.2
#-------------------------------------------------------------------------------
# ループ処理
#-------------------------------------------------------------------------------
n = n + dn            # ループ変数の増加
if ( n < n1 ) reread  # ループの評価
undefine n            # ループ変数の削除
