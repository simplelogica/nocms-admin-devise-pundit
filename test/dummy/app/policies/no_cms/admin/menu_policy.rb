class NoCms::Admin::MenuPolicy  < Struct.new(:user, :menu)
  def users?
    true
  end
end
