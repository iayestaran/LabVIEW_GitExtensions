#!/bin/bash
echo "Input data:"
echo "Base File: $1"
echo "Remote File arg: $2"
echo "Local File: $3"
echo "Merged File: $4"
echo ""
echo "Converting file path formats..."
echo ""
#
# get absolute paths (-a) in windows format (-w)
export BASE_CYG="$(cygpath -wa $1)"
export REMOTE_CYG="$(cygpath -wa $2)"
export LOCAL_CYG="$(cygpath -wa $3)"
export MERGED_CYG="$(cygpath -wa $4)"
#
echo "Windows style data paths:"
echo "Base File: $BASE_CYG"
echo "Remote File arg: $REMOTE_CYG"
echo "Local File: $LOCAL_CYG"
echo "Merged File: $MERGED_CYG"
echo ""
#
echo "Calling LVMerge..."
"C:/Program Files (x86)/National Instruments/Shared/LabVIEW Merge/LVMerge.exe" "C:/Program Files (x86)/National Instruments/LabVIEW 2015/LabVIEW.exe" "$BASE_CYG" "$REMOTE_CYG" "$LOCAL_CYG" "$MERGED_CYG"