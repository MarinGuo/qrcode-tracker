# 代理商追踪系统 - 部署指南

## 📋 部署步骤

### 第一步：创建 GitHub 仓库

1. 打开 https://github.com/new
2. 填写信息：
   - Repository name: `qrcode-tracker`
   - Description: `代理商追踪系统`
   - 选择 Public ✅
   - ✅ 勾选 "Add a README file"
3. 点击 "Create repository"

### 第二步：上传代码

1. 进入仓库页面
2. 点击 **Add file** → **Upload files**
3. 拖拽或选择以下文件：
   - `index.html`
   - `landing.html`
4. 点击 "Commit changes"

### 第三步：启用 GitHub Pages

1. 点击仓库的 **Settings**
2. 左侧菜单点击 **Pages**
3. 设置：
   - Source: Deploy from a branch
   - Branch: main / (root)
4. 点击 **Save**

### 第四步：等待部署

等待 2-5 分钟，GitHub 会自动部署。

### 第五步：访问网站

打开浏览器访问：
**https://MartinGuo.github.io/qrcode-tracker**

---

## 🔧 本地测试

如果需要在本地测试：

```bash
cd qrcode-tracker
python3 -m http.server 8080
# 然后访问 http://localhost:8080
```

---

## 📱 使用说明

### 1. 上传微信二维码

在管理后台上传你的微信二维码图片。

### 2. 添加代理商

输入代理商名称，生成专属 ID。

### 3. 下载二维码

为每个代理商下载专属追踪二维码。

### 4. 分发给代理商

代理商分享二维码给客户。

### 5. 查看统计

在后台查看哪些客户通过哪个代理商添加。

---

## ❓ 常见问题

### Q: 网站显示 404？
A: 等待 2-5 分钟让 GitHub Pages 完成部署。

### Q: 上传二维码失败？
A: 确保 Firebase Firestore 数据库已创建并处于测试模式。

### Q: 如何修改微信二维码？
A: 在管理后台上传新图片，会自动覆盖。

---

## 🛠️ 技术栈

- **前端**: HTML5, CSS3, JavaScript (ES6+)
- **数据库**: Firebase Firestore
- **部署**: GitHub Pages
- **二维码**: qrcode-generator

---

## 📞 支持

如有问题，请检查：
1. GitHub Pages 是否启用
2. Firestore 数据库是否在测试模式
3. 文件是否在仓库根目录
