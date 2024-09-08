

command="ssh -J tb-mac.local -L 14330:10.202.7.25:1433 rhb.report.server -N"
echo $command && eval $command