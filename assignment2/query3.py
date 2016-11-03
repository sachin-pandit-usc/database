import math

longitude = -118.2906224
latitude = 34.0244091
a  = 0.01
mod_long  = 0
mod_lat  = 0
i  = 0
while i <= 2*math.pi:
    mod_long = 2 * a * math.cos (i) + a * math.cos (2*i) + longitude
    mod_lat = 2 * a * math.sin (i) - a * math.sin (2*i) + latitude
    print str(mod_long) + "," + str(mod_lat) + ",17"
    i += a
