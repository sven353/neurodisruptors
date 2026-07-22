#!/usr/bin/env bash
# Downloads every image the site uses from Wix's media CDN into assets/img/.
#
# Why this exists: the sandbox this site was originally built in could not
# reach static.wixstatic.com (network allowlist), so the images could not be
# fetched automatically during the build. Run this script once, on your own
# machine, from the root of this repo (the folder containing index.html):
#
#   bash scripts/download-assets.sh
#
# It just downloads files with curl — nothing destructive, safe to re-run.
# Written to work with the old bash (3.2) that ships by default on macOS —
# no associative arrays, just a plain list read line by line.

set -e
cd "$(dirname "$0")/.."   # move to repo root regardless of where this is run from

mkdir -p assets/img/gallery

fail=0

# Each line is: local-path|source-url
while IFS='|' read -r dest url; do
  # skip blank lines
  [ -z "$dest" ] && continue
  if curl -sSL -f -o "$dest" "$url"; then
    echo "OK   $dest"
  else
    echo "FAIL $dest"
    fail=1
  fi
done <<'IMAGE_LIST'
assets/img/logo.jpeg|https://static.wixstatic.com/media/4f8c8e_26882c99b563449ba32f05e01df82824~mv2.jpeg
assets/img/hero-share.png|https://static.wixstatic.com/media/4f8c8e_61c970fc0d6d4897a97845905082719d~mv2.png
assets/img/neurodiversity-icon.png|https://static.wixstatic.com/media/4f8c8e_ad9185e8ae1d4a808ff7d90278a1b13d~mv2.png
assets/img/neurodiversity-2.png|https://static.wixstatic.com/media/4f8c8e_5dbdb1e0e8c04f778d62ff0ac46542a0~mv2.png
assets/img/struggle-illustration.png|https://static.wixstatic.com/media/4f8c8e_7d9f92a73c0b40ec9db98be9ebe4b9ea~mv2.png
assets/img/logo-cci.png|https://static.wixstatic.com/media/4f8c8e_a8294700165f412e8b79d6bcb7712bef~mv2.png
assets/img/logo-kuma.png|https://static.wixstatic.com/media/4f8c8e_2b890361c59e4215b5e02feb2bab7423~mv2.png
assets/img/logo-linkedin.png|https://static.wixstatic.com/media/4f8c8e_097a9b1707534a5e8d44167069f74b1e~mv2.png
assets/img/logo-stralea.png|https://static.wixstatic.com/media/4f8c8e_93906bf75e874710baeb11968068c596~mv2.png
assets/img/logo-bcorp.png|https://static.wixstatic.com/media/4f8c8e_93263666764a41c48e9a0d7f2b3c7634~mv2.png
assets/img/webinar-fear-action.png|https://static.wixstatic.com/media/7b0767_e5e215b12faf45d09b505aa516358f34~mv2.png
assets/img/sven-leading-meeting.png|https://static.wixstatic.com/media/7b0767_75e5b2b6f99c4e0698adc5c73b55ff5d~mv2.png
assets/img/book-nonlinear-os.png|https://static.wixstatic.com/media/4f8c8e_4f50a4306d5144b48c1a128e9cc12c7b~mv2.png
assets/img/logo-iese.png|https://static.wixstatic.com/media/4f8c8e_f598259e72214bbb81848a104fbced91~mv2.png
assets/img/contribute-illustration.png|https://static.wixstatic.com/media/4f8c8e_c8eb4c476f6d40bcaade4d8024571829~mv2.png
assets/img/notjustme.png|https://static.wixstatic.com/media/4f8c8e_9ea27a48177e4d9598dab92dbbb4b48a~mv2.png
assets/img/inventor-davinci.png|https://static.wixstatic.com/media/4f8c8e_51e6ec64dc4041ec80712f357c05bbea~mv2.png
assets/img/survey-2024.png|https://static.wixstatic.com/media/4f8c8e_01151ca397684e76a338830219b3bf8e~mv2.png
assets/img/team-aga-gajownik.jpg|https://static.wixstatic.com/media/4f8c8e_f3477d64efd24068abfccba18858e9d0~mv2.jpg
assets/img/team-sven-mulfinger.png|https://static.wixstatic.com/media/4f8c8e_b11c56eb4dda48f28f7127bdd8e7ece4~mv2.png
assets/img/team-ivana-pignatelli.jpg|https://static.wixstatic.com/media/4f8c8e_1b03a11dcd874e239622da087b304816~mv2.jpg
assets/img/team-andreina-mendez.png|https://static.wixstatic.com/media/4f8c8e_fe442390b6104e398e834421c80eb7b8~mv2.png
assets/img/team-thomas-deuschel.png|https://static.wixstatic.com/media/4f8c8e_716492a7306c4f8a956f7eb8afca7960~mv2.png
assets/img/team-lorenza-campitelli.jpg|https://static.wixstatic.com/media/4f8c8e_95651daa33bd4b5b9dd2209ca0fe74ae~mv2.jpg
assets/img/team-vincent-aze.jpg|https://static.wixstatic.com/media/4f8c8e_e4bf0ac7a9f647abb315e81f46112c22~mv2.jpg
assets/img/team-thiago-passos.png|https://static.wixstatic.com/media/4f8c8e_855cf0a4e19b44259d43083451af05f0~mv2.png
assets/img/team-hubert-grealish.jpg|https://static.wixstatic.com/media/a8ccb2_3f3334666bb940ceb616be185e9dbf01~mv2.jpg
assets/img/team-sara-manfredini.jpg|https://static.wixstatic.com/media/4f8c8e_abb3db309f364c07bd5e40b4bf7c6732~mv2.jpg
assets/img/team-ana-bulnes.jpg|https://static.wixstatic.com/media/4f8c8e_120a23eed4774085a91e8d40082db5ef~mv2.jpg
assets/img/team-placeholder-you.png|https://static.wixstatic.com/media/4f8c8e_10a99716ce6345209cba270f68a44a53~mv2.png
assets/img/gallery/ryan-gosling.jpg|https://static.wixstatic.com/media/4f8c8e_8e12df7834c0472e9983d021bcf22a95~mv2.jpg
assets/img/gallery/emma-watson.jpg|https://static.wixstatic.com/media/4f8c8e_ac5aca2921b449e4b4d8d21f57973baf~mv2.jpg
assets/img/gallery/woody-harrelson.jpg|https://static.wixstatic.com/media/4f8c8e_877daab78121431f8fa37263f88cbd43~mv2.jpg
assets/img/gallery/michelle-rodriguez.jpg|https://static.wixstatic.com/media/4f8c8e_7cdd5ebf4e80478db4298eae267aeae6~mv2.jpg
assets/img/gallery/zooey-deschanel.jpg|https://static.wixstatic.com/media/4f8c8e_b5b8fb5661f64041ab2e811e7e98ada1~mv2.jpg
assets/img/gallery/will-smith.jpg|https://static.wixstatic.com/media/4f8c8e_9c033fcb3efc464b885af66c4b51a10c~mv2.jpg
assets/img/gallery/jim-carrey.jpg|https://static.wixstatic.com/media/4f8c8e_f2e15707b82b4080a256643b44b61cef~mv2.jpg
assets/img/gallery/simone-biles.jpg|https://static.wixstatic.com/media/4f8c8e_2f0a26a93ae74fcdb584f4a65a4f29df~mv2.jpg
assets/img/gallery/michael-phelps.jpg|https://static.wixstatic.com/media/4f8c8e_0c7d178effef4f40b65ef50520dedd85~mv2.jpg
assets/img/gallery/karina-smirnoff.jpg|https://static.wixstatic.com/media/4f8c8e_ea7fa81c201045fcb7784f68cad62862~mv2.jpg
assets/img/gallery/shaun-white.jpg|https://static.wixstatic.com/media/4f8c8e_5cc6bd90168d406484beb637f85c20cd~mv2.jpg
assets/img/gallery/nicolas-anelka.jpg|https://static.wixstatic.com/media/4f8c8e_c1c288ecaab24b23ae62c40d433fe096~mv2.jpg
assets/img/gallery/kelly-holmes.jpg|https://static.wixstatic.com/media/4f8c8e_91ac700b7f6843f4b369d58584838e68~mv2.webp
assets/img/gallery/terry-bradshaw.jpg|https://static.wixstatic.com/media/4f8c8e_5cbdf6996c064137afb3b76a57e33884~mv2.jpg
assets/img/gallery/justin-timberlake.jpg|https://static.wixstatic.com/media/4f8c8e_b3e78826b33a4905ae32accbc607ee22~mv2.jpg
assets/img/gallery/john-lennon.jpg|https://static.wixstatic.com/media/4f8c8e_5f0b7d3a325a48d7b6d88ade3b5b7e5d~mv2.jpg
assets/img/gallery/william-adams.jpg|https://static.wixstatic.com/media/4f8c8e_43333fe839b247de81c67d53b5ea7033~mv2.jpg
assets/img/gallery/adam-levine.jpg|https://static.wixstatic.com/media/4f8c8e_43e1679e5fd2424889798cdafaaa3df2~mv2.jpg
assets/img/gallery/ozzy-osbourne.jpg|https://static.wixstatic.com/media/4f8c8e_632ff78e1e5d4aebb9a86ea97a24cff6~mv2.jpg
assets/img/gallery/solange-knowles.jpg|https://static.wixstatic.com/media/4f8c8e_05e97c3e4eab46ae866fa4ad7dd49426~mv2.jpg
assets/img/gallery/loyle-carner.jpg|https://static.wixstatic.com/media/4f8c8e_f3618d4d66584de2b3af706f8141d382~mv2.jpg
assets/img/gallery/mel-b.jpg|https://static.wixstatic.com/media/4f8c8e_874761ad8b454bb98990da7fcebf5a53~mv2.webp
assets/img/gallery/sia.jpg|https://static.wixstatic.com/media/4f8c8e_abfb18bfeadc4b4496aebd0a64825bc2~mv2.jpg
assets/img/gallery/jean-jacques-goldman.jpg|https://static.wixstatic.com/media/4f8c8e_b88da1bdfd104de58d4d3d469ea5a9c8~mv2.jpg
assets/img/gallery/benjamin-biolay.jpg|https://static.wixstatic.com/media/4f8c8e_358b3c1f5cc147dc9bae31fe0d46ac0a~mv2.webp
assets/img/gallery/albert-einstein.jpg|https://static.wixstatic.com/media/4f8c8e_90e2e32997204b79b5562e5ab113f3fd~mv2.jpg
assets/img/gallery/wolfgang-mozart.jpg|https://static.wixstatic.com/media/4f8c8e_919df017b8284ff0a17bba3c6ce09f59~mv2.jpg
assets/img/gallery/walt-disney.jpg|https://static.wixstatic.com/media/4f8c8e_d7ad8651c38f4179ad79755c198a1abb~mv2.jpg
assets/img/gallery/salvador-dali.jpg|https://static.wixstatic.com/media/4f8c8e_8a1db0c3b06445e381b305f419be9c4f~mv2.jpg
assets/img/gallery/thomas-edison.jpg|https://static.wixstatic.com/media/4f8c8e_7d7b523d94e045aa9ee7a895e85fb56f~mv2.jpg
assets/img/gallery/leonardo-da-vinci.jpg|https://static.wixstatic.com/media/4f8c8e_644d316093c24ec5901a1d6e0932cac3~mv2.jpg
assets/img/gallery/pablo-picasso.jpg|https://static.wixstatic.com/media/4f8c8e_c6eb726b16684033a4dede3831ad10c5~mv2.webp
assets/img/gallery/hans-christian-andersen.jpg|https://static.wixstatic.com/media/4f8c8e_14b856127fe2451b89723fbb88394bf2~mv2.jpeg
assets/img/gallery/alexander-graham-bell.jpg|https://static.wixstatic.com/media/4f8c8e_c3c8ae226c2845e78301a2003dbb98b3~mv2.jpg
assets/img/gallery/simone-de-beauvoir.jpg|https://static.wixstatic.com/media/4f8c8e_5ac06c2ca86e4bc2b4ee0ac927a318c8~mv2.jpg
assets/img/gallery/agatha-christie.jpg|https://static.wixstatic.com/media/4f8c8e_75b3a59875e648bfa030805977ab3fb8~mv2.jpg
assets/img/gallery/coco-chanel.jpg|https://static.wixstatic.com/media/4f8c8e_9a5ed9f689654177bd5dd24fd1513116~mv2.webp
assets/img/gallery/marie-curie.jpg|https://static.wixstatic.com/media/4f8c8e_12cd1c2682d24436aea894b8cd5234db~mv2.jpg
assets/img/gallery/frida-kahlo.jpg|https://static.wixstatic.com/media/4f8c8e_295cdeb1e19340389fb4b0701f47ed5f~mv2.png
assets/img/gallery/emily-dickinson.jpg|https://static.wixstatic.com/media/4f8c8e_fc361a5b190b4097926fd520215e685f~mv2.jpeg
assets/img/gallery/dorothy-parker.jpg|https://static.wixstatic.com/media/4f8c8e_77917a66fd1b421eb0f83e30efd98c84~mv2.jpg
assets/img/gallery/zelda-fitzgerald.jpg|https://static.wixstatic.com/media/4f8c8e_d3be2a1802b546caa0e05985862c0f1d~mv2.jpg
IMAGE_LIST

if [ "$fail" -eq 0 ]; then
  echo
  echo "All images downloaded into assets/img/. You're ready to commit and push."
else
  echo
  echo "Some downloads failed — re-run this script, or check your internet connection."
fi
