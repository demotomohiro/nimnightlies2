import std/[os, osproc]

echo "Running nimact"
if paramCount() > 0:
  echo "Arguments:"
  echo commandLineParams()

  let
    srcFile = paramStr(1)
    nimSrcFile = srcFile.parentDir / "prog.nim"
  moveFile srcFile, nimSrcFile
  quit execCmd("nim c -r " & nimSrcFile)
else:
  echo "Nothing to do"
