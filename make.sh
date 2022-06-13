#!/usr/bin/env bash

if [[ -z "$INSTALLDIR" ]]; then
    INSTALLDIR="$HOME/Documents/Arduino"
fi
echo "INSTALLDIR: $INSTALLDIR"

pde_path=`find ../../../ -name pde.jar`
core_path=`find ../../../ -name arduino-core.jar`
lib_path=`find ../../../ -name commons-codec-1.7.jar`
if [[ -z "$core_path" || -z "$pde_path" ]]; then
    echo "Some java libraries have not been built yet (did you run ant build?)"
    return 1
fi
echo "pde_path: $pde_path"
echo "core_path: $core_path"
echo "lib_path: $lib_path"

set -e

mkdir -p bin
javac -source 8 -target 1.8 -cp "$pde_path:$core_path:$lib_path" \
      -d bin src/ESP32S3FS.java

pushd bin
mkdir -p $INSTALLDIR/tools
rm -rf $INSTALLDIR/tools/ESP32S3FS
mkdir -p $INSTALLDIR/tools/ESP32S3FS/tool
zip -r $INSTALLDIR/tools/ESP32S3FS/tool/esp32s3fs.jar *
popd

dist=$PWD/dist

mkdir -p $dist
pushd $INSTALLDIR/tools
zip -r $dist/ESP32S3FS-$rev.zip ESP32S3FS/
popd
