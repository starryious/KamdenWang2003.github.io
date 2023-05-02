# 傅立叶分析导论笔记(Notes of Fourier Analysis)

>记录我在大一结束暑假学习Stein的Fourier Analysis的过程
>
>Edited by Stellaria

## 写在前面

**在学习这本书之前,我只有数学分析Ⅰ,数学分析Ⅱ和线性代数的知识储备,大概看了浏览了这本书之后发现这本书会涉及偏微分方程和一些其他的内容,我会一边学习傅立叶分析,在看到这些不熟悉的内容之后会另外学习这些内容,所以固然会有很多不完善的地方.这本书的推导证明过程也很简略,所以对我而言自学起来会很艰辛,但同时傅立叶分析是很有意思的一块内容,其中蕴含了十分多优美令人震撼的数学结论且广泛应用于其他领域,这就给我带来了慢慢学下去的动力.由于水平有限,希望看到这份笔记的读者若发现错误之处可以提出.**

****

## 第一章.傅立叶分析的起源

>即使 d'Alembert 和 Euler 都知道了傅立叶展开也无济于事,因为他们没有重视,他们都认为任意一个不连续函数不能被分解成三角级数的形式甚至似乎没有人把不同角的余弦化为一个恒量,这是我在研究热理论中不得不解决的第一个问题——J.Fourier，1808-9

****

## 第二章.傅立叶级数的基本性质

>在Fourier的断言给这个主题带来新观点：用解析形式来表示一个任意函数，这个问题在近50年中没有任何进展。
>因此在这块数学内容发展上开启了新时期，同时这预示着数学物理方面主要的成就以惊人的方式发展——B.Riemann，1854

这一章开始对傅立叶级数严谨的研究，先设定了一个引入的主要目标，接着用公式来表示。

第一个目标：两个有相同傅立叶系数的函数是否一定要相同？事实上，如果这两个函数都连续，那么他们必然相同。

将傅立叶系数代入傅立叶级数中化简可以得到：
$$
\frac1{2\pi}\int D_N(x-y)f(y)\,dy
$$
在国内课本中我们一般看到的是:
$$
\frac1{\pi}\int_{-\pi}^{\pi}f(t)\frac{\sin\frac{2m+1}{2}(t-x)}{2\sin\frac{t-x}2}\,dt
$$
$\left\{D_N\right\}$是一族函数称为 **Dirichlet kernels**，原级数就是 $f与\left\{D_N\right\}$的**卷积**。总的来说，给定一族函数 $\left\{K_N\right\}$，我们想要去研究 n 趋向于无穷时卷积的极限性质。

我们发现如果 $\left\{K_N\right\}$ 满足三条重要的性质，可以称 $\left\{K_N\right\}$ 是一族“**良核**”（good kernels），即卷积可以趋向于原函数（至少当原函数连续时）。但 Dirichlet kernels 并不是“良核”，所以傅立叶级数的收敛性问题依旧没能解决。

目前还解决不了收敛性问题那么我们转而考虑其他将傅立叶级数求和的方法。第一种方法包含了**平均部分和**，是与“良核”的卷积，并服从 **Fejer** 定理，从中我们可以推断出一个周期上的连续函数可以被唯一近似为三角多项式；第二种方法我们可以用 **Abel** 的方法求和也能得到“良核”，在这种情况下可以得到 Dirichlet 问题的解决方法

****

### 1 例子以及问题的公式化

$$
设\;f\in\R[a,b],b-a=L,那么\;f\;的\;n\;位傅立叶系数定义为:\;\hat f(n)=\frac1L\int_{a}^bf(x)e^{-2\pi inx/L}\,dx,\quad n\in\Z
$$

