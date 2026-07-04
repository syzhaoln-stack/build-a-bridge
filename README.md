# 请把手弄脏

> AI时代的学与玩，或一座桥的哲学

这是一本正在公开修订的教学散文，不是 AI 工具清单，也不是按桥型讲知识的桥梁工程教材。它以桥梁为引子，持续思考 AI、教学与真实应用怎样在同一个课堂现场相遇。

## 写给谁

主要写给高校工科教师、研究生助教、专业负责人和教师发展工作者。读者不需要懂桥梁；桥梁工程只是本书持续使用的案例现场。

## 读完能做什么

读者将能重做一个 45--90 分钟教学单元，使学生留下可见作品、修改记录、专业判断和 AI 使用证据，而不只交一个最终答案。

## 全书主线

正文采用五类桥、十五章的结构。桥型不是知识分类，而是五种思考姿态：

1. **梁桥**：当答案越来越便宜，人为什么还要学？
2. **拱桥**：压力如何改变课堂；
3. **斜拉桥**：反馈怎样把行动与理解接起来；
4. **悬索桥**：判断、责任与人的锚碇；
5. **组合桥**：把 AI、教学方法与真实应用组合起来。

## 目前状态

- 已恢复五部分十五章，正用原始录音、项目文档和作者博文逐章扩写与核验；
- 已删除一段无法由录音核实的合成学生故事；
- 已建立[编辑方案](editorial/BOOK_PLAN.md)、[材料地图](editorial/SOURCE_MAP.md)、[事实核查台账](editorial/FACT_CHECK.md)和[术语表](editorial/TERMINOLOGY.md)；
- 六个附录已从空占位改为可用模板；
- 阅读交付以 GitHub Pages 为主，支持电脑侧边目录与手机折叠菜单；LaTeX 暂作次要输出。

不要把当前版本引用为已经完成的研究结论。书中的课堂观察用于提出设计问题，外部研究用于说明已有证据，两者会明确区分。

## 在线阅读与体验

[在线阅读本书](https://syzhaoln-stack.github.io/build-a-bridge/)（合并到 `master` 并启用 GitHub Pages 后生效）

[SpanCraft 桥造计划](https://syzhaoln-stack.github.io/spancraft-bridge-game/)是相关教学原型。它展示一种设计方向，不代表已经完成学习效果验证。

## 生成网页

需要 Pandoc：

```powershell
.\build-web.ps1
```

该脚本从十五个 LaTeX 章节生成 `docs/chapters/*.html`，网页与正文共用同一来源。

## 编译 PDF（可选）

需要 XeLaTeX、biber 和 makeindex：

```bash
./build.sh
```

Windows PowerShell 可直接运行：

```powershell
latexmk -xelatex -interaction=nonstopmode -file-line-error main.tex
```

## 材料与隐私

本书基于 2025--2026 年课堂、汇报与教师分享记录，并参考本地教学项目。公开仓库不包含原始录音和可识别学生身份的信息。课堂原声在正文中按“日期 + 时间戳”标注；需要公开学生作品时，将另行取得授权。

## 作者与许可

作者：ColdCat（大连交通大学桥梁工程教师）

文字采用 [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)；代码采用 MIT 许可。
