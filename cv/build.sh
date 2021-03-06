mkdir tmp
xelatex -output-directory=tmp HaranJacksonCV.tex
mv tmp/HaranJacksonCV.pdf ../assets/pdf
rm -rf tmp
convert -density 300 ../assets/pdf/HaranJacksonCV.pdf ../assets/img/HaranJacksonCV.png
VERSION_NUMBER=$(date +%s)
cat ../index0.html | sed -e "s/VERSION_NUMBER/$VERSION_NUMBER/g" >../index.html
