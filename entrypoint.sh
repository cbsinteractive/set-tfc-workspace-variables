#!/bin/sh
echo "$INPUT_WORKSPACEVARIABLES" | manage-tfc-workspace variables update-or-create -token $INPUT_TFCTOKEN -org $INPUT_ORGNAME -workspace $INPUT_WORKSPACENAME
