#!/bin/bash
mkdir done

for filename in ATM*.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in CCAS*.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *1.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *2.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *3.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *4.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *5.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *6.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *7.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *8.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *9.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *10.lisp; do
	echo "=== ${filename} ==="
	runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
	mv ${filename}* done/
done

for filename in *11.lisp; do
        echo "=== ${filename} ==="
        runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
        mv ${filename}* done/
done

for filename in *12.lisp; do
        echo "=== ${filename} ==="
        runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
        mv ${filename}* done/
done

for filename in *13.lisp; do
        echo "=== ${filename} ==="
        runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
        mv ${filename}* done/
done

for filename in *14.lisp; do
        echo "=== ${filename} ==="
        runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
        mv ${filename}* done/
done

for filename in *15.lisp; do
        echo "=== ${filename} ==="
        runlim -o ${filename}.tm -s 7168 zot ${filename} > ${filename}.res
        mv ${filename}* done/
done