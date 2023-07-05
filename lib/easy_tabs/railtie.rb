module EasyTabs
  class Railtie < Rails::Railtie
    initializer 'easy_tabs.action_view' do
      ActiveSupport.on_load :action_view do
        include EasyTabs::TabsHelper
      end
    end
  end
end