这本书中基本都是以指数形式来表示傅立叶系数的，国内教材多数是以三角形式，三角形式更易理解，指数形式更容易表示,化简和计算，理解之后指数形式更加便捷。
$$
f\;的傅立叶级数就可以表示为:\;\sum_{n=-\infin}^\infin \hat f(n)e^{2\pi inx/L}\quad有时也表示为:\;f(x)\sim\sum_{n=-\infin}^\infin a_n e^{2\pi inx/L}
$$
**EXAMPLE 1.**
$$
设\;f(\theta)=\theta,-\pi\le\theta\le\pi,计算其傅立叶系数
$$
$\color{#F80}\lhd$
$$
如果\;n\ne0,有:\;\hat f(n)=\frac1{2\pi}\int_{-\pi}^\pi\theta \,e^{-in\theta}\,d\theta=\frac1{2\pi}[-\frac{\theta}{in}e^{-in\theta}]_{-\pi}^{\pi}+\frac1{2\pi in}\int_{-\pi}^\pi e^{-in\theta}\,d\theta=\frac{(-1)^{n+1}}{in}\\
n=0,\;\hat f(0)=\frac1{2\pi}\int_{-\pi}^\pi\theta\,d\theta=0
$$
$\color{#F80}\rhd$

**EXAMPLE 2.**
$$
D_N(x)=\sum_{n=-N}^Ne^{inx}\quad x\in[-\pi,\pi]\\称为第\;N\;位\;Dirichlet\;kernel,注意到其傅立叶系数\;a_n\;满足\;a_n=1(|n|<N),其余\;a_n=0\\我们也可以把它写成:\;D_N(x)=\frac{\sin((N+\frac12)x)}{\sin(x/2)}\;求得这个结果可以用几何级数的求和技巧:\\
设\;\sum_{n=0}^N\omega^n\;和\;\sum_{n=-N}^{-1}\omega^n\;代入\;\omega=e^{ix},其中这两个求和结果分别是:\;\frac{1-\omega^{N+1}}{1-\omega}\;和\;\frac{\omega^{-N}-1}{1-\omega}\\
相加得到:\frac{\omega^{-N}-\omega^{N+1}}{1-\omega}=\frac{\omega^{-N-1/2}-\omega^{N+1/2}}{\omega^{-1/2}-\omega^{1/2}}=\frac{\sin((N+\frac12)x)}{\sin(x/2)}\;(Euler\;公式)
$$
**EXAMPLE 3.**
$$
函数\;P_r(\theta)=\sum_{n=-\infin}^\infin r^{|n|}e^{in\theta}\;叫做\;Poisson\;kernel\quad\theta\in[-\pi,\pi],r\in[0,1)\\
由于泊松核对于一个固定的\;r\;是一致收敛的,我们可以改变积分号和求和号的顺序得到第\;n\;位傅立叶系数为\;r^{|n|}\;\\我们也可以把它写成:\;P_r(\theta)=\frac{1-r^2}{1-2r\cos \theta+r^2}\\
事实上,P_r(\theta)=\sum_{n=0}^\infin\omega^n+\sum_{n=1}^\infin\bar\omega^{n}\;其中\;\omega=r\,e^{i\theta},根据几何级数的绝对收敛性可得:\\
P_r(\theta)=\frac1{1-\omega}+\frac{\bar\omega}{1-\bar\omega}=\frac{1-\bar\omega+(1-\omega)\bar\omega}{(1-\omega)(1-\bar\omega)}=\frac{1-|\omega|^2}{|1-\omega|^2}=\frac{1-r^2}{1-2r\cos \theta+r^2}
$$
既然直接讨论傅立叶级数的收敛性遇到了障碍,那么接下来我们将讨论的第一个问题是傅立叶级数的部分和是否点态收敛于其函数本身即是否有:
$$
\lim_{N\to\infin}S_N(f)(\theta)\overset{\text{?}}{=}f(\theta) \quad 对于每个\;\theta
$$
答案是否定的.

****

### 2 傅立叶级数的唯一性

**Theorem 2.1**
$$
设\;f(x)\;是在一个周期上的可积函数且\;\hat f(n)=0\;(n\in\Z),那么\;f\;在每个连续点处的函数值都等于\;0\;
$$
证明是需要构造一类"峰"在原点的具有良好性质三角函数来反证,具有分析技巧性和构造性,

**Corollary 2.2**
$$
如果\;f\;是周期上的连续函数且\;\hat f(n)=0\;(n\in\Z),那么\;f=0
$$
**Corollary 2.3**
$$
设\;f\;是一个周期上的连续函数,且傅里叶级数绝对收敛,那么其傅里叶级数一致收敛于\;f\;即:\lim_{N\to\infin}S_N(f)(\theta)=f(\theta)
$$
推论2.3的证明用了函数项级数的一致收敛,故极限和求和符号互换顺序

**Corollary 2.4**
$$
设\;f\;是在一个周期上有二阶连续导数的函数.那么有:\;\hat f(n)=O(1/|n|^2)\;(与1/|n|^2同阶)\quad as\;|n|\to\infin
$$
推论2.4的证明先用分部积分法接着再根据级数的 Weierstrass 判别法即可

同时我们也可以得到一个恒等式:
$$
\hat f'(n)=in\hat f(n)\quad for\; all \;n\in\Z
$$
**Corollary 2.5**
$$
设\;f\;的傅立叶级数绝对收敛(故一致收敛于f),若\;f\;满足\;Holder\;condition:\\
(\alpha>1/2)\quad sup|f(\theta+t)-f(\theta)|\le A|t|^{\alpha}\quad for\;all\;t
$$
这里引入一个新的记号:
$$
若\;f\;有\;k\;阶连续导数那么记\;f\in\C^K,\C^k和上述的Holder\;condition\;都可以用来描述函数的光滑性\\一个函数越光滑那么其傅立叶级数就收敛得越快.
$$

****

### 3 卷积

$$
给定实数域上两个以\;2\pi\;为周期得可积函数\;f,g,我们定义它们在[-\pi,\pi]的卷积\;f*g:\\
(f*g)(x)=\frac1{2\pi}\int_{-\pi}^\pi f(y)g(x-y)\,dy
$$

可以把卷积粗略地理解为加权平均

故傅立叶级数的部分和可以表示为原来的函数与 Dirichlet kernel 的卷积

**Proposition 3.1**
$$
设\;f,g,h\;是以\;2\pi\;为周期的可积函数那么:\\
\begin{align}
1)&\quad f*(g+h)=(f*g)*(f*h)\\
2)&\quad (cf)*g=c(f*g)=f*(cg)&\text{for any c}\in\C\\
3)&\quad f*g=g*f\\
4)&\quad (f*g)*h=f*(g*h)\\
5)&\quad f*g\;是连续的\\
6)&\quad \widehat{f*g}(n)=\hat f(n)\hat g(n)\\
\end{align}
$$

**Lemma 3.2**

若 $f$ 是周期上的可积函数,且有界(B是其确界)那么存在一列周期上的连续函数列 $\left\{f_k\right\}_{k=1}^\infin$ 使得
$$
sup|f_k(x)|\le B\\
\int_{-\pi}^\pi|f(x)-f_k(x)|\,dx\to0\qquad as\; k\to\infin
$$

