#p.98
#분석 프로세스

#데이터 전처리르 위한 도구 dplyr
#데이터 전처리를 위한 도구 data.table

#dplyr : 10 GB이내
#data.table : 50GB이상

#데이터 미리보기
glimpse(iris)

iris %>%   filter(Species == "virginica") %>% select(Sepal.Length, Sepal.Width) %>% filter(Sepal.Length>5.0) %>% mutate(total = Sepal.Length+Sepal.Width) ->data2

#p121집단 통계량
mpg1 %>% summarise(avg=mean(cty))
mpg1 %>% summarise(avg=mean(cty), #평균
                   total= sum(cty), #총합
                   med=median(cty)) #중간값

#이름 미지정시 
mpg1 %>% summarise(mean(cty), #평균
              sum(cty), #총합
              median(cty)) #중간값

#집단으로 분류해서 집단별 통계구하기
#(1)1개 변수를 집단 분류해서 통계구하기: group_by()
mpg1 %>% group_by(trans)                                          %>% summarise(mean(cty), #평균
                   sum(cty), #총합
                   median(cty)) #중간값
