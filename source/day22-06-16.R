#패키지 설치
install.packages("ggplot2") # (지정 후 ctrl + Enter)
library(ggplot2) #ggplot2패키지 내 함수들을 쓰겠다.

# 통계
# 데이터
# 내장 데이터
# iris
str(iris)
help(str) #도움말
?str #도움말

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))+ geom_count()

# geom_point()#그래프 종류

# load package and data
library(ggplot2)
data(mpg, package="ggplot2")
# mpg <- read.csv("http://goo.gl/uEeRGu")

mpg_select <- mpg[mpg$manufacturer %in% c("audi", "ford", "honda", "hyundai"), ]

# Scatterplot
theme_set(theme_bw())  # pre-set the bw theme.
g <- ggplot(mpg_select, aes(displ, cty)) + 
  labs(subtitle="mpg: Displacement vs City Mileage",
       title="Bubble chart")

g + geom_jitter(aes(col=manufacturer, size=hwy)) + 
  geom_smooth(aes(col=manufacturer), method="lm", se=F)