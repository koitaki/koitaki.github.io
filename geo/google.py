import sys

def createURL(resort='', longitude=0, latitude=0, altitude=0, zoom=15):
    """
     Return google url for resort
    :param resort:
    :param longitude:
    :param latitude:
    :param altitude:
    :param zoom:
    :return:
    """
    if resort:
        gstring = 'https://www.google.com/maps/place/'
    else:
        gstring = 'https://www.google.com/maps'
    parameters = (gstring, resort, '/@', str(latitude), ',',  str(longitude), ',', str(zoom), 'z')
    gstring = ''.join(parameters)
    return gstring


def gMapURL(resort, longitude,latitude):
    """ Main entry point for program """
    gURL = createURL(resort, longitude, latitude)
    return gURL


if __name__ == '__main__':
    sys.exit(gMapURL())

