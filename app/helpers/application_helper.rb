module ApplicationHelper
  def alert_key(type)
    types = { success: 'success',
              alert: 'danger',
              warning: 'warning',
              notice: 'info' }

    types[type.to_sym]
  end
end
