import sys


def createURL(resort='', longitude=0, latitude=0, altitude=0, zoom=15):
    if resort:
        gstring = 'https://www.google.com/maps/place/'
    else:
        gstring = 'https://www.google.com/maps'
    parameters = (gstring, resort, '/@', str(latitude), ',',  str(longitude), ',', str(zoom), 'z')
    gURL = ''.join(parameters)
    return gURL


def createEmbedURL(resort='', longitude=0, latitude=0, gAPIkey='', zoom=15):
    if resort:
        gstring = 'https://www.google.com/maps/embed/v1/view?'
    else:
        gstring = 'https://www.google.com/maps/embed/v1/view?'
    gURL = gstring + 'key=' + gAPIkey + '&center=' + str(latitude) + ',' + str(longitude)\
           + '&zoom=20'
    return gURL


def MapURL(resort, longitude,latitude):
    gURL = createURL(resort, longitude, latitude)
    return str(gURL)


def EmbedURL(resort, longitude,latitude):
    """ Main entry point for program """
    api_key = "AIzaSyAaeQawbsvelMqceZYIX_nU9kpmxRFOh_Q"
    gURL = createEmbedURL(resort, longitude, latitude, gAPIkey=api_key, zoom=15)
    return str(gURL)


if __name__ == '__main__':
    sys.exit(EmbedURL())

