import matplotlib.pyplot as plt
import numpy as np
from collections import namedtuple

VectorFunction = namedtuple("VectorFunction", ("x","y","z"))

ax = plt.figure().add_subplot(projection='3d')

t = np.linspace(-10, 10, 100)
r = VectorFunction(np.cos(2*t), np.sin(2*t), t)
tan = VectorFunction(-np.sin(2*t), np.cos(2*t), 0)
nor = VectorFunction(-np.cos(2*t), -np.sin(2*t), 0)
binorm = VectorFunction(0, 0, 1)

# ax.plot(r.x,r.y,r.z)
# ax.plot(tan.x,tan.y,tan.z)
ax.plot(binorm.x,binorm.y,binorm.z)
plt.show()
