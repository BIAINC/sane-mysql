require "sane/mysql/version"
require 'active_record/connection_adapters/mysql2_adapter'
class ActiveRecord::ConnectionAdapters::Mysql2Adapter
  alias_method :configure_connection_with_mode, :configure_connection
  def configure_connection
    configure_connection_with_mode
    strict_mode = "SQL_MODE='STRICT_ALL_TABLES,NO_AUTO_VALUE_ON_ZERO'"
    execute("SET #{strict_mode}", :skip_logging)
    execute("SET FOREIGN_KEY_CHECKS=0;") if ENV['FK_CHECKS'].eql? "false"
  end
end
