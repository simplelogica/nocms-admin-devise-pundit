class NoCms::Admin::MenuPolicy  < Struct.new(:user, :menu)
  def users?
    user.has_role? :metadmin
  end
end
