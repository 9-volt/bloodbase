Paperclip::Attachment.default_options.update({
  :fog_credentials => {
    :provider           => 'Rackspace',
    :rackspace_username => 'minivan',
    :rackspace_api_key  => '377dc45c04eb687c7646b9ed4efd2812',
    :persistent => false
  },
  :fog_directory => 'donezsange.eu',
  :fog_public => true,
  :fog_host => 'http://5efda31c3fbee098ed54-08afa23ae42a26ce89824e054fbbe15d.r1.cf1.rackcdn.com'
})
