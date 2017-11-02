require "rails_mysqldump/version"

module RailsMysqldump
  def self.run(path = 'tmp/mysqldump')
    dump_dir = Rails.root.join(path)
    FileUtils.mkdir_p(dump_dir)
    Dir.chdir(dump_dir)

    db_conf = Rails.application.config.database_configuration[Rails.env]
    password_option = db_conf['password'].nil? ? "" : "-p'#{db_conf['password']}'"
    output_file = "#{Rails.env}_#{Time.current.to_s(:number)}.dump"

    system "mysqldump -u #{db_conf['username']} #{password_option} -h localhost #{db_conf['database']} --single-transaction > #{output_file}"
  end
end
