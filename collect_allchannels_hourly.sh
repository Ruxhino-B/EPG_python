/bin/cp -rf /home/new_xml ~/epg/
cd ~/epg/new_xml

cp -rf Klan.xml KlanHD.xml
cp -rf Top\ Channel.xml TopChannelHD.xml
cp -rf Channel\ X.xml X1.xml
cp -rf Channel\ X.xml X2.xml
cp -rf Channel\ X.xml X3.xml
cp -rf Channel\ X.xml Stars\ XXX.xml
cp -rf Channel\ X.xml Dorcel\ HD.xml

sed -i 's/name="Klan"/name="TV Klan HD"/g' KlanHD.xml

sed -i 's/name="Top Channel"/name="Top Channel HD"/g' TopChannelHD.xml

sed -i 's/name="Nickelodeon"/name="Nickleodeon"/g' Nickelodeon.xml

sed -i 's/name="Channel X"/name="X1"/g' X1.xml

sed -i 's/name="Channel X"/name="X2"/g' X2.xml

sed -i 's/name="Channel X"/name="X3"/g' X3.xml

sed -i 's/name="Channel X"/name="Stars XXX"/g' Stars\ XXX.xml
sed -i 's/name="Channel X"/name="Dorcel HD"/g' Dorcel\ HD.xml

