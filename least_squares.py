from matplotlib import pyplot as plt
import numpy as np
import sys

args = sys.argv
file=args[1]
sout=args[2]
dx=299792458/(170*10**9)/100
dt=float(sout)/(170.0*10**9)
# データをcsvから読み込みxyを作成
data = np.loadtxt(file, delimiter=" ")
data = data.T
x = data[0]*dt
y = data[1]*dx
 
# polyfitの次数を1（直線）にしてy=ax+bのa, bを取得
coe = np.polyfit(x, y, 1)
print(coe)
 
# 回帰直線を生成
y_fit = coe[0] * x + coe[1]
 
# ここからグラフ描画
# フォントの種類とサイズを設定する。
plt.rcParams['font.size'] = 14
plt.rcParams['font.family'] = 'Times New Roman'
 
# 目盛を内側にする。
plt.rcParams['xtick.direction'] = 'in'
plt.rcParams['ytick.direction'] = 'in'
 
# グラフの上下左右に目盛線を付ける。
fig = plt.figure()
ax1 = fig.add_subplot(111)
ax1.yaxis.set_ticks_position('both')
ax1.xaxis.set_ticks_position('both')
 
# 軸のラベルを設定する。
ax1.set_xlabel('x')
ax1.set_ylabel('y')
 
# データプロットの準備。
ax1.scatter(x, y, label='sample', lw=1, marker="o")
ax1.plot(x, y_fit, label='fitted curve', lw=1)
 
# グラフを表示する。
fig.tight_layout()
fig.text(0.7, 0.9, int(coe[0]))
plt.show()
plt.close()
fig.savefig("temp.eps")