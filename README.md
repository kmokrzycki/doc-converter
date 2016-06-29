# doc-converter

This is intended as a quick reference and showcase of how to use LibreOffice to convert doc or any LibreOffice supported formats to other supported formats.All steps assume you are using Debian/Ubuntu server.
I will be using this solution to convert doc and docx files to html and txt files.

## Install LibreOffice
Libre Office comes preinstalled with many popular distributions but if you do not have it already install below command should do it for you.
```
sudo apt-get install libreoffice-writer
```
## Starting Libre office Server
```
libreoffice --nologo --headless --nofirststartwizard --accept='socket,host=127.0.0.1,port=2220,tcpNoDelay=1;urp'
```

## Install unoconv
unoconv is a command line utility that can convert any file format that LibreOffice can import, to any file format that LibreOffice is capable of exporting.

```
sudo apt-get install unoconv
```

## Converting document
```
unoconv --connection 'socket,host=127.0.0.1,port=2220,tcpNoDelay=1;urp;StarOffice.ComponentContext' -f html /tmp/convertion/myWordDocument.doc
```

## Stoppping Libre office Server
```
libreoffice --nologo --headless --nofirststartwizard --unaccept='socket,host=127.0.0.1,port=2220,tcpNoDelay=1;urp;StarOffice.Service'
```
