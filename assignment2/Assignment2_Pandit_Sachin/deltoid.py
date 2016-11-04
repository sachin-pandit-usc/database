import math

longitude = -118.2897034
latitude = 34.021242
a  = 0.001
mod_long  = 0
mod_lat  = 0
i  = 0
while i <= 2*math.pi:
    mod_long = 2 * a * math.cos (i) + a * math.cos (2*i) + longitude
    mod_lat = 2 * a * math.sin (i) - a * math.sin (2*i) + latitude
    print str(mod_long) + "," + str(mod_lat) + ",10"
    i += 0.1
