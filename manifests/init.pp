# Public: Configure logrotate::rule defines from hiera lookup
class logrotate {
  $rules = hiera('logrotate::rules', {})
  create_resources('logrotate::rule', $rules)
}

