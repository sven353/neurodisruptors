#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/.."
mkdir -p assets/img/leaders
fail=0
while IFS='|' read -r dest url; do
  [ -z "$dest" ] && continue
  if curl -sSL -f -o "$dest" "$url"; then
    echo "OK   $dest"
  else
    echo "FAIL $dest"
    fail=1
  fi
done <<'IMAGE_LIST'
assets/img/leaders/richard-branson.jpg|https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Richard_Branson_Addresses_the_Our_Ocean_Conference_2015_in_Valpara%C3%ADso_%2821783214958%29_%28cropped%29.jpg/250px-Richard_Branson_Addresses_the_Our_Ocean_Conference_2015_in_Valpara%C3%ADso_%2821783214958%29_%28cropped%29.jpg
assets/img/leaders/jo-malone.jpg|https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Jo_Malone_Norwich.JPG/250px-Jo_Malone_Norwich.JPG
assets/img/leaders/elon-musk.jpg|https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Elon_Musk_-_54820081119_%28cropped%29.jpg/250px-Elon_Musk_-_54820081119_%28cropped%29.jpg
assets/img/leaders/barbara-corcoran.jpg|https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/BarbaraCorcoran2023.jpg/250px-BarbaraCorcoran2023.jpg
assets/img/leaders/ingvar-kamprad.jpg|https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Ingvar_Kamprad_Haparanda_June_2010.jpg/250px-Ingvar_Kamprad_Haparanda_June_2010.jpg
assets/img/leaders/david-neeleman.jpg|https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Neeleman_2015.jpg/250px-Neeleman_2015.jpg
assets/img/leaders/charles-schwab.jpg|https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Charles_Schwab_in_the_Oval_Office_with_President_Trump.jpg/250px-Charles_Schwab_in_the_Oval_Office_with_President_Trump.jpg
assets/img/leaders/temple-grandin.jpg|https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/TempleGrandin.jpg/250px-TempleGrandin.jpg
assets/img/leaders/pip-jamieson.jpg|https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Pip_Jamieson_Wikimedia_UK_Bloomberg_London_Tech_Week_schools_Wikithon.jpg/250px-Pip_Jamieson_Wikimedia_UK_Bloomberg_London_Tech_Week_schools_Wikithon.jpg
assets/img/leaders/daymond-john.jpg|https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/DaymondJohn2023b.jpg/250px-DaymondJohn2023b.jpg
IMAGE_LIST
if [ "$fail" -eq 0 ]; then
  echo
  echo "All 10 leader photos downloaded into assets/img/leaders/."
  echo "Note: these are Wikimedia Commons photos, mostly under CC-BY-SA licenses that technically require attribution — the gallery section includes a general Wikimedia Commons credit line, but check individual file pages if you want full per-photo attribution."
else
  echo
  echo "Some downloads failed — re-run this script, or check your internet connection."
fi
