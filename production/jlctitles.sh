#!/bin/bash
sed -i "s/Ref/Designator/" $1
sed -i "s/PosX/Mid X/" $1
sed -i "s/PosY/Mid Y/" $1
sed -i "s/Rot/Rotation/" $1
sed -i "s/Side/Layer/" $1
