pdf ("WorldPie_Final2.pdf", width=10, height=7)

map('worldHires', xlim=c(-120,142), ylim=c(-15,72), col='gray', fill=FALSE)


for (i in 1:26){
  add.pie(z=c(freq$Allele_A[i], freq$Allele_G[i]), x=freq$long[i], y=freq$lat[i], 
          radius=freq$N_CHR[i]/100, col=c(alpha("orange", 0.6), alpha("blue", 0.6)), labels="")
  i=i+1
}

text(freq$long, freq$lat, labels=freq$superpop, cex=0.5, pos=1)

box()

legend('topright', bty='1', c("Freq. Allele A", "Freq. Allele G"), pch=16,
         col=c(alpha("orange", 0.6), alpha("blue", 0.6)), pt.cex=1, cex=0.7)
pdf( "rs1426654_freq.pdf" , width =8, height=8)

plot(freq$Allele_A, freq$lat, xlab="Freq(A) rs1426654", ylab="Lattitude",
    pch=16, cex=0.8, col=myColors[freq$superpop], xlim=c(0,1),
    main="Latidudinal Vairiation of rs1426654 from 24 Human Populations")
    
legend("topleft",
    c("African","Admixed American","East Asian","European", "South Asian"),
    col=c("red", "blue","darkgreen","salmon","black"),
    pch=16, inset=.02)
    
dev.off()
### begining the pdf

pdf('WorldPie_Final.pdf', width=10, height=7)


map('worldHires', xlim=c(-120, 120), ylim=c(-12,72), col="gray", fill=FALSE)
box()


for (i in 1:26){
  add.pie(z=c(freq$Allele_A[i], freq$Allele_G[i]), x=freq$long[i], y=freq$lat[i], 
        radius=freq$N_CHR[i]/100, col=c(alpha("orange", 0.6), alpha("blue", 0.6)), labels="")
  i=i+1
}

text(freq$long, freq$lat, labels=freq$superpop, cex=0.5, pos=1)

box()

legend('topright', bty='1', c("Freq. Allele A", "Freq. Allele G"), pch=16, 
        col=c(alpha("orange", 0.6), alpha("blue", 0.6)), pt.cex=1, cex=0.7)

title(main="Global Distribution of rs1426654 Alleles", font.main=1, cex.main=0.9)




 dev.off()

 source("plots.R")
 
