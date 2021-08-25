import mtest
import numpy as np
import matplotlib.pyplot as plt

sig3 = 3. #5 works

t_discrete = np.linspace(0.,30.,1000)
m    = mtest.MTest()
m.setMaximumNumberOfSubSteps(10)
m.setBehaviour('generic', 'src/libBehaviour.so', 'GuentherSalzerDilatancy_semi_expl')
m.setImposedStress('SXX', {0: 0, 1: -sig3, 30: -sig3})
m.setImposedStress('SYY', {0: 0, 1: -sig3, 30: -sig3})
m.setImposedStrain('EZZ', {0: 0, 1: 0, 30.: -0.3})
m.setImposedStress('SXZ', 0.0)
m.setImposedStress('SYZ', 0.0)
m.setImposedStress('SXY', 0.0)
m.setMaterialProperty('YoungModulus', 25.e4)
m.setMaterialProperty('PoissonRatio', 0.27)
m.setMaterialProperty('PrimaryPowerLawFactor', 6.5e-24)
m.setMaterialProperty('PrimaryPowerLawExponent', 11.)
m.setMaterialProperty('SecondaryPowerLawFactor1', 0.005)
m.setMaterialProperty('SecondaryPowerLawExponent1', 4.0)
m.setMaterialProperty('SecondaryActivationEnergy1', 40.e3)
m.setMaterialProperty('SecondaryPowerLawFactor2', 0.005)
m.setMaterialProperty('SecondaryPowerLawExponent2', 1.0)
m.setMaterialProperty('SecondaryActivationEnergy2', 65.e3)
m.setMaterialProperty('HardeningExponent', 2.95)
m.setMaterialProperty('InitialHardening', 0.001)
m.setMaterialProperty('ReferenceStress', 1.)
m.setExternalStateVariable("Temperature", 299.)
s = mtest.MTestCurrentState()
wk = mtest.MTestWorkSpace()
m.completeInitialisation()
m.initializeCurrentState(s)
m.initializeWorkSpace(wk)
sax = np.array([0.])
eax = np.array([0.])
Udil = np.array([0.])
evol = np.array([0.])
ehard = np.array([0.])
for i in range(len(t_discrete)-1):
    m.execute(s, wk, t_discrete[i], t_discrete[i + 1])
    Udil = np.append(Udil,s.getInternalStateVariableValue('DilatancyWork'))
    ehard = np.append(ehard,s.getInternalStateVariableValue('HardeningStrain'))
    evol = np.append(evol,s.getInternalStateVariableValue('DilatancyStrain'))
    sax = np.append(sax,s.s1[2])
    eax = np.append(eax,s.e1[2])

print("Happily done")

fig,ax = plt.subplots(figsize=(20,8),ncols=3)
ax[0].plot(-eax[0:]*100,-sax[0:]-sig3, label= '$\\sigma_3 = %i$ MPa' %sig3)
ax[1].plot(t_discrete[1:],ehard[1:]*100, label= '$\\sigma_3 = %i$ MPa' %sig3)
ax[2].plot(Udil[1:],evol[1:]*100, label= '$\\sigma_3 = %i$ MPa' %sig3)

ax[0].set_xlabel('$\\epsilon_{zz}$ / %')
ax[0].set_ylabel('$\\sigma_{zz} - \sigma_3$ / MPa')
ax[0].grid('both')
ax[0].legend()


ax[1].set_xlabel('$t$ / d')
ax[1].set_ylabel('$\\epsilon_\\mathrm{cr}^\\mathrm{v}$ / %')
ax[1].grid('both')
ax[1].legend()

ax[2].set_xlabel('$U_\\mathrm{Dil}$ / MPa')
ax[2].set_ylabel('$\\epsilon_\\mathrm{vol}$ / %')
ax[2].grid('both')
ax[2].legend()

fig.tight_layout()
fig.savefig('GSDil.pdf')
