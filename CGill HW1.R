## a)
x=20;
y=c(10,20,30,10,100);
z=y*x;
print(z);

## b)
c=seq(-3,3,by=0.2)
print(c);

## c)
t <- c("mon","tue","wed","thu","fri","sat")
m <- c(90,80,50,20,5,20)
study1 <- as.data.frame(cbind(t, m))
study <- matrix(cbind(t,m),nrow=6,ncol=2)
print(study);
print(study1);

## d)
demo <- data.frame(          
  AGE = c (21, 35, 829, 2, 35, NA , 05), 
  SEX = c("m", "f", 'm', 'e', 'm', 'm', 'f'),
  HEIGHT = c(181, 173, 171, 166, 175, 180, 190), 
  WEIGHT = c(69, 58, 75, 60, 120, 100, 200)
)
print(demo);

## i.
cat("Minimum age - ",min(demo['AGE']))

cat("Maximum age - ",max(demo['AGE']))

## ii.
for (j in 2:dim(demo)[1]){  
  if (!is.na(demo$AGE[j])){
    if (demo$AGE[j]<20 | demo$AGE[j]>80){
      print(demo$AGE[j])
    }
  }
}

## iii.
sum(is.na(demo$AGE))

##  iv.
h=demo$HEIGHT*.01
w=demo$WEIGHT
BMI=w/(h^2)
demo['BMI'] = BMI
print(demo);

## v.
CATEGORY=ifelse(demo$BMI<25, "NORMAL", "OW/OBEASE")
demo['CATEGORY'] = CATEGORY
print(demo)
