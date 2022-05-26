# Лабораторна робота №1
## 1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.

```
a <- "a"
class(a)
[1] "character"

b <- 12
class(b)
[1] "numeric"

c <- 7:23
class(c)
[1] "integer"

d <- 3+2i
class(d)
[1] "complex"

e <- TRUE
class(e)
[1] "logical"
```

## 2. Створити вектор який містить послідовність з 5 до 75;
```
a1 <- c(5:75)
a1
[1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
[20] 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42
[39] 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61
[58] 62 63 64 65 66 67 68 69 70 71 72 73 74 75
```

## Створити вектор який містить числа 3.14, 2.71, 0, 13;
```
a2 <- c(3.14,2.71,0,13)
a2
[1]  3.14  2.71  0.00 13.00
```
## Створити вектор який містить 100 значень TRUE.
```
a3 <- rep(TRUE,100)
a3
 [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [12] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [23] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [34] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [45] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [56] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [67] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [78] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [89] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
[100] TRUE
```
## 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind.
```
b1 <- c(0.5, 3.9, 0, 2) 
b2 <- c(1.3, 131, 2.2, 7)
b3 <- c(3.5, 2.8, 4.6, 5.1)
c1 <- c(b1,b2,b3,b4)

cc1 <- matrix(c1, ncol = 3,nrow = 4,)
bb1 <- cbind(b1,b2,b3,b4)
cc1
bb1

     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1

      b1    b2  b3  b4
[1,] 0.5   1.3 3.5 2.0
[2,] 3.9 131.0 2.8 7.0
[3,] 0.0   2.2 4.6 5.1
[4,] 2.0   7.0 5.1 2.0

```
## 4. Створити довільний список (list), в який включити всі базові типи.
```
d1 <- list("a",12,7:10,3+2i,TRUE)
d1

[[1]]
[1] "a"

[[2]]
[1] 12

[[3]]
[1]  7  8  9 10

[[4]]
[1] 3+2i

[[5]]
[1] TRUE
```
## 5. Створити фактор з трьома рівнями «baby», «child», «adult».
```
e1 <- factor(levels=c("baby","child","adult"))
e1

factor(0)
Levels: baby child adult
```
## 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11 та найти кількість значень NA.
```
f1 <- c( 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
pmatch(NA, f1)
[1] 5
```
```
sum(is.NA(f1))
[1] 3
```
## 7. Створити довільний data frame та вивести в консоль.
```
g1 <- data.frame (code = 1:5, name = c("pizza", "pasta", "burger", "milkshake", "soda"), amount = c(9,3,4,5,2))
g1

  code      name amount
1    1     pizza      9
2    2     pasta      3
3    3    burger      4
4    4 milkshake      5
5    5      soda      2
```
## 8. Змінити імена стовпців цього data frame.
```
colnames(g1) <- c("id", "item", "number of")
g1

  id      item number of
1  1     pizza         9
2  2     pasta         3
3  3    burger         4
4  4 milkshake         5
5  5      soda         2
```
