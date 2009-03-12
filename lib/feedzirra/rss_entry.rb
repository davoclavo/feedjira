module Feedzirra
  class RSSEntry
    include SAXMachine
    include FeedEntryUtilities
    element :title
    element :link, :as => :url

    element :"dc:creator", :as => :author
    element :"content:encoded", :as => :content
    element :description, :as => :summary

    element :pubDate, :as => :published
    element :"dc:date", :as => :published
    element :"dc:Date", :as => :published
    elements :category, :as => :categories
    
    element :guid, :as => :id
  end
end