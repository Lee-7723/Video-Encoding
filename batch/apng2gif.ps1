mkdir ../gif
mkdir ../tmp
get-childitem -name | foreach-object {
    ffmpeg -hide_banner -loglevel error -i $_ ../tmp/%3d.png
    gifski -q -r 10 -o ('../gif/'+$_.split('.')[0]+'.gif') ../tmp/*.png
    rm ../tmp/*
}
rm ../tmp -r