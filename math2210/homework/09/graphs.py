import numpy as np
import matplotlib.pyplot as plt

def plot_y_half():
    y = np.linspace(-2,2,400)
    x_1 = y - 2
    x_2 = np.sqrt(4 - y**2)

    plt.figure(figsize=(6,6))
    plt.fill_betweenx(
        y,
        np.maximum(0, x_1), x_2,
        alpha=.5,
        color='cyan'
    )

    # plt.plot(x_1, y, 'b-', label=r'$x = y - 2$')
    plt.plot(x_2, y, 'b-', label=r'$x = \sqrt{4 - y^2}$')
    plt.axvline(0, color='b', linestyle='-', label=r'$x = 0$')
    # plt.axhline(2, color='b', linestyle='-', label=r'$y = 2$')
    # plt.axhline(-2, color='b', linestyle='-', label=r'$y = 2$')

    plt.xlim(-2,2)
    plt.ylim(-2,2)
    plt.gca().set_aspect('equal')
    plt.legend()
    # plt.show()
    plt.savefig("region.png")

def plot_x_half():
    x = np.linspace(-2,2,400)
    y_1 = x - 2
    y_2 = np.sqrt(4 - x**2)

    plt.figure(figsize=(6,6))
    plt.fill_between(
        x,
        np.maximum(0, y_1), y_2,
        alpha=.5,
        color='cyan'
    )

    # plt.plot(x_1, y, 'b-', label=r'$x = y - 2$')
    plt.plot(x, y_2, 'b-', label=r'$x = \sqrt{4 - x^2}$')
    plt.axhline(0, color='b', linestyle='-', label=r'$y = 0$')
    # plt.axhline(2, color='b', linestyle='-', label=r'$y = 2$')
    # plt.axhline(-2, color='b', linestyle='-', label=r'$y = 2$')

    plt.xlim(-2,2)
    plt.ylim(-2,2)
    plt.gca().set_aspect('equal')
    plt.legend()
    # plt.show()
    plt.savefig("x_rotation.png")

plot_x_half()
