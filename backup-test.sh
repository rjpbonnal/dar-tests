mkdir -p archive
mkdir -p catalog
/usr/bin/time dar -c ./archive/test_2023-12-13_master -@ ./catalog/CAT_test_2023-12-13_master -R data/ -s 1G --hash sha512 -vm -vf &&\
/usr/bin/time dar -t ./archive/test_2023-12-13_master > /dev/null