cp -rf Bang\ Bang.xml Bang\ Bangott.xml
sed -i 's/name="Bang Bang"/name="Bang Bangott"/g' Bang\ Bangott.xml
cp -rf Cufo.xml Cufoott.xml
sed -i 's/name="Cufo"/name="Cufoott"/g' Cufoott.xml
cp -rf Film\ Aksion.xml Film\ Aksionott.xml
sed -i 's/name="Film Aksion"/name="Film Aksionott"/g' Film\ Aksionott.xml
cp -rf Film\ Autor.xml Film\ Autorott.xml
sed -i 's/name="Film Autor"/name="Film Autorott"/g' Film\ Autorott.xml
cp -rf Film\ Drame.xml Film\ Drameott.xml
sed -i 's/name="Film Drame"/name="Film Drameott"/g' Film\ Drameott.xml
cp -rf Film\ Hits.xml Film\ Hitsott.xml
sed -i 's/name="Film Hits"/name="Film Hitsott"/g' Film\ Hitsott.xml
cp -rf Film\ Komedi.xml Film\ Komediott.xml
sed -i 's/name="Film Komedi"/name="Film Komediott"/g' Film\ Komediott.xml
cp -rf Film\ Thriller.xml Film\ Thrillerott.xml
sed -i 's/name="Film Thriller"/name="Film Thrillerott"/g' Film\ Thrillerott.xml
cp -rf Junior\ TV.xml Junior\ TVott.xml
sed -i 's/name="Junior TV"/name="Junior TVott"/g' Junior\ TVott.xml
cp -rf MAD\ TV.xml MAD\ TVott.xml
sed -i 's/name="MAD TV"/name="MAD TVott"/g' MAD\ TVott.xml
cp -rf My\ Music.xml My\ Musicott.xml
sed -i 's/name="My Music"/name="My Musicott"/g' My\ Musicott.xml
cp -rf News\ 24.xml News\ 24ott.xml
sed -i 's/name="News 24"/name="News 24ott"/g' News\ 24ott.xml
cp -rf Ora\ News.xml Ora\ Newsott.xml
sed -i 's/name="Ora News"/name="Ora Newsott"/g' Ora\ Newsott.xml
cp -rf Stinet.xml Stinetott.xml
sed -i 's/name="Stinet"/name="Stinetott"/g' Stinetott.xml
cp -rf T\ HD.xml T\ HDott.xml
sed -i 's/name="T HD"/name="T HDott"/g' T\ HDott.xml
cp -rf T.xml Tott.xml
sed -i 's/name="T"/name="Tott"/g' Tott.xml
cp -rf TVSH.xml TVSHott.xml
sed -i 's/name="TVSH"/name="TVSHott"/g' TVSHott.xml
cp -rf TopNews.xml TopNews\ OTT.xml
sed -i 's/name="TopNews"/name="TopNews OTT"/g' TopNews\ OTT.xml
cp -rf Film\ Dy\ HD.xml Film\ Dy\ HDott.xml
sed -i 's/name="Film Dy HD"/name="Film Dy HDott"/g' Film\ Dy\ HDott.xml
cp -rf Film\ Nje\ HD.xml Film\ Nje\ HDott.xml
sed -i 's/name="Film Nje HD"/name="Film Nje HDott"/g' Film\ Nje\ HDott.xml
cp -rf SuperSport\ HD\ 1.xml SuperSport\ HD\ 1ott.xml
sed -i 's/name="SuperSport HD 1"/name="SuperSport HD 1ott"/g' SuperSport\ HD\ 1ott.xml
cp -rf SuperSport\ HD\ 2.xml SuperSport\ HD\ 2ott.xml
sed -i 's/name="SuperSport HD 2"/name="SuperSport HD 2ott"/g' SuperSport\ HD\ 2ott.xml
cp -rf EXP\ shkence.xml EXP\ shkenceott.xml
sed -i 's/name="EXP shkence"/name="EXP shkenceott"/g' EXP\ shkenceott.xml
cp -rf EXP\ natyra.xml EXP\ natyraott.xml
sed -i 's/name="EXP natyra"/name="EXP natyraott"/g' EXP\ natyraott.xml
cp -rf EXP\ histori.xml EXP\ historiott.xml
sed -i 's/name="EXP histori"/name="EXP historiott"/g' EXP\ historiott.xml
cp -rf EXP\ Natyra.xml EXP\ Natyraott.xml
sed -i 's/name="EXP Natyra"/name="EXP Natyraott"/g' EXP\ Natyraott.xml
cp -rf EXP\ Histori.xml EXP\ Historiott.xml
sed -i 's/name="EXP Histori"/name="EXP Historiott"/g' EXP\ Historiott.xml
cp -rf EXP\ Shkence.xml EXP\ Shkenceott.xml
sed -i 's/name="EXP Shkence"/name="EXP Shkenceott"/g' EXP\ Shkenceott.xml
cp -rf Klan.xml KlanHDott.xml
sed -i 's/name="Klan"/name="KlanHDott"/g' KlanHDott.xml
cp -rf Top\ Channel.xml TopChannelHDott.xml
sed -i 's/name="Top Channel"/name="TopChannelHDott"/g' TopChannelHDott.xml
cp -rf Report\ TV.xml A1\ report\ OTT.xml
sed -i 's/name="Report TV"/name="A1 report OTT"/g' A1\ report\ OTT.xml
cp -rf ABC\ News.xml Abc\ newsott.xml
sed -i 's/name="ABC News"/name="Abc newsott"/g' Abc\ newsott.xml
cp -rf Baby\ TV.xml BABY\ TV\ OTT.xml
sed -i 's/name="Baby TV"/name="BABY TV OTT"/g' BABY\ TV\ OTT.xml
cp -rf Discovery\ HD.xml Discovery\ HDott.xml
sed -i 's/name="Discovery HD"/name="Discovery HDott"/g' Discovery\ HDott.xml

rm -rf TFTPServer-gui.log
rm -rf mondi\ -\ Copy.xml
rm -rf mondi.xml

rm -f /root/epg/new_xml/RTV\ Ora.xml


#cat *.xml  > ~/epg/new_xml/allchannels.xml

/root/epg/new_xml/validate

cd ~/epg/new_xml

grep -R -v "WIDECAST_DVB" allchannels.xml > allchannels2

grep -R -v "xml" allchannels2 > allchannels.xml

(echo -n $'<?xml version="1.0" encoding="ISO-8859-1"?>\n'; echo -n $'<WIDECAST_DVB>\n'; cat allchannels.xml; echo -n '</WIDECAST_DVB>';  ) > allchannels2

# echo $(cat allchannels2) > allchannels.xml

mv -f allchannels2 allchannels.xml

php program_schedule_sql.php

/bin/sleep 10

php program_schedule_sql_ott.php

