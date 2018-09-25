# Quick intro to R ------------------------------------------



# Any line that starts with a # is ignored by R, so you can write comments

# Press Ctrl+Enter (or ⌘+Enter) to run a command
4 + 2
# Do you see the output?

# We can create variables. 
name <- "Isaac"
age <- 30
alive <- TRUE
# If you run these commands they are saved. You can see them in the "Environment" window

name # Should print the variable in the console

age * 12 # Age in months

# Something complicated:
sqrt(log(age*12 - 3 ) * exp((age-pi)^((6/pi)) ) 
     


# We can also make vectors
# We use c() to join values together into a vector

c(30,26,24,32,29)

# Try to give this variable a name like "ages"
# You need to make the little arrow <-
# In RStudio there is a shortcut (Alt/Option - )
 


# If make something like this:
# Section 2: Plots -----------------------------------
# RStudio with make this a new section of your script.
# You can see the different sections at the bottom of the source window. 
# Try to click below where it says Section 2: Plots

#Now let's make some plots
plot(age)

plot(1:10)

plot(x=rnorm(100, 168,5), y=rpois(100,35), xlab="Height", ylab="Age")

# Have a look at the buttons in the plot window. What do they do?
# Arrows:
# Zoom:
# Export: 
# Broom:

# We can make plots in a reproducible way!
png("Figure_01_age.png", height = 400, width=600)
plot(x=rnorm(100, 168,5), y=rpois(100,35), xlab="Height", ylab="Age")
dev.off()

# Now have a look at the "Files" tab in the same window as the Plots

# Let's find out more about the png function...
# Click on the function name or highlight it and press F1.
# Do you see the Help window?

# Copy the lines from above and try make a plot that is 8cm wide and 6cm tall and has resolution 600dpi.




# Section 3: Data Frames --------------------------------

# In our kind of research we mostly deal with data frames
# They are kinds of tables of data, where the columns are the different variables

study1 <- data.frame(ID = 1:10,
                     Age_m = c(16,14,12,13,16,15,14,12,17,18),
                     Sex = factor(c('M','M','M','M','M','F','F','F','F','F')),
                     F1 = c(2.90451157510296, 4.39551158731267, 2.90585895670013, 3.88135871743237, 
                            2.73579334160211, 3.56285378902834, 3.79429714749732, 4.85462912083277, 
                            2.76966759679992, 2.75677750425837),
                     F2 = c(10, 3, 9, 2, 13, 5, 11, 5, 14, 1),
                     Outcome = c(12.7940470865968, 14.1159910879202, 14.227563728151, 11.1564991264938, 
                                 13.5677508801423, 14.3842273714795, 17.7449851200857, 18.1476418623553, 
                                 11.2448176832001, 9.55856683093777)
)


# We can access data frames in different ways.
# With the $ operator
study1$Age_m

# With square brackets [row, column]

study1[1,] # row 1
study1[,1] # column 1
study1[c(1,2,3), c(2,3)] # rows 1-3 of columns 2 and 3
study1[-1, -4] # everything except row 1 and column 4
study1[,"F1"] # same as study1$F1



# Section 4: Functions ---------------------

# To start to do things with R we need functions
# We've already used a few of them (and some special ones)

# To use a function we write it's name and then round brackets()
mean(study1$Age_m)
max(study1$F2)

# The things that goes inside the brackets are arguments
# Some functions need one, some need more, some are flexible
is.numeric('a')
is.numeric('a',3)

plot(study1$Age_m)
plot(study1$Age_m, study1$F2)
plot(study1$F2, study1$Age_m) # Do you see the difference between these two commands?

# The function definition says what arguments a function has.
# It also defines their names. If you don't give the names, R takes them in order.
# If we give the names, we can write them in any order
plot(x=study1$Age_m, y=study1$F2)
plot(y=study1$F2, x=study1$Age_m)


# Section 5: Generic functions ---------------------------------------

# R has many functions that work for all different types of objects
# These are called 'generic'.

# We have already seen  plot()
# Others include 
print()
summary()
c()
length()
[ ]
$







