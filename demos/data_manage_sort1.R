# 先用 sample.int 產生 10 個 1–100 的整數
s1 <- sample.int(100, 10)
s1
# 使用 order 排序
order(s1)
s1[order(s1)]
# 等同於
sort(s1)

# 降冪排序
sort(s1, decreasing = TRUE)

# 先載入 mtcars 資料集
attach(mtcars)
mtcars[order(hp, decreasing = TRUE),]
# 另外一個快速降冪排序法可以在變數前面加上減字號
mtcars[order(-hp),]

mtcars[order(-hp, cyl),]

mtcars.dt <- as.data.table(mtcars)
mtcars.dt[order(-mpg),]

detach(mtcars)
