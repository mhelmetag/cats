PAPERCLIP_CONFIG = {
  storage: :s3,
  s3_protocol: ':http',
  s3_permissions: 'private',
  s3_region: 'us-east-1',
  s3_credentials: {
    bucket: 'docker',
    access_key_id: 'minio',
    secret_access_key: 'minio123'
  },
  s3_host_name: 'localhost:9000',
  s3_options: {
    endpoint: 'http://localhost:9000',
    force_path_style: true
  },
  url: ':s3_path_url'
}.freeze

Paperclip::Attachment.default_options.merge!(PAPERCLIP_CONFIG)
