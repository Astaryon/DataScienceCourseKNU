# Лабораторна робота №3
## В лабораторній роботі необхідно написати наступні функції на мові R та вивести результат роботи цих функцій на довільних даних:
### Функція add2(x, y), яка повертає суму двох чисел.
```
add2 <- function(x,y)
  {
    x+y 
  }
add2(55, 555)

[1] 610
```
### Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10
```
above <- function(a, n = 10)
{
  b = a[a > n]
  return(b)
}
above(arr <- c(1,2,11,12,13,5))

[1] 11 12 13

above(arr <- c(1,2,11,12,13,5),3)

[1] 11 12 13  5
```
### Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression.
```

 myifelse <- function(x, exp, n)
 {
   if (exp == ">"){
     b = x[x > n]
   } else
     if (exp == "="){
       b = x[x == n]
     } else
       if (exp == "<"){
         b = x[x < n]
       } else
         if (exp == ">="){
           b = x[x >= n]
         } else
           if (exp == "<="){
             b = x[x <= n]
           } else {
             b=x
              }
   return(b)
 }
samplearr <- c(1,2,3,4,5,10,12,13,14,15)
 
myifelse (samplearr, ">", 10)
[1] 12 13 14 15
myifelse (samplearr, "=", 10)
[1] 10
myifelse (samplearr, "<", 10)
[1] 1 2 3 4 5
myifelse (samplearr, ">=", 10)
[1] 10 12 13 14 15
myifelse (samplearr, "<=", 10)
[1]  1  2  3  4  5 10
```
### Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
```
columnmean <- function(x, removeNA=TRUE)
{
  apply(x, 2, mean, na.rm = removeNA)
}
samplearray <- matrix(c(4, NA, 5, 7, 9, NA, NA, 95, 54, 33, 21, NA, 12, 22, 2, 42, 4, 0, 9, NA), nrow = 4, ncol = 5)

columnmean(samplearray, T)
[1]  5.333333 52.000000 36.000000 19.500000  4.333333
columnmean(samplearray, F)
[1]   NA   NA   NA 19.5   NA
```
