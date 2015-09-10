# Preview all emails at http://localhost:3000/rails/mailers/alert
class AlertPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/alert/add_client
  def add_client
    Alert.add_client
  end

end
