# This plugin just for less than 3.x.x version rails

module RelationScope
  def self.included(base)
    base.class_eval do
      named_scope :where,    lambda { |conditions| { :conditions => conditions.reject { |k, v| v.blank? } } }
      named_scope :joins,    lambda { |joins| { :joins => joins } }
      named_scope :includes, lambda { |includes| { :include => includes } }
      named_scope :selects,  lambda { |selects| { :select => selects } }
      named_scope :order,    lambda { |order| { :order => order } }
      named_scope :limit,    lambda { |limit| { :limit => limit } }
      named_scope :offset,   lambda { |offset| { :offset => offset } }
      named_scope :group,    lambda { |group| { :group => group } }
      named_scope :having,   lambda { |having| { :having => having } }
    end
  end
end

ActiveRecord::Base.send(:include, RelationScope)