****

### 4 良核

如果一类周期函数 $\left\{K_n(x)\right\}$ 满足以下条件,那么可以称这类函数为"良核"(**good kernels**)
$$
\begin{align}
1)&\quad对于所有\;n\ge1:\frac{1}{2\pi}\int_{-\pi}^{\pi}K_n(x)\,dx=1\\
2)&\quad存在\;M>0,对于所有\;n\ge1:\int_{-\pi}^\pi|K_n(x)|\,dx\le M\\
3)&\quad对于任意\;\delta>0:\int_{\delta\le|x|\le\pi}|K_n(x)|\,dx\to0\quad as\;n\to\infin
\end{align}
$$
**Theorem 4.1**

 $\left\{K_n(x)\right\}$ 是一类良核, $f$ 是周期上的可积函数,那么当 $f$ 在 $x$ 处连续成立:
$$
\lim_{n\to\infin}(f*K_n)(x)=f(x)
$$
若 $f$ 处处连续,那么就一致收敛于 $f(x)$

定理4.1的证明用了三条良核的性质和一些基本的技巧,容易理解

Dirichlet kernel 满足第一条性质,但不满足第二三条性质,因此不是一个良核,事实上,Dirichlet kernel 有:
$$
\int_{-\pi}^\pi|D_N(x)|\,dx\ge c\log N\quad as\;N\to\infin
$$

****

### 5 切萨罗求和和柯西求和

不同于正常的求和形式,我们考虑另外两种不同的求和形式.

**5.1 切萨罗方法与求和**
$$
\sigma_N=\frac{s_0+s_1+...+s_{N-1}}N
$$
$\sigma_N$ 称为第 N 位 Ces$\grave{a}$ro means 或 Ces$\grave{a}$ro 和,如果这个和在 N 趋于无穷大时收敛,那么我们称级数可以切萨罗求和,进一步地,如果级数收敛于一个数,那么其切萨罗和也趋于这个数

**5.2 费耶尔定理**

费耶尔定理是切萨罗求和在傅立叶级数中一个有意思的应用,在先前的讨论中我们知道了 Dirichlet kernels 不是"良核",但是它的平均值有很好的性质.

我们用切萨罗方法于求和
$$
\sigma_N(f)(x)=\frac{S_0(f)(x)+...+S_{N-1}(f)(x)}N,\quad因为\;S_n(f)=f*D_n,我们有:\\
\sigma_N(f)(x)=(f*F_n)(x)=\frac1{2\pi}\int_{-\pi}^\pi f(x)F_n(x-y)\,dx
$$
这里的 $F_N(x)$ 称为 $Fej\acute{e}r\;kernel$:
$$
F_N(x)=\frac{D_0(x)+...+D_{N-1}(x)}N
$$
**Lemma 5.1**

我们有
$$
F_N(x)=\frac1N\frac{\sin^2(Nx/2)}{\sin^2(x/2)}
$$
并且 $Fej\acute{e}r\;kernel$ 是一个"良核".会在练习中给出计算过程

**Theorem 5.2**

*若 $f$ 是在一个周期上的可积函数,那么 $f$ 的傅立叶级数对于每一个连续点都是是可切萨罗求和的,进一步地,如果 $f$ 是周期上的连续函数,那么其傅立叶级数可一致切萨罗求和*

**Corollary 5.3**

*如果 $f$ 是一个周期上的可积函数,且对于所有 $n$ 满足 $\hat f(n)=0$,那么在每一个连续点上成立 $f=0$ *

这是一个之前说明过的推论,这里证明很简单,因为所有的部分和都是0,因此所有的切萨罗和也都是0,那么 $f=0$

**Corollary 5.4**

*在一个周期上的连续函数可以被唯一地近似成三角多项式*

推论 5.4 是 Weierstrass 近似定理对于多项式的一个例子

**5.3 阿贝尔方法与求和**

$\sum_{k=0}^\infin c_k$ 可阿贝尔求和于 $s$ 定义为,如果对于每一个 $0\le r<1$ 级数
$$
A(r)=\sum_{k=0}^\infin c_kr^k
$$
收敛,并且
$$
\lim_{r\to1}A(r)=s
$$
 $A(r)$ 这个量称为级数的 **Abel means**,可以证明若级数收敛于 $s$ 那么它可阿贝尔求和于 $s$ ,进一步地,我们可以发现阿贝尔求和比切萨罗求和更完备:如果一个级数可切萨罗求和,那么一定可以阿贝尔求和,反之不然.

**5.4 泊松核与在单位圆盘上的迪利克雷问题**

为了把阿贝尔求和运用到傅立叶级数上,我们定义函数 $f(\theta)\sim\sum_{n=-\infin}^\infin a_ne^{in\theta}$ 的阿贝尔方法为
$$
A_r(f)(\theta)=\sum_{n=-\infin}^\infin r^{|n|}a_ne^{in\theta}
$$
和切萨罗方法类似,我们可以把阿贝尔方法写成卷积形式:
$$
A_r(f)(\theta)=(f*P_r)(\theta)
$$
事实上,
$$
A_r(f)(\theta)=\sum_{n=-\infin}^\infin r^{|n|}a_n e^{in\theta}=\sum_{n=-\infin}^\infin r^{|n|}(\frac1{2\pi}\int_{-\pi}^\pi f(\varphi)e^{-in\theta}\,d\varphi)e^{in\theta}=\frac1{2\pi}\int_{-\pi}^\pi f(\varphi)(\sum_{n=-\infin}^{\infin}r^{|n|}e^{-in(\varphi-\theta)})\,d\varphi
$$
**Lemma 5.5**

