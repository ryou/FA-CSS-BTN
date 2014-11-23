require 'slim'

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

set :slim, { pretty: true, sort_attrs: false, format: :html5 }

compass_config do |config|
  config.output_style = :expanded
end


configure :build do

  # 出力されたcssとsassファイルとの行の対応情報はビルド時に出さないように
  compass_config do |config|
    config.line_comments = false
  end
end

activate :livereload

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :git
  deploy.branch = "gh-pages"
end
