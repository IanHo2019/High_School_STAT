* 这个 do file 模拟了抛掷一枚均匀硬币 n 次，并进行概率的估计。
* 作者：Ian He
* 日期：2024年2月7日
* Stata版本：18

clear all

set obs 1000	// 输入投掷硬币的次数
local p_success = 0.5
gen byte success = runiform() < `p_success'
qui sum success
display r(mean)