*若 $0\le r<1$ 那么*
$$
P_r(\theta)=\frac{1-r^2}{1-2r\cos\theta+r^2}
$$
*泊松核随着 r 从0到1是一个"良核"*

**Theorem 5.6**

*在一个周期上的可积函数的傅立叶级数在每一个连续点是可阿贝尔求和的,进一步地,若 $f$ 是一个周期上的连续函数那么其傅立叶级数是一致可阿贝尔求和的*

****

### 6 Exercises

2.关于傅立叶级数的对称性质,设 $f$ 是定义在实数域上以 $2\pi$ 为周期的黎曼可积函数
$$
\begin{align}
(a)\quad& 证明\;f\;的傅立叶级数可以表示为:\\&f(\theta)\sim\hat f(0)+\sum_{n\ge1}[\hat f(n)+\hat f(-n)]\cos n\theta+i[\hat f(n)-\hat f(-n)]\sin n\theta\\
(b)\quad& 证明:若\;f\;是偶函数,那么\hat f(n)=\hat f(-n),我们可以得到余弦级数\\
(c)\quad& 证明:若\;f\;是奇函数,那么\hat f(n)=-\hat f(-n),我们可以得到正弦级数\\
(d)\quad& 设\;f(\theta+\pi)=f(\theta)\;证明:对于一切\;n\;为偶数有:\hat f(n)=0\\
(e)\quad& 证明:f\;是实值函数当且仅当\;\overline{\hat f(n)}=\hat f(-n)\;对于一切\;n\;都成立
\end{align}
$$
6.设 $f(\theta)=|\theta|$ 定义域为 $[-\pi,\pi]$ 
$$
\begin{align}
(a)\quad&计算其傅立叶系数,验证其傅立叶系数为:\\
&\hat f(n)=\begin{cases}
\frac{\pi}2&\text{若 n = 0}\\
\frac{-1+(-1)^n}{\pi n^2}&\text{若 n ≠ 0}
\end{cases}\\
(b)\quad&取\;\theta=0\;证明:\\
&\sum_{n\;odd\;\ge1}\frac1{n^2}=\frac{\pi^2}8\qquad\sum_{n=1}^\infin\frac1{n^2}=\frac{\pi^2}6\qquad\sum_{n\;even\;\ge2}\frac1{n^2}=\frac{\pi^2}{24}
\end{align}
$$
15.证明费耶尔核为:
$$
\boxed{F_N(x)=\frac1N\frac{\sin^2(Nx/2)}{\sin^2(x/2)}}
$$
$\color{#F80}\lhd$
$$
\begin{align}
法一:&\\
&NF_N(x)=\sum_{n=0}^{N-1}\frac{\omega^{-n}-\omega^{n+1}}{1-\omega}=\frac1{1-\omega}(\frac{\omega^{-N+1}-\omega}{1-\omega}-\omega\frac{1-\omega^{N}}{1-\omega})=\omega[\frac{\omega^{-N}+\omega^{N}-2}{(1-\omega)^2}]\\
&=\frac1{(\omega^{-1/2})^2}\frac{(\omega^{N/2}-\omega^{-N/2})^2}{(1-\omega)^2}=\frac{(\omega^{N/2}-\omega^{-N/2})^2}{(\omega^{1/2}-\omega^{-1/2})^2}=\frac{\sin^2(Nx/2)}{\sin^2(x/2)}\\
法二:&\\
&\sum_{n=0}^{N-1}\frac{\sin(2N+1)\frac x2}{\sin(x/2)}=\sum_{n=0}^{N-1}\frac{-\frac12[\cos(N+1)x-\cos Nx]}{\sin^2(x/2)}=\frac{\sin^2(Nx/2)}{\sin^2(x/2)}
\end{align}
$$
$\color{#F80}\rhd$

17.证明:若 $f$ 在 $\theta$ 是跳跃间断点那么
$$
\lim_{r\to1}A_r(f)(\theta)=\frac{f(\theta^+)+f(\theta^-)}2\qquad 0\le r<1
$$
[Hint:解释为什么$\frac1{2\pi}\int_{-\pi}^0P_r(\theta)\,d\theta=\frac1{2\pi}\int_{0}^\pi P_r(\theta)\,d\theta=\frac12$ 接着修改讲义中的证明]

## 第三章.傅立叶级数的收敛性

>在给定区间的任意函数可以被表示为正弦和余弦级数,同时我们能利用收敛的傅立叶级数的其他良好的性质,这些都是由伟大的几何学家傅立叶开启的——G.Dirichlet 1829

在这一章中，我们继续对傅立叶级数收敛性的研究，我们从两个不同的视角来一步步解决问题

第一个是“全局”视角，关注函数的整体性质，我们称 $f$ “均方收敛”：若 $f$ 在周期上可积
$$
\frac1{2\pi}\int_0^{2\pi}|f(\theta)-S_N(f)(\theta)|^2\,d\theta\to0\qquad as\;N\to\infin
$$
这个结果的核心是“正交性”这一基本概念；这个想法是根据向量空间中的内积而来的，并且跟 Hilbert spaces 有关.

Parseval 恒等式是“均方收敛”的公式形式

第二个是“局部”观点，关注函数在给定点附近的性质，我们考虑的主要问题是级数的点态收敛：对于一个给定的 $\theta $ ,$f$ 的傅立叶级数是否收敛于 $f(\theta)$.我们可以证明 $f$ 在 $ \theta$ 可导时成立，作为一个引理，我们可以得到黎曼局部原理 

### 1 傅立叶级数的均方收敛

**Theorem 1.1**

设 $f$ 是在一个周期上的可积函数,那么:
$$
\frac1{2\pi}\int_0^{2\pi}|f(\theta)-S_N(f)(\theta)|^2\,d\theta\to0\qquad as\;N\to\infin
$$
接下来就讲了线性代数中的向量空间和内积,我们可以得到:
$$
(f,g)=\frac1{2\pi}\int_0^{2\pi}f(\theta)\overline{g(\theta)}\,d\theta\qquad||f||=(\frac1{2\pi}\int_0^{2\pi}|f(\theta)|^2\,d\theta)^{1/2}
$$
根据线性代数的正交性的知识,我们可以得到
$$
||f||^2=||f-S_N(f)||^2+\sum_{|n|\le N}|a_n|^2
$$
**Lemma 1.2(最佳逼近)**

若 $f$ 是一个周期上的可积函数,傅立叶系数为 $a_n$ 那么:
$$
||f-S_N(f)||\le||f-\sum_{|n|\le N}c_ne_n||
$$
那么均方收敛就可以根据上面的式子证明了.同时我们可以得到 **Parseval's identity**
$$
\sum_{n=-\infin}^\infin|a_n|^2=||f||^2
$$
**Theorem 1.4(黎曼-勒贝格引理)**

若 $f$ 是周期上的可积函数,那么 $\hat f(n)\to0\;as\;|n|\to\infin$ 等价表述为:
$$
\int_0^{2\pi}f(\theta)\sin(N\theta)\,d\theta\to0\quad as\;N\to\infin\\
\int_0^{2\pi}f(\theta)\cos(N\theta)\,d\theta\to0\quad as\;N\to\infin
$$

### 2 傅立叶级数点态收敛

**2.1 局部性结论**

**Theorem 2.1**

*设 $f$ 是周期上的可积函数,在 $\theta_0$ 点可导,那么 $ S_N(f)(\theta_0)\to f(\theta_0)\quad as\;N\to\infin$*

这个结论在 $f$ 满足 **Lipschitz condition** 依旧成立:
$$
|f(\theta)-f(\theta_0)|\le M|\theta-\theta_0|
$$
也即 $\alpha=1 $ 时的 **Holder conditon** 

这个结果说明了傅立叶级数在某一点的收敛性时由函数在该点附近的性质决定的

**Theorem 2.2**

*设 $f,g$ 是定义在周期上的两个可积函数,对于某个特定的 $\theta_0$ 存在一个开区间 $I$ 包含 $\theta_0$ 使得:*
$$
f(\theta)=g(\theta)\qquad \text{for all }\theta\in I
$$
且随着 N 趋向无穷 $S_N(f)(\theta_0)-S_N(g)(\theta_0)\to0$ 

**2.2 有发散傅立叶级数的连续函数**

这一块有点难,最核心的内容就是"symmetry-breaking",通过这个方法来构造处有发散傅立叶级数的连续函数

**Lemma 2.3**

*设 Abel means $A_r=\sum_{n=1}^\infin r^nc_n$ ,随着 r 趋向 1 有界,若 $c_n=O(1/n)$,那么部分和 $S_N=\sum_{n=1}^N c_n$有界* 

### 3 Exercise

7.*证明下列三角级数*
$$
\sum_{n\ge2}\frac1{\log n}\sin nx
$$
对于每个 $x$ 都收敛,但是该级数不是一个黎曼可积函数的傅立叶级数

$\color{#F80}\lhd$
$$
首先,根据\;Dirichlet\;判别法可知,\sum_{n\ge2}\sin nx\;有界,\frac1{\log n}\;单调减少趋于0,故对于每一个\;x\;都收敛\\
再根据\;Parseval\;恒等式,假设存在一个黎曼可积函数\;f\;使得该三角级数为其傅立叶级数,那么有:\\
\frac1{2\pi}\int_{-\pi}^\pi|f(\theta)|^2\,d\theta=\sum_{n\ge 2}\frac1{(\log n)^2}\\
再根据 \;Cauthy's \;condensation\;test\;(根据\sum2^ka_{2^k}收敛性来判断原级数收敛性,在级数笔记中有涉及)\\
可以得到\;\sum_{n\ge 2}\frac1{(\log n)^2}\;发散\qquad因此不存在\;f
$$
$\color{#F80}\rhd$

8.
$$
\begin{align}
(a)\;设\;f\;是定义在[-\pi,\pi]上的函数:&f(\theta)=|\theta|.使用\;Parseval\;恒等式来计算下列两个级数的和:\\
&\sum_{n=0}^\infin\frac1{(2n+1)^4}\qquad\sum_{n=1}^\infin\frac1{n^4}\\
(b)\;考虑定义在[0,\pi]上时\;f(\theta)=\theta&(\pi-\theta),以\;2\pi\;为周期的奇函数.证明:\\
&\sum_{n=0}^\infin\frac1{(2n+1)^6}=\frac{\pi^6}{960}\qquad\sum_{n=1}^\infin\frac1{n^6}=\frac{\pi^6}{945}
\end{align}
$$
$\color{#F80}\lhd$
$$
(a)\quad f(\theta)=|\theta|,计算\;Fourier \;系数:\hat f(0)=\frac{\pi}2\quad\hat f(n)=\frac1{2\pi}\int_{-\pi}^{\pi}|\theta|\,e^{-in\theta}\,d\theta=\frac1{\pi}\int_0^\pi\theta\cos n\theta=\frac{(-1)^n-1}{\pi n^2}\\
根据 \;Parseval \;恒等式:\sum_{n=-\infty}^\infty|\hat f(n)|^2=\frac{\pi^2}4+\sum_{n\;odd}\frac{4}{\pi^2n^4}=\frac{\pi^2}4+\sum_{n=0}^\infty\frac{8}{\pi^2(2n+1)^4}=\frac1{2\pi}\int_{-\pi}^\pi\theta^2\,d\theta=\frac{\pi^2}3\\
因此\;\sum_{n=0}^\infty\frac1{(2n+1)^4}=\frac{\pi^4}{96}\quad又因为\;\sum_{n=1}^\infty\frac1{n^4}=\sum_{n=0}^\infty\frac1{(2n+1)^4}+\sum_{n=1}^\infty\frac1{(2n)^4}=\frac{\pi^4}{96}+\frac1{16}\sum_{n=1}^\infty\frac1{n^4}\\
因此\;\sum_{n=1}^\infty\frac1{n^4}=\frac{\pi^4}{90}\\
$$

$$
(b)\quad同\;(a)\;可以计算出\;f(\theta)=\theta(\pi-\theta)\;的傅立叶系数为:\;\frac{8}{\pi}\sum_{n\;odd\;\ge1}\frac{1}{n^3}\\
根据 \;Parseval \;恒等式:\;\frac{16}{\pi^2}\sum_{n=0}^\infty\frac2{(2n+1)^6}=\frac1{30}\pi^4\;故\;\sum_{n=0}^\infty\frac1{(2n+1)^6}=\frac{\pi^6}{960}\\
又因为\;\sum_{n=1}^\infty\frac1{n^6}=\sum_{n=0}^\infty\frac1{(2n+1)^6}+\sum_{n=1}^\infty\frac1{(2n)^6}=\frac{\pi^4}{960}+\frac1{64}\sum_{n=1}^\infty\frac1{n^6}\\
因此\;\sum_{n=1}^\infty\frac1{n^6}=\frac{\pi^6}{945}\\
$$

$\color{#F80}\rhd$

**Problem 4**

*我们会在这个问题中找到自然数倒数的偶数次方和的公式,这些和是由 Bernoulli （伯努利）数来表示的，与之相关的 Bernoulliu 多项式会在下一个问题中讨论*

*我们用以下公式来定义 **Bernoulli number**  $ B_n $  ：*
$$
\frac{z}{e^z-1}=\sum_{n=0}^\infty\frac{B_n}{n!}z^n
$$

$$
\begin{align}
(a)\;&证明\;B_0=1,\;B_1=-1/2,\;B_2=1/6,\;B_3=0,\;B_4=-1/30,\;B_5=0\\
(b)\;&证明\;对于一切\;n\ge1\;有:\\
&B_n=-\frac1{n+1}\sum_{k=0}^{n-1}
\begin{pmatrix}
n+1\\
k\\
\end{pmatrix}B_k\\
(c)\;&通过\quad\frac{z}{e^z-1}=1-\frac{z}2+\sum_{n=2}^\infty\frac{B_n}{n!}z^n\quad证明:\;当\;n \;为偶数且大于1时\;B_n=0,\;同时证明:\\
&z\cot z=1+\sum_{n=1}^\infty(-1)^n\frac{2^{2n}B_{2n}}{(2n)!}z^{2n}\\
(d)\;&zeta \;函数定义为:
\zeta(s)=\sum_{n=1}^\infty\frac1{n^s}\quad通过\;(c)\;中的结论和余切函数的表达式证明:\\
&x\cot x=1-2\sum_{m=1}^\infty\frac{\zeta(2m)}{\pi^{2m}}x^{2m}\\
(e)\;&证明:\;2\zeta(2m)=(-1)^{m+1}\frac{(2\pi)^{2m}}{(2m)!}B_{2m}
\end{align}
$$

$\color{#F80}\lhd$
$$
(a)\;将左式分母展开得:\frac{z}{z+\frac12z^2+...+\frac1{n!}z^n+...}\;根据长除法可以得到\;B_n
$$

$$
(b)\;1=\frac{z}{e^z-1}\frac{e^z-1}{z}=(\sum_{n=0}^\infty\frac{B_n}{n!}z^n)(\sum_{n=0}^\infty\frac1{(n+1)!}z^n)=\sum_{n=0}^\infty(\sum_{k=0}^n\frac{B_k}{k!}\frac1{(n-k+1)!})z^n\\
B_0=1,所以\;n\ge1时:\\\sum_{k=0}^n\frac{B_k}{k!}\frac1{(n-k+1)!}=0\Rightarrow\frac{B_n}{n!}=-\sum_{k=0}^{n-1}\frac{B_k}{k!}\frac1{(n-k+1)!}=-\frac1{(n+1)!}\sum_{k=0}^{n-1}\begin{pmatrix}
n+1\\
k\\
\end{pmatrix}B_k\\
因此\;B_n=-\frac1{n+1}\sum_{k=0}^{n-1}
\begin{pmatrix}
n+1\\
k\\
\end{pmatrix}B_k
$$

$$
(c)\quad\frac{z}{e^z-1}+\frac z2=z(\frac1{e^z-1}+\frac12)=\frac z2(\frac{e^z+1}{e^z-1})=\frac z2(\frac{e^{z/2}+e^{-z/2}}{e^{z/2}-e^{-z/2}})=\frac z2\coth\frac z2\\
因为该函数是偶函数，所以\;1+\sum_{n=2}^\infty\frac{B_n}{n!}z^n\;为偶函数,即\;B_{2n+1}=0\\
又因为\;\coth(iz)=\frac{e^{iz/2}+e^{-iz/2}}{e^{iz/2}-e^{-iz/2}}=\frac{2\cos z}{2i\sin z}\Rightarrow\boxed{ i\coth(iz)=\cot z}，因此有:\\
z\cot z=iz\coth(iz)=1+\sum_{n=1}^\infty\frac{B_{2n}}{(2n)!}(i2z)^{2n}=1+\sum_{n=1}^\infty(-1)^n\frac{2^{2n}B_{2n}}{(2n)!}z^{2n}
$$

$$
(d)\quad 由\;Problem\,3\,(b)\;我们可以得到:对于\;0<x<\pi,记\;r_n=\frac x{n\pi},\;有:\\
x\cot x=1-2\sum_{n=1}^\infty\frac{x^2}{n^2\pi^2-x^2}=1-2\sum_{n=1}^\infty\frac{r_n^2}{1-r_n^2}=1-2\sum_{n=1}^\infty\sum_{m=1}^\infty {r_n}^{2m}=1-2\sum_{n=1}^\infty\frac{1}{n^{2m}}\sum_{m=1}^\infty\frac{x^{2m}}{\pi^{2m}}\\=1-2\sum_{m=1}^\infty\frac{\zeta(2m)}{\pi^{2m}}x^{2m}
$$

$$
(e)\quad比较(c)\;(d)中的系数即可得到:\;\boxed{2\zeta(2m)=(-1)^{m+1}\frac{(2\pi)^{2m}}{(2m)!}B_{2m}}
$$

$\color{#F80}\rhd$

11.*Wiritinger Poincare 不等式把函数的范数和其导数的范数建立起了联系.*
$$
\begin{align}
(a)\;&如果\;f\;是以\;T\;为周期的一阶可导函数,并且\;\int_{0}^Tf(t)\,dt=0,证明:\int_{0}^T|f(t)|^2\,dt\le\frac{T^2}{4\pi^2}\int_{0}^T|f'(t)|^2\,dt\\
&不等号成立当且仅当\;f(t)=A\sin(2\pi t/T)+B\cos(2\pi t/T)\\
(b)\;&f\;如上题,g是以\;T\;为周期的一阶可导的函数,证明:|\int_{0}^T\overline{f(t)}g(t)\,dt|^2\le\frac{T^2}{4\pi^2}\int_0^T|f(t)|^2\,dt\int_0^T|g'(t)|^2\,dt\\
(c)\;&任意紧区间\;[a,b]\;和任意有连续导数的函数\;f\;且满足\;f(a)=f(b)=0,证明:\\
&\int_a^b|f(t)|^2\,dt\le\frac{(b-a)^2}{\pi^2}\int_a^b|f'(t)|^2\,dt\\
&证明其中的常数(b-a)^2/{\pi^2}\;不能进一步放缩
\end{align}
$$
12.*证明:*
$$
\int_0^\infty\frac{\sin x}{x}\,dx=\frac{\pi}2
$$
$\color{#F80}\lhd$
$$
我们知道\;Dirichlet\;kernel\;的性质:\int_{-\pi}^\pi\frac{\sin(N+\frac12)x}{\sin\frac12x}=2\pi\\
因为\;\frac1{\sin\frac12x}=\frac1{\sin\frac12x}-\frac x2+\frac x2,\;\lim_{x\to0}(\frac1{\sin\frac12x}-\frac{2}{x})=0,所以在\;0\;处为可去间断点\\
根据\;Riemann-Lebesgue\;引理:\lim_{N\to\infty}\int_{-\pi}^\pi(\frac1{\sin\frac12x}-\frac{2}{x})\sin(N+\frac12)x=0\\\Rightarrow\lim_{N\to\infty}\int_{-\pi}^\pi\frac{2}{x}\sin(N+\frac12)x=2\pi\Rightarrow\lim_{N\to\infty}\int_{0}^\pi\frac{1}{x}\sin(N+\frac12)x=\pi/2\;作变量变换即可
$$
$\color{#F80}\rhd$

## 傅立叶级数的应用

>傅立叶级数和展开可以很自然地运用在常规曲线和曲面理论中.事实上,这个理论是从分析学中处理任意函数的观点中衍生出来的.因此我把傅立叶级数运用到各种几何问题上,并且在这个方向上得到了一部分的成果——A.Hurwitz,1902

在前几章中我们从物理学中一些问题引出了傅立叶分析的一些基础事实结果，弦运动和热传播是两个经典例子.下面我们介绍傅立叶分析的观点怎么涉及其他的数学领域.考虑下面的三个问题：

Ⅰ 平面中所有周长为 $\mathscr l$ 的闭合曲线中哪种闭合曲线图形有最大的面积？

Ⅱ 给定一个无理数 $\gamma$ ,数列 $n\gamma$ 的分数部分的分布满足什么？

Ⅲ 是否存在一个处处不可导的连续函数？

第一个问题显然是几何问题，第二个问题是数论和动力系统的“遍历性（ergodicity）”问题，第三个问题是分析学问题.让我们惊讶的是这个三个在数学不同领域的问题可以用傅立叶级数十分简单的解决.

### 1.等周不等式(The isoperimetric inequality)

解决等周不等式的关键在于运用 **Parseval **恒等式.书中接下来定义了"曲线"

我们记 $\Gamma$ 为该封闭曲线, $\mathscr l$ 为封闭曲线的周长,$\mathscr A$ 为面积.事实上,任意曲线的弧长都可以参数化(Exercise 1)

根据格林公式,我们可以得到:
$$
\mathscr A=\frac12|\int_\Gamma x\,dy-y\,dx|
$$
**Theorem 1.1 **

*设 $\Gamma$ 是 $\R^2$ 上的简单封闭曲线,其长度为 $\mathscr l$ ,$\mathscr A$ 是该曲线围成的面积,那么*
$$
\mathscr A\le\frac{\mathscr l^2}{4\pi}
$$
不等号当且仅当在曲线为圆的情况下成立,证明(p104)

主要是先利用了有一阶连续导数的函数的傅立叶系数与原来的函数之间的关系(即乘以 $in$ ),再利用帕塞瓦恒等式进一步化简,最后一个基本不等式完成证明.

最后又留下了几个问题(Hurwitz 提出),由于我们所设的已知条件都是十分"好"的,自然就会想知道曲线在没有这么好的条件下有什么其他性质.(可以参考 **Jordan Curve Theorem**,不过需要有代数拓扑的知识储备)

### 2.魏尔均匀分布定理

要理解这个定理要先讨论**同余(congruences)**.

一组在 $[0,1]$ 的数列 $\xi_1,\xi_2,...,\xi_n,...$若满足以下条件,则称是均匀分布的

对于任意子区间 $(a,b)\sub[0,1)$,成立:
$$
\lim_{N\to\infty}\frac{card\left\{1\le n\le N:\xi_n\in(a,b)\right\}}{N}=b-a
$$
其中 card 表示有限集合中元素的个数

**EXAMPLE 1.**

数列
$$
0,\frac12,0,\frac13,\frac23,0\frac14,\frac24,\frac34,0,\frac15,\frac25,...
$$
是均匀分布的,因为他十分平均地经过了 $[0,1)$

**EXAMPLE 2.**

设 $\left\{r_n\right\}_{n=1}^\infty$ 是 $[0,1)$ 中任意一分式有理数,数列定义如下:
$$
\xi_n=\begin{cases}
r_{n/2}&n为偶数\\
0&n为奇数\\
\end{cases}
$$
不是均匀分布的,因为"半数"都在 0 点,但这个数列显然是稠密的.

**Theorem 2.1**

*若 $\gamma$ 是无理数,那么分数部分组成的数列 $\left \langle \gamma \right \rangle$,$\left \langle 2\gamma \right \rangle$,$\left \langle 3\gamma \right \rangle$ 在 $ [0,1)$ 是均匀分布的*

**Lemma 2.2**

*若 $f $ 是以 $1$ 为周期的连续函数,$ \gamma$ 是一个无理数,那么*
$$
\frac1N\sum_{n=1}^Nf(n\gamma)\to\int_0^1f(x)\,dx\quad as\;N\to\infty
$$
证明(p108-p109)

**Corollary 2.3**

*引理 2.2 对于一切在 $[0,1]$ 黎曼可积的以  $1$ 为周期的函数都成立*

证明(p110-111)

**Weyl's criterion**

一个在 $[0,1)$ 的实数数组 $\xi_1,\xi_2,...$ 是均匀分布的充要条件是对于一切整数 $k\neq0$ 有:
$$
\frac1N\sum_{n=1}^Ne^{2\pi ik\xi_n}\to0\quad as\;N\to\infty
$$

### 3.处处不可导的连续函数

在1861年,Riemann 猜测函数
$$
R(x)=\sum_{n=1}^\infty\frac{\sin(n^2x)}{n^2}
$$
是处处不可导的连续函数.黎曼是因为该函数与西塔函数(第五章)之间紧密的联系从而考虑这个函数的.随后 Weierstrass 找到了第一个处处不可导的连续函数.

*$0<b<1,a\;是整数且>1,在1872年他证明了若 \;ab>1+3\pi/2$,那么函数*
$$
W(x)=\sum_{n=1}^\infty b^n\cos(a^nx)
$$
是处处不可导的连续函数.

1916年 Hardy 证明了 $R$ 在一切无理数乘上 $\pi$ 点和某些 $\pi$ 的有理数倍上不可导.在1969年 Gerver 完整地解决了这个问题,首先证明了 $R$ 在一切特定有理数(分子和分母都是奇数)乘以 $\pi$ 处可导 ,接着证明了 $R$ 在其余情况下都不可导.

**Theorem 3.1**

*若 $0<\alpha<1$, 那么函数*
$$
f_{\alpha}(x)=f(x)=\sum_{n=0}^\infty2^{-n\alpha}e^{i2^nx}
$$
是处处不可导的连续函数.

连续性很显然,因为该函数项级数是一致收敛的

**Lemma 3.2**

*$g$ 是在 $x_0$ 处可导的任意连续函数,那么切萨罗方法满足 $\sigma_N(g)'(x_0)=O(\log N)$ ,因此*
$$
\Delta_N(g)'(x_0)=O(\log N)
$$
**Lemma 3.3**

*若 $2N=2^n$ ,那么*
$$
\Delta_{2N}(f)-\Delta_N(f)=2^{-n\alpha }e^{i2^nx}
$$
