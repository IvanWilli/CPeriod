
### exponential ditr
d = 0.002
lam = 10
curve(lam*exp(-lam*x),0,d)
curve(lam*exp(-lam*x)/(1-exp(-lam*d)),0,d) #trunc

EP_Exp = function(r, lam, d=0.5, N_0=1) {N_0*lam*(exp(d*(r-lam))-1)/((1-exp(-lam*d))*(r-lam))}

EP_Uni = function(r, d=0.5, N_0=1) {N_0/(d*r)*(exp(r*d)-1)}

r_range = seq(-0.1,0.1,0.001)

plot(r_range, EP_Uni(r_range), col=1, t='l')
points(r_range, EP_Exp(r_range,0.5), type='l', col=2)
points(r_range, EP_Exp(r_range,1), type='l', col=3)
points(r_range, EP_Exp(r_range,2), type='l', col=4)
points(r_range, EP_Exp(r_range,5), type='l', col=5)





#exp
curve(0.5*exp(-0.5*x)/(1-exp(-5*0.5)),0.01,0.5)


d=0.5
r=0.01
N_0=10000
lam=0.5
N_0/(d*r)*(exp(r*d)-1)
N_0*lam*(exp(d*(r-lam))-1)/((1-exp(-lam*d))*(r-lam))
