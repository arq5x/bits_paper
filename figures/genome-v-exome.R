library(ggplot2)

d <- read.table('genome-v-exome.txt', header=TRUE)

postscript(file='genome-v-exome.eps',  width = 7.0, height = 8.0,
           horizontal = FALSE, onefile = FALSE, paper = "special",
           pointsize=24)

p <- ggplot(d, aes(x = d$size, y = d$speed, fill=d$alg))
p + geom_bar(position = "dodge", colour='black') + 
    scale_y_log10(breaks=c(1e0,1e1,1e2,1e3,1e4,1e5,1e6,1e7,1e8)) + 
    scale_fill_brewer(palette = "Greys") +
    scale_x_discrete(limits=c("10K","100K","1M","10M")) +
    opts(panel.background = theme_rect(fill='white')) +
    opts(panel.grid.major = theme_blank()) +
    opts(panel.grid.minor = theme_blank()) +
    opts(axis.text.x = theme_text(size = 14)) +
    opts(axis.text.y = theme_text(size = 14)) +
    opts(axis.title.x = theme_text(size = 16)) +
    opts(axis.title.y = theme_text(size = 16, angle=90)) +
    opts(legend.title=theme_blank()) +
    opts(legend.position=c(0.30,0.80)) +
    labs(x = "Interval database size", y = "Runtime(microseconds)")    
dev.off()