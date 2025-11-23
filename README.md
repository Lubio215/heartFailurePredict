# heartFailurePredict：基于随机森林的心脏病诊断预测工具

这是一个用于心脏病诊断预测的R包，基于随机森林算法构建模型，可通过输入患者临床特征快速预测患病风险。


## 安装方法
通过GitHub安装最新版本：
```r

# 安装依赖包
install.packages("remotes")
# 安装本包
remotes::install_github("Lubio215/heartFailurePredict")

# 加载包
library(heartFailurePredict)

# 加载内置数据集（包含患者特征和标签）
data(heart_data)

# 提取特征列（去掉最后一列目标变量HeartDisease）
input_features <- heart_data[, -ncol(heart_data)]

# 调用预测函数，得到分类结果
prediction <- predict_heart_disease(input_features)

# 查看前10条预测结果
head(prediction, 10)

# 统计结果分布（无心脏病/有心脏病的数量）
table(prediction)

[1] NoDisease NoDisease NoDisease Disease  NoDisease NoDisease NoDisease NoDisease Disease  NoDisease
Levels: NoDisease Disease

prediction
NoDisease    Disease 
      412        406 
      


### 操作步骤：
1. 把上述内容全选复制，覆盖你当前`README.md`里的内容；
2. 保存文件后，打开终端执行：
   ```bash
   git add README.md
   git commit -m "补充使用示例：加载包+调用函数+查看结果"
   git push origin master
