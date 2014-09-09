## Assignment #2  Mike Lennon

#####Question 1 #####
#part a
(queue <- c("James","Mary","Steve","Alex","Patricia"))
#part b
queue[length(queue)+1]<-"Harold"
queue

#part c
queue<- queue[2:6]
queue

#part d
queue1<-queue[1:1]
queue1[length(queue1)+1]<-"Pamela"
queue2<-queue[2:5]
queue<-c(queue1,queue2)
#append(queue,"Pamela", after=1)
queue


#part e
queue<-queue[1:5]
queue

# part f
(queue <- queue[ queue != 'Alex'])

#part g
match('Patricia',queue)

#part h
length(queue)




#####Question 2 #####
quadratic.eqn <- function(a,b,c){
  discriminant <- b^2-4*a*c
  if(discriminant < 0)
    print('No Solutions')
     #discriminant
  if(discriminant == 0){
    print("One solution")
    print(-b/(2*a))
     #sprintf("%.1f",-b/4*a*c)
  }
  if(discriminant > 0){
    print("Two solutions")
    print((-b + sqrt(discriminant))/(2*a))
    print("and")
    print((-b - sqrt(discriminant))/(2*a))
  }
    #discriminant
  
   
}

quadratic.eqn(1,2,3)
quadratic.eqn(2,4,2)
quadratic.eqn(1,4,2)


#####Question 3 #####
not.divisible3_7_11 <- function(){
  numbers<- c(1)
  for(i in 2:1000){
    if(i%%3 !=0 && i%%7 !=0 && i%%11 != 0)
      numbers[length(numbers) + 1] = i
  }
  
  #print(numbers)
  length(numbers)
  
}

not.divisible3_7_11()




#####Question 4 #####
is.pythagorean<- function(a,b,c){
  
  sides <- c(a,b,c)
  sides <- sort(sides,decreasing= FALSE)
  triplet = FALSE
  if(sides[3]^2 == sides[2]^2 + sides[1]^2)
    triplet = TRUE
  triplet
}

is.pythagorean(6,4,2)
is.pythagorean(3,4,5)
