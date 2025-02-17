#import "@preview/cetz:0.2.0"

#set page(width: 16cm, height: auto, margin: 1.5cm)
#set text(font: "Noto Serif CJK SC", size: 12pt)
#show math.equation: set text(font: "New Computer Modern Math")

= Typst 开发环境测试文档

本文档用于测试 Typst 开发环境的各项功能。我们将展示多样的中文排版、数学公式和图表功能。

== 中文排版示例

=== 古文选段
#quote[
  *《论语》开篇*：子曰："学而时习之，不亦说乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？"
]

=== 现代文本
在计算机科学中，我们经常需要处理各种复杂的算法和数据结构。下面我们将通过一系列示例来展示这些内容。

== 数学公式展示

=== 基础数学
1. 求和公式：$ sum_(k=1)^n k = (n(n+1))/2 $
2. 二项式定理：$ (x + y)^n = sum_(k=0)^n binom(n,k) x^k y^(n-k) $
3. 欧拉公式：$ e^(i pi) + 1 = 0 $

=== 高等数学
1. 定积分：$ integral_0^∞ e^(-x^2) space d x = sqrt(pi)/2 $
2. 傅里叶变换：$ F(omega) = integral_(- ∞)^∞ f(t)e^(-i omega t) space d t $
3. 麦克斯韦方程组：
$ div bold(E) = rho/epsilon_0 $
$ div bold(B) = 0 $
$ op("rot") bold(E) = - diff/diff t bold(B) $
$ op("rot") bold(B) = mu_0 (bold(J) + epsilon_0 diff/diff t bold(E)) $

== 表格示例

#table(
  columns: (auto, auto, auto),
  [*数学概念*], [*公式*], [*应用场景*],
  [圆的面积], [$ pi r^2 $], [几何计算],
  [正态分布], [$ f(x) = (1)/(sigma sqrt(2pi)) e^(-(x-mu)^2)/(2sigma^2) $], [统计分析],
  [波动方程], [$ (diff^2 u)/(diff t^2) = c^2 (diff^2 u)/(diff x^2) $], [物理模拟]
)

== 图形绘制

=== 基础几何
#cetz.canvas({
  import cetz.draw: *
  
  // 绘制一个复杂的几何图形
  circle((0,0), radius: 1, stroke: blue)
  rect((-1.5,-1.5), (1.5,1.5), stroke: red)
  line((-2,0), (2,0), stroke: green)
  line((0,-2), (0,2), stroke: green)
  
  // 添加一些点和标注
  circle((1,1), radius: 0.05, fill: black)
  content((1.2,1), [(1,1)])
  circle((-1,-1), radius: 0.05, fill: black)
  content((-1.2,-1), [(-1,-1)])
})

=== 函数图像
#cetz.canvas({
  import cetz.draw: *
  
  // 绘制坐标轴
  line((-2,0), (2,0))
  line((0,-2), (0,2))
  
  // 标注坐标轴
  content((2.2,0), "$x$")
  content((0,2.2), "$y$")
  
  // 绘制二次函数曲线
  for x in range(-20, 21) {
    let t = x * 0.1
    let prev_t = (x - 1) * 0.1
    if x != -20 {
      line(
        (prev_t, calc.pow(prev_t, 2)),
        (t, calc.pow(t, 2)),
        stroke: blue
      )
    }
  }
  
  // 绘制正弦函数曲线
  for x in range(-20, 21) {
    let t = x * 0.1
    let prev_t = (x - 1) * 0.1
    if x != -20 {
      line(
        (prev_t, calc.sin(prev_t*calc.pi)),
        (t, calc.sin(t*calc.pi)),
        stroke: red
      )
    }
  }
})

== 代码格式化示例

```python
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n-1) + fibonacci(n-2)

def is_prime(n):
    if n < 2:
        return False
    for i in range(2, int(pow(n, 0.5)) + 1):
        if n % i == 0:
            return False
    return True
```

#v(1em)

以上示例展示了 Typst 在中文排版、数学公式、图表绘制等方面的强大功能。
