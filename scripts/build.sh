#!/bin/bash
#
# Compile and create executable from assembly

NAME=$1
PWD=$(pwd)

echo "Compiling application $NAME..."
nasm -f elf64 -o $PWD/bin/$NAME.o $PWD/src/$NAME.asm

echo "Linking object file $NAME..."
ld $PWD/bin/$NAME.o -o $PWD/bin/$NAME

echo "Test execution of $NAME..."
$PWD/bin/$NAME
