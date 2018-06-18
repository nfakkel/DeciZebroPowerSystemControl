import numpy
import peakutils
from peakutils.plot import plot as pplot
from scipy.stats import norm
from matplotlib import pyplot
#matplotlib inline
# - Copy and Paste Ranges using OpenPyXl library

import openpyxl

# Prepare the spreadsheets to copy from and paste too.

# File to be copied
wb = openpyxl.load_workbook("C:/Users/NielsFakkel/.PyCharm2018.1/config/scratches/mppt.xlsx")  # Add file name
sheet = wb["Sheet3"]  # Add Sheet name

def copyRange(startCol, startRow, endCol, endRow, sheet):
    rangeSelected = []
    # Loops through selected Rows
    for i in range(startRow, endRow + 1, 1):
        # Appends the row to a RowSelected list
        rowSelected = []
        for j in range(startCol, endCol + 1, 1):
            rowSelected.append(sheet.cell(row=i, column=j).value)
        # Adds the RowSelected List and nests inside the rangeSelected
        rangeSelected.append(rowSelected)

    return rangeSelected

x= numpy.array(copyRange(1,1,1,2004,sheet))
ys = numpy.array(copyRange(4,1,4,2004,sheet))
ys = ys.astype(numpy.float64)
x= x.astype(numpy.float64)
y = numpy.array(copyRange(2,1,2,2004,sheet))
y = y.astype(numpy.float64)
x = x[:,0]
y = -y[:,0]
ys = -ys[:,0]

mpptpk = peakutils.indexes(ys, thres=0.009, min_dist=20)
dutypk = peakutils.indexes(y, thres=0.5)

fig, mppt = pyplot.subplots()
#mppt.plot(x, ys)
#pplot(x, ys, mpptpk)
#pwm = mppt.twinx()
#pwm.plot(x, -y, '--k')
#fig.tight_layout()

print(mpptpk)
print(dutypk)
dutycycle = []
for k in mpptpk:
        print(k)
        nxt = (next(i for i, v in enumerate(dutypk) if v > k))
        #print(nxt)
        dutylen = dutypk[nxt]-dutypk[nxt-1]
        dutysize = k-dutypk[nxt-1]
        dutycycle.append((dutysize/dutylen)*100)

print(dutycycle)
#pplot(x, -y, dutypk)
#pyplot.title('First estimate')
#pyplot.show()

sigma = numpy.std(dutycycle)
# the histogram of the data
n, bins, patches = pyplot.hist(dutycycle, 50, density=True, facecolor='g', alpha=0.75)
(mu, sigma) = norm.fit(dutycycle)

s  = r'$\mu='
s += str(int(mu))
s += ', \sigma=$'
s += str(int(sigma))

pyplot.xlabel('DutyCycle %')
pyplot.ylabel('Probability')
pyplot.title('Histogram of MPPT Dutycycles')
pyplot.text(40, .095, s)
pyplot.axis([0, 100, 0 , 0.1])
pyplot.grid(True)
pyplot.show()