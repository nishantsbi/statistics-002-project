load(url("http://bit.ly/dasi_gss_data"))
write.csv(file='head_gss_data.txt', head(gss))
str(gss$jobinc)
levels(gss$jobinc)
> table(gss.sei$year)
gss.sei <- gss[complete.cases(gss$sei),]
gss.sei <- gss.sei[complete.cases(gss.sei$jobinc),]
summary(gss.sei$sei)
summary(gss.sei$jobinc)
png('JobincVsSei.png', 500, 500)
plot(gss.sei$jobinc, gss.sei$sei)
dev.off()
table(gss.sei$year)