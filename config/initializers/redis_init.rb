redis_config_path = Rails.root.to_s + "/config/redis_config.yml"
unless defined? REDIS_CONFIG_HASH
  REDIS_CONFIG_HASH = YAML.load(File.new(redis_config_path)).symbolize_keys![:redis].symbolize_keys
end
REDIS = Redis.new(REDIS_CONFIG_HASH)

# unless defined? REDIS_TRIGGER_CONFIG_HASH
#   REDIS_TRIGGER_CONFIG_HASH = YAML.load(File.new(redis_config_path)).symbolize_keys![:redis_trigger].symbolize_keys
# end
# REDIS_TRIGGER = Redis.new(REDIS_TRIGGER_CONFIG_HASH)

# unless defined? REDIS_AUDIENCE_CONFIG_HASH
#   REDIS_AUDIENCE_CONFIG_HASH = YAML.load(File.new(redis_config_path)).symbolize_keys![:redis_audience].symbolize_keys
# end
# REDIS_AUDIENCE = Redis.new(REDIS_AUDIENCE_CONFIG_HASH)

# unless defined? REDIS_XMO_CONNECT_CONFIG_HASH
#   REDIS_XMO_CONNECT_CONFIG_HASH = YAML.load(File.new(redis_config_path)).symbolize_keys![:redis_xmo_connect].symbolize_keys
# end
# REDIS_XMO_CONNECT = Redis.new(REDIS_XMO_CONNECT_CONFIG_HASH)