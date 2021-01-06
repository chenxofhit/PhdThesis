library(latex2exp)

x =c(1:5)
y1_data=c(0.4,0.5,0.6,0.9,0.9)
y2_data=c(0.6,0.9,0.9,0.9,0.9)

y1 <- data.frame("Steps" = x, "CSF" = y1_data)
y2 <- data.frame("Steps" = x, "CSF" = y2_data)

breaks = x 

plot(breaks, y1$CSF, type ='s', col="red",        # plot the data 
    main="Area based scoring illustration",  # main title 
    xlim = c(1,5),
    ylim = c(0,1),
    xlab = "ARNI Steps", ylab = "Cumulative selection frequency", 
    lty = 1, lwd = 1,
    yaxs="i",xaxs="i"
)

axis(side=2,at=seq(0,1,0.1),tck=0.02) #set the y axis 

axis(side=1,at=breaks,tck=0.02) #set the x axis 

lines(breaks, y2$CSF,type ='s',col = "blue")# join the points

text(1.5, 0.45, TeX("$\\phi_{ip1}"),col = 'red')
text(2.5, 0.55, TeX("$\\phi_{ip2}"),col = 'red')
text(3.5, 0.65, TeX("$\\phi_{ip3}"),col = 'red')
text(4.4, 0.85, TeX("$\\phi_{ip4}"),col = 'red')

text(1.5, 0.65, TeX("$\\phi_{iq1}"),col = 'blue')
text(2.5, 0.95, TeX("$\\phi_{iq2}"),col = 'blue')
text(3.5, 0.95, TeX("$\\phi_{iq3}"),col = 'blue')
text(4.6, 0.95, TeX("$\\phi_{iq4}"),col = 'blue')


# 4. Add a legend to the plot and set legend lty
legend("bottomright", legend = c("Regulator p", "Regulator q"),
       col = c("red", "blue"), lty = 1:1, cex = 0.6)