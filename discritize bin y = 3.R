dt1 =read.csv('C:\\Users\\Administrator\\Desktop\\Senior\\8variable_high.csv')
library(classInt)
y1 = classIntervals(dt1$tsratio,4,style = 'equal')
y1
names(y1)
a =cut(dt1$tsratio, breaks = y1$brks, labels=as.character(1:3))
dt1$ycut3 = a
dt1
write.csv(dt1,'C:\\Users\\Administrator\\Desktop\\Senior\\selectAndBin3.csv'
          ,row.names=FALSE)

#original dataset
dtT = read.csv('C:\\Users\\Administrator\\Desktop\\Senior\\telomere_696.csv')
y2 = classIntervals(dtT$telomere,3,style = 'equal')
y2
#แบ่งแยก ข้อมูลไม่ค่อยเกาะกลุ่มกัน
names(y2)
b =cut(dtT$telomere, breaks = y2$brks, labels=as.character(1:3))
b
dtT$ycut3 = b
write.csv(dtT,'C:\\Users\\Administrator\\Desktop\\Senior\\OriginalBin3.csv'
          ,row.names=FALSE)





ndt = read.csv('C:\\Users\\Administrator\\Desktop\\Senior\\telomere_696__cutout.csv')
y3 = classIntervals(ndt$telomere,4,style = 'equal')
y3
names(y3)
c = cut(ndt$telomere,breaks=y3$brks,labels=as.character(1:4))
ndt$ycut = c
write.csv(ndt,'C:\\Users\\Administrator\\Desktop\\Senior\\original_cutOut_bin4.csv'
          ,row.names=FALSE)
