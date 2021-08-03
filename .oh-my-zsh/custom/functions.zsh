# workaround for using AWS mssh (Python ec2instanceconnectcli package)
function mssh () {
  (  # start subshell so that we can 'export' without impacting caller's environment
    export TERM=kitty
    ~/.local/bin/mssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null "$@"
  )
}
