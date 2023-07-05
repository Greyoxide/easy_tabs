module EasyTabs::TabsHelper

  require 'nokogiri'

  def panels(&block)

    contents = Nokogiri::HTML capture(&block)
    panels = contents.css('.panel')

    return if panels.blank? # we can jump out of here because we don't need any of this.

    if panels.count > 1
      construct_panels(panels, &block)
    else
      panel = panels.first
      content_tag :div do
        concat content_tag :h4, panel['data-tab-name']
        concat panel.inner_html.html_safe
      end
    end

  end

  def panel(options = {}, &block)
    attrs = {}

    attrs.merge! tab_name: options.fetch(:name)
    attrs.merge! tab_icon: options.fetch(:icon) if options.has_key?(:icon)

    content_tag :div, id: options.fetch(:name).to_s.parameterize, class: "panel panel-#{attrs.fetch(:tab_name)}", data: attrs do
      capture(&block)
    end
  end

  def construct_panels(panels, &block)
    content_tag :div, class: 'panels', data: { controller: 'tabs' } do

      tabs = content_tag :div, class: 'tab-container' do
        content_tag :ul, class: 'tabs' do
          panels.each do |panel|
            concat build_tab(panel)
          end
        end
      end

      concat tabs
      concat capture(&block)
      # console
    end
  end
  def build_tab(panel)

    name = panel['data-tab-name'].titleize
    icon = panel['data-tab-icon'].to_sym if panel['data-tab-icon'].present?

    content_tag :li do
      content_tag :a, data: { action: 'click->tabs#setTab' }, class: 'tab' do
        concat tabler_icon icon, size: 16 if icon.present?
        concat content_tag :span, name
      end
    end

  end

end