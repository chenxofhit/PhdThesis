# 基因调控网络构建方法研究

My 2020 Phd Thesis

## 论文编译

在论文主目录下面直接执行：make 命令；

make clean：清除辅助文件；

make wordcount：论文字数统计；

## 写作心得

注意，这个部分仅供参考，仅代表个人的意见。

博士论文是一篇文章，是一篇完整的文章，不是简单的把小论文拼凑起来。

### 摘要
特别注意中文摘要，中文摘要是盲审时候专家写评语时候的一个样板，所以要认真写并且写好！

一个样式模板：

> 针对  situation ，本文提出了 method 方法。
> 该方法 咋了咋了 method-detail 。
> 在 dataset 数据集上的实验结果表明，method 在  metric 上优于 benchmark-methods。

在摘要里面尽量不要用“我们”，而最好使用“本文”。

### 绪论

尽量把博士论文的所有贡献点的研究现状和发展动态都汇集在这一章里面。在后面自己的章节里面尽量减少对当前发展动态的回顾。

### 章的组织结构

[引言 + 相关工作 + 方法 + 实验结果 + 讨论和总结]

其中 实验结果 = [数据集] + [评价指标] + [实验结果分析]

实验结果分析里面，一般英文论文的写法是分多个小点，一个小点是一个story或者一个point，
但是中文博士论文里面，就一床被子铺下来吧，有多少个 story 就往下铺，最后在讨论和总结部分总结下就行。

### 总结与展望

总结部分尽量不要谈自己的方法的缺陷，稍微拔高一点，实实虚虚，不能给审稿人把柄。

### 致谢

那么厚的论文都能写完，到这里了所以要有自己的真情实感，如果说论文内容部分是学品，致谢部分则是人品。不要吝惜对别人的夸奖。

## 其它问题

模板问题请详细查看 README_local.md, 主体文件 copy from https://github.com/lsyer/CSU-Thesis-LaTeX-Template (last commit:2758256)，针对我自己的情况有改动。如果有问题或者需要交流的，欢迎提 issues 或者给我发送邮件: chenxofhit[at]gmail[dot]com.