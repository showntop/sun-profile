# encoding: utf-8

I18n.default_locale = :en

#require 'i18n/backend/fallbacks'

# We use AR for geographical places.
# We're not chaining it though because the database is queries all the time.
# Would be nice to have a Backend::Chain version that stops at the first find.
# So see app/helpers/reports* and app/views/*geographic*
#require 'i18n/backend/active_record'

#I18n::Backend::Simple.send(:include, I18n::Backend::Fallbacks)

LANGUAGES = [
  ['English', 'en'],
  ['简体中文', 'zh-cn']
]
