pip_package_installed() {
  name=$1
  pip_name=$2

  echolog "Ensure PyPI package $name is installed"

  is_met() {
    which $name
  }

  meet() {
    if [[ $pip_name == "" ]]; then
      sudo pip install $name
    else
      sudo pip install $pip_name
    fi
  }

  require pip
}
