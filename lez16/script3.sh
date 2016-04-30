#!/bin/bash

sed -e "s:aumento:calo:g"\
    -e "s/previsto/supposto/g" brano.tex > brano2.tex
