from math import floor, sqrt, sin, tan, atan, asinh


def calcCoords(vals):
    for val in vals:
        if val == 'long':
            val = (vals['long'] + 180)/360
            long = getNAC(val)
        if val == 'lat':
            val = (vals['lat'] + 90)/180
            lat = getNAC(val)
        if val == 'alt':
            R = calcR(vals['lat'])
            val = atan(vals['alt']/R)/90
            alt = getNAC(val)

    if alt == '0000':
        return '{} {}'.format(long, lat)
    else:
        return '{} {} {}'.format(long, lat, alt)


def calcR(latitude):
    a = 6378.1370           # semi-major earth axis (ellipsoid equatorial radius) in km
    b = 6356.7523           # semi- minor earth axis (ellipsoid polar radius) in km
    C1 = (1 - 2*(1 - (b**2)/(a**2)))*tan(latitude)
    C2 = (1-(b**2)/(a**2)) * tan(latitude) * sqrt((a**2)+(b**2)*(tan(latitude)**2)) /(a**2)
    C3 = 2*a*C2/sqrt(1+b**2/a**2*tan(latitude)**2) + C1
    C4 = C3*sqrt(1+C3**2)+asinh(C3)
    C5 = C1*sqrt(1+C1**2)+asinh(C1)
    R = (C4 - C5)/4/C2
    return R


def getNAC(val):
    v1 = int(val*30)
    v2 = int((val*30-v1)*30)
    v3 = int(((val*30-v1)*30-v2)*30)
    v4 = int((((val*30-v1)*30-v2)*30-v3)*30)
    v1, v2, v3, v4 = (charNAC(v) for v in [v1, v2, v3, v4])
    return '{}{}{}{}'.format(v1,v2,v3,v4)


def charNAC(x):
    keys = range(30)
    values = (0,1,2,3,4,5,6,7,8,9,'B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Z',)
    d = dict(zip(keys, values))
    return d[x]


def calcNAC(*args, **kwargs):
    coords = dict(long=longitude, lat=latitude, alt=altitude)
    return calcCoords(coords)


if __name__ == '__main__':
    longitude = 148.41243
    latitude = -36.40524
    altitude = 0
    nac = calcNAC(longitude=0, latitude=0, altitude=0)
    print('NAC: ', nac)



