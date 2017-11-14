#!/bin/sh

#This source code is part of the MutaFlow project. It starts the log parser.
#Copyright (C) 2017  Björn Mathis

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <https://www.gnu.org/licenses/>.

rm -rf AppOut
for file in AppOutSave/* 
do
echo $file
mv $file AppOut
java -jar Parser.jar
mv AppOut $file
done
mkdir AppOut
