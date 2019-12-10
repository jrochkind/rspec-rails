# This file was generated on 2019-07-24T15:33:53+02:00 from the rspec-dev repo.
# DO NOT modify it by hand as your changes will get lost the next time it is generated.

function is_mri {
  if ruby -e "exit(RUBY_ENGINE == 'ruby')"; then
    return 0
  else
    return 1
  fi;
}

function is_jruby {
  if ruby -e "exit(RUBY_PLATFORM == 'java')"; then
    return 0
  else
    return 1
  fi;
}

function additional_specs_available {
  type run_additional_specs > /dev/null 2>&1
  return $?
}

function documentation_enforced {
  if [ -x ./bin/yard ]; then
    return 0
  else
    return 1
  fi
}

function style_and_lint_enforced {
 if [ -x ./bin/rubocop ]; then
   return 0
 else
   return 1
 fi
}
