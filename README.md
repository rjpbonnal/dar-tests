
I run the tests inside an apptainer image build from Docker

 apptainer shell -B <path_to_my_test_dir> test/debian-dar_bookworm.sif

```
cd path_to_my_test_dir
bash init-random.sh

find data/

data/
data/transcoding-files
data/transcoding-files/file010.bin
data/transcoding-files/file008.bin
data/transcoding-files/file012.bin
data/transcoding-files/file018.bin
data/transcoding-files/file013.bin
data/transcoding-files/file001.bin
data/transcoding-files/file020.bin
data/transcoding-files/file019.bin
data/transcoding-files/file016.bin
data/transcoding-files/file011.bin
data/transcoding-files/file004.bin
data/transcoding-files/file014.bin
data/transcoding-files/file002.bin
data/transcoding-files/file006.bin
data/transcoding-files/file005.bin
data/transcoding-files/file017.bin
data/transcoding-files/file007.bin
data/transcoding-files/file003.bin
data/transcoding-files/file009.bin
data/transcoding-files/file015.bin
data/rendering-files
data/rendering-files/file010.bin
data/rendering-files/file008.bin
data/rendering-files/file012.bin
data/rendering-files/file018.bin
data/rendering-files/file013.bin
data/rendering-files/file001.bin
data/rendering-files/file020.bin
data/rendering-files/file019.bin
data/rendering-files/file016.bin
data/rendering-files/file011.bin
data/rendering-files/file004.bin
data/rendering-files/file014.bin
data/rendering-files/file002.bin
data/rendering-files/file006.bin
data/rendering-files/file005.bin
data/rendering-files/file017.bin
data/rendering-files/file007.bin
data/rendering-files/file003.bin
data/rendering-files/file009.bin
data/rendering-files/file015.bin
data/image-files
data/image-files/file010.bin
data/image-files/file008.bin
data/image-files/file012.bin
data/image-files/file018.bin
data/image-files/file013.bin
data/image-files/file001.bin
data/image-files/file020.bin
data/image-files/file019.bin
data/image-files/file016.bin
data/image-files/file011.bin
data/image-files/file004.bin
data/image-files/file014.bin
data/image-files/file002.bin
data/image-files/file006.bin
data/image-files/file005.bin
data/image-files/file017.bin
data/image-files/file007.bin
data/image-files/file003.bin
data/image-files/file009.bin
data/image-files/file015.bin
data/project-files
```


```
bash backup-test.sh

find archive/
archive/test_2023-12-13_master.24.dar.sha512
archive/test_2023-12-13_master.25.dar.sha512
archive/test_2023-12-13_master.13.dar.sha512
archive/test_2023-12-13_master.16.dar.sha512
archive/test_2023-12-13_master.15.dar.sha512
archive/test_2023-12-13_master.19.dar.sha512
archive/test_2023-12-13_master.13.dar
archive/test_2023-12-13_master.11.dar
archive/test_2023-12-13_master.4.dar
archive/test_2023-12-13_master.18.dar.sha512
archive/test_2023-12-13_master.25.dar
archive/test_2023-12-13_master.17.dar
archive/test_2023-12-13_master.10.dar.sha512
archive/test_2023-12-13_master.9.dar.sha512
archive/test_2023-12-13_master.16.dar
archive/test_2023-12-13_master.12.dar
archive/test_2023-12-13_master.2.dar.sha512
archive/test_2023-12-13_master.21.dar.sha512
archive/test_2023-12-13_master.26.dar
archive/test_2023-12-13_master.14.dar
archive/test_2023-12-13_master.15.dar
archive/test_2023-12-13_master.23.dar
archive/test_2023-12-13_master.4.dar.sha512
archive/test_2023-12-13_master.22.dar.sha512
archive/test_2023-12-13_master.17.dar.sha512
archive/test_2023-12-13_master.3.dar.sha512
archive/test_2023-12-13_master.22.dar
archive/test_2023-12-13_master.24.dar
archive/test_2023-12-13_master.21.dar
archive/test_2023-12-13_master.11.dar.sha512
archive/test_2023-12-13_master.14.dar.sha512
archive/test_2023-12-13_master.3.dar
archive/test_2023-12-13_master.12.dar.sha512
archive/test_2023-12-13_master.8.dar
archive/test_2023-12-13_master.9.dar
archive/test_2023-12-13_master.23.dar.sha512
archive/test_2023-12-13_master.19.dar
archive/test_2023-12-13_master.6.dar
archive/test_2023-12-13_master.5.dar
archive/test_2023-12-13_master.2.dar
archive/test_2023-12-13_master.7.dar
archive/test_2023-12-13_master.1.dar
archive/test_2023-12-13_master.27.dar
archive/test_2023-12-13_master.8.dar.sha512
archive/test_2023-12-13_master.7.dar.sha512
archive/test_2023-12-13_master.10.dar
archive/test_2023-12-13_master.20.dar
archive/test_2023-12-13_master.27.dar.sha512
archive/test_2023-12-13_master.1.dar.sha512
archive/test_2023-12-13_master.20.dar.sha512
archive/test_2023-12-13_master.18.dar
archive/test_2023-12-13_master.26.dar.sha512
archive/test_2023-12-13_master.6.dar.sha512
archive/test_2023-12-13_master.5.dar.sha512


find catalog/
catalog/test_2023-12-13_master.25.dar
catalog/CAT_test_2023-12-13_master.1.dar.sha512
catalog/CAT_test_2023-12-13_master.1.dar

```

```
cd catalog
dar -l CAT_test_2023-12-13_master -Tslicing -g rendering-files/file020.bin

#this may vary for you

Slice(s)|[Data ][D][ EA  ][FSA][Compr][S]|Permission| Filemane
--------+--------------------------------+----------+-----------------------------
         [InRef][-]       [---][   0%][ ] drwxr-sr-x rendering-files
25       [InRef][ ]       [---][-----][ ] -rw-r--r-- rendering-files/file020.bin
-----
All displayed files have their data in slice range [25]
```

```
ln -s ../archive/test_2023-12-13_master.25.dar 
dar -x test_2023-12-13_master -A CAT_test_2023-12-13_master -R ./ -g rendering-files/file020.bin -v
Arguments read from /etc/darrc :

No user target found on command line
Opening archive test_2023-12-13_master ...
Opening the archive using the multi-slice abstraction layer...
The last file of the set is not present in file:///storage/home/rbonnal/recodasci/it/archiving/prova/catalog , please provide it. [return = YES | Esc = NO]
```
