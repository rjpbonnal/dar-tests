
I run the tests inside an apptainer image build from Docker

 apptainer shell -B <path_to_my_test_dir> test/debian-dar_bookworm.sif

```
cd path_to_my_test_dir
bash init-random.sh
bash backup-test.sh
cd catalog
dar -l CAT_test_2023-12-13_master -Tslicing -g rendering-files/file020.bin
```

```
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
