# Typst 开发容器环境

本仓库提供了一个用于在 Visual Studio Code 中处理 Typst 文档的开发容器配置。它包含了所有必要的工具和扩展，以提供高效的 Typst 开发体验。

[English](README.md) | 简体中文

## 功能特性

- 安装最新版本的 Typst 完整支持
- VS Code 扩展预配置：
  - Typst LSP 语言支持
  - Typst Preview 实时预览
  - Typst Formatter 代码格式化
- 预装常用字体（Noto Sans 和 Noto Sans CJK）
- 配置 Zsh 和 Oh My Zsh 提供更好的终端体验

## 前置要求

- Visual Studio Code
- Docker
- VS Code Remote Development 扩展包

## 使用方法

1. 克隆此仓库
2. 在 VS Code 中打开仓库
3. 当提示时，点击"在容器中重新打开"
   - 或点击左下角的绿色按钮并选择"在容器中重新打开"

## 创建文档

1. 创建新的 `.typ` 文件
2. 开始编写 Typst 文档
3. 使用 Typst Preview 扩展查看实时更新
4. 保存时自动格式化文档（默认启用）

## 包含的工具

- `typst` - Typst 编译器
- 常用开发工具（git, curl, wget）
- 基础字体（Noto Sans 系列）

## 自定义设置

你可以通过以下方式自定义环境：
- 修改 Dockerfile 添加更多工具
- 在 devcontainer.json 中添加更多 VS Code 扩展
- 在 devcontainer.json 中配置不同的 VS Code 设置
