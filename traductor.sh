java -jar /usr/share/java/ffdec/ffdec.jar -swf2xml orig-passage-dizaine.swf out.xml && sed -r -f changes.sed out.xml > out2.xml && cat out2.xml | perl -p -e 's/(fontHeight=")(\d+)(")/$1.($2*0.9).$3/ge' > out3.xml && java -jar /usr/share/java/ffdec/ffdec.jar -xml2swf out3.xml diza.swf