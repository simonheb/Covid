library(Covid)

ggplot(lombardia, aes(x=Date,y=infected))+geom_point()+geom_line()

ggplot(lombardia, aes(x=Date,y=log(infected)))+geom_point()+geom_line()


ggplot(lombardia)+
  geom_point(aes(x=Date,y=growth))+
  geom_line(aes(x=Date,y=growth))+
  geom_hline(yintercept = 1)+
  geom_vline(data = measures %>% filter(ADM1=="Lombardy"), aes(xintercept=Start), color ="red")+
  geom_text(data = measures %>% filter(ADM1=="Lombardy"),aes(x=Start+1,label=Type),
            y=1, angle=90, text=element_text(size=1), color="red")



