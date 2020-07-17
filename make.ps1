$files = Get-ChildItem "*.jemdoc"
$exe = "C:\Anaconda2\python.exe .\jemdoc.py"

ForEach ($file in $files) {
  Invoke-Expression "$exe -c analytics.conf $file"
}
