
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







En tercer lugar, si suponemos que existe una función de costo 
que depende del uso de recursos (presencia en territorio) como así del 
tiempo (cada día adicional de censo es negativo), se puede pensar 
obtener $f(t) $tal que minimice el costo.

$C=\int_{0}^{d}{c(f(t),t)}f(t) dt$\\


En cuarto lugar, la microsimulación permite prolongar el problema 
reconociendo subpoblaciones con comportamiento demográfico disímil (alta 
                                                                    migración estacional, mortalidad diferencial en invierno, por ejemplo), 
integrando también una función de costo evaluando escenarios diversos. 







* Uniforme   

$C_{d}\sim U(0,d)$  
  $P^{A}=\int_{0}^{d}{N_{0}(1+rt)\frac{1}{d}dt}=N_{0}(1+\frac{rd}{2})$
  Siendo que $\frac{\partial P^{A}}{\partial r}>0$ y $\frac{\partial P^{A}}{\partial d}$ será positiva solo si $r>0$. Por otro lado $P^{A}=N_{d/2}.$
  
  * Decreciente

Mediante una distribución exponencial truncada en d, $C_{d}\sim ExpTr(\lambda ,d)$, siendo $C_{d}>0$ para $\lambda>0$. En este contexto $\lambda$ indica qué tan concentrado está el conteo 
al inicio de d, a mayor $\lambda$ mayor concentración. El conteo poblacional será:  
  $P^{B}=\int_{0}^{d}{ N_{0} (1+rt)\frac{\lambda e^{-\lambda t}}{1-e^{-\lambda d}} } dt=\frac{N_{0}((\lambda +r)e^{d\lambda }-(1+d r)\lambda-r)}{\lambda (e^{\lambda d}-1)}$.  
A las mismas conclusiones sobre las derivadas del caso uniforme, se le suma que $\frac{\partial P^{B}}{\partial \lambda }$ es negativa sólo si $r>0$.





















