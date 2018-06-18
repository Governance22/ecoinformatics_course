
# 把 mtcars 加上一個新欄位，
# 並把內容填 'a'
mtcars_addnc <- cbind(mtcars, 'a')
head(mtcars_addnc)
rbind(mtcars_addnc, 0)

# 把 mtcars 拆成兩個子資料集(subset)
mtcars1 <- mtcars[, c('mpg','cyl','disp')]
head(mtcars1)
mtcars2 <- mtcars[, c('hp','drat','wt')]
head(mtcars2)
# 使用 cbind 把 mtcars1 和 mtcars2 合在一起
mtcars_cbind <- cbind(mtcars1, mtcars2)
head(mtcars_cbind)

# merge
# 先建立虛擬的 data.frame
x <- c(1,3,5,7)
y <- c('a','b','a','c')
z <- rnorm(4)
a <- sample(4)
b <- c('F','F','T','T')
df1 <- as.data.frame(cbind(x,y,z))
df2 <- as.data.frame(cbind(x,a,b))

df1
df2

merge(df1, df2)

## 
# 把第四列數值拿掉
df1 <- df1[-4,]
# 如果 df1 或 df2 其中有數值沒有對應到
# merge 預設會用 inner join (只有交集)
merge(df1, df2)

# left join
merge(df1, df2, all.x = TRUE)
# right join
merge(df1, df2, all.y = TRUE)
