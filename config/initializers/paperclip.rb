Paperclip::Attachment.default_options.update({
  :fog_credentials => {
    :provider           => 'Rackspace',
    :rackspace_username => 'minivan',
    :rackspace_api_key  => '377dc45c04eb687c7646b9ed4efd2812'
  },
  :fog_directory => 'donezsange.eu',
  :fog_public => true
})
