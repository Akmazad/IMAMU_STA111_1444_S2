# mean
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
mean(x) 
# median
median(x)

# calculate mode, no in-built R function for it
# credit: https://www.statology.org/mode-in-r/
# Create the function.
find_mode <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
  temp <- u[tab == max(tab)]
  # if all the unique elements have the same frequency, the no mode
  if(length(temp) == length(u)) 
    return(NULL)
  else
    return(temp)
}
# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
find_mode(v)
v <- c(15,18,18,18,20,22,24,24,24,26,26)
find_mode(v)

# variance
v <- c(16,19,15,15,14)
var(v)
sd(v)

# coefficient of variantion
sd(v)/mean(v) * 100

#### Percentile
A <- c(2,3,5,6,8,10,12,15,18,20)
 # calculate 25 percentiles
 quantile(A,0.25)
 # calculate 50 percentiles, i.e., median
 quantile(A,0.5)
A <- c(2,3,5,6,8,10,12,15,18,20,25)
 quantile(A,0.8)

#### IQR 
 B <- c(5,6,12,13,15,18,22,50)
IQR(B)
# check if IQR = Q3-Q1
quantile(B, 0.75) - quantile(B, 0.25)

# simple linear regression
## house Price VS house size relationship exploitation - 
dat <- data.frame(
  housePrice = c(245,312,279,308,199,219,405,324,319,255),
  sqFeet = c(1400,1600,1700,1875,1100,1550,2350,2450,1425,1700)
)
fit = lm(housePrice ~ sqFeet, data = dat)
summary(fit)
