# credits: https://support.google.com/elastifile-support/answer/9899027?hl=en
# 20 large <2GB each , 20 medium <200MB each, 20 small <8MB each, 20 smallest <1MB each
#large files
mkdir -p data
cd data
mkdir -p transcoding-files
cd transcoding-files
for n in {1..20}; do
  dd if=/dev/urandom of=file$( printf %03d "$n" ).bin bs=64k count=$(( RANDOM + 1024 ))
done
#small files
cd ..
mkdir -p rendering-files
cd rendering-files
for n in {1..20}; do
  dd if=/dev/urandom of=file$( printf %03d "$n" ).bin bs=1 count=$(( RANDOM + 1024 ))
done
#medium files
cd ..
mkdir -p image-files
cd image-files
for n in {1..20}; do
    dd if=/dev/urandom of=file$( printf %03d "$n" ).bin bs=8k count=$(( RANDOM + 1024 ))
done
cd ..
mkdir -p project-files
cd project-files
for n in {1...20}; do
  dd if=/dev/urandom of=file$( printf %03d "$n$" ).bin bs=4k count=$(( RANDOM +1024 ))
done
cd ..
