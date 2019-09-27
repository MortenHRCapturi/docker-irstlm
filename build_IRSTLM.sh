#!/bin/sh

#v1.0
infile=$1
name="$(echo $infile | rev|  cut -d '.' -f 2- | rev )"
order=$2
export IRSTLM=/mnt/data/workspace/irstlm
docker run -i  clupeidae/irstlm:latest /opt/irstlm/bin/build-lm.sh -i $infile -n $order -o $name.$order.irstlm.gz -k 10
gunzip $name.$order.irstlm.gz
/mnt/data/sphinx/old/bin/sphinx_lm_sort < $name.$order.irstlm > $name.$order.sort.irstlm
/usr/local/bin/sphinx_lm_convert -i $name.$order.sort.irstlm -o $name.$order.sort.irstlm.DMP

#rm -f $name.$order.irstlm

#rm -f $name.$order.sort.irstlm