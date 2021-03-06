# Create dual-axis plot from column data in R

# Mise en place
rm(list = ls())
graphics.off()

#set working directory
setwd("E:/plotting-examples/dual_axis")

#read data
M=as.matrix(read.table("../example_data/column_data.txt",sep=" ",header=FALSE))

#plotting margins.
par(mar = c(5,5,2,5), font = 1.5, xaxs = "i")

plot(M[ ,1],M[ ,2],type = 'l', xlim=c(0,10),
     ylab = 'Y1', xlab = 'X',main='Dual Axis Plot of Column Data',
     lty=c(1),lwd=c(3),col="black", ylim=c(0,1),yaxs="i")
par(new=TRUE, xaxs="i")
plot(M[ ,1], 2*M[ ,3],,type="l",col="black",xaxt="n",yaxt="n",xlab="",ylab="",
     lty=c(2),lwd=c(3), xlim=c(0,10),ylim=c(0,2),yaxs="i")
axis(4, at=seq(0,2,by=0.4))
mtext("Y2",side=4,line=3)

abline(v=seq(0,10,by=2),h=seq(0,2,by=0.4),col = "black", lty = "dotted",
     lwd = c(0.5))

#add a legend
legend(6.5,0.6, c("Series 1","Series 2"), lty=c(1,2),
       lwd=c(3,3),col=c("black","black"), bg="white") 



