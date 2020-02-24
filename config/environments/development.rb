# coding: utf-8
Rails.application.configure do
  # 検証環境フラグ
  # is_stg = true
  pro = false
  pp "pro=#{pro}で development 環境の設定"
  config.cache_classes = pro
  # config.reload_classes_only_on_change = false
  config.eager_load = pro
  # Show full error reports.
  config.consider_all_requests_local = true
  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.headers = {
        'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end
  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :local
  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log
  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load
  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true
  config.assets.debug = true
  # Suppress logger output for asset requests.
  config.assets.quiet = true
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  # devise設定
  config.action_controller.forgery_protection_origin_check = false
  if pro
    # TODO:
    config.action_mailer.default_url_options = { host: '' }
    config.action_mailer.perform_caching = false
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        :address => 'smtp.gmail.com',
        :port => 587,
        :domain => 'smtp.gmail.com',
        :user_name => '',
        :password => '',
        :authentication => :plain,
        :enable_starttls_auto => true
    }
  else
    config.action_mailer.default_url_options = { host: 'lvh.me', port: 3017 }
    config.action_mailer.perform_caching = true
    config.action_mailer.delivery_method = :letter_opener_web
    config.action_mailer.perform_deliveries = true
    config.hosts << 'lvh.me'
  end
  config.assets.unknown_asset_fallback = true
  unless pro
    # letter_opener を使用
  end
end
