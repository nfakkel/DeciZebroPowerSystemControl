import matplotlib.pyplot as plt
import numpy as np

t = np.linspace(0, 8, num=1000)
r = 3000
c = 1e-3
v0 = 3
vc = v0 * np.exp(-t/(r*c))
t = np.insert(t, 0, -1)
vc = np.insert(vc, 0, 3)
plt.plot(t, vc)
plt.axhline(1.6, c='red', ls='--')
plt.axvline(1.886, c='red', ls='--')
plt.xticks([-1,0,1,1.886,3,4,5,6,7,8])
plt.yticks([0,0.5,1,1.6,2,2.5,3,3.5])
plt.xlim(xmin=-1, xmax=8)
plt.title('Backup capacitor discharge')
plt.ylabel('Capacitor Voltage [V]')
plt.xlabel('Time [s]')
plt.show()