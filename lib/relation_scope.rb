# This plugin just for rails version 2.3.x with named scope module

module RelationScope
  def self.included(base)
    base.class_eval do
      named_scope :where,    lambda { |args|
        conditions = args.is_a?(Hash) ? args.reject { |k, v| v.blank? } : args
        { :conditions => conditions }
      }
      named_scope :joins,    lambda { |joins| { :joins => joins } }
      named_scope :includes, lambda { |includes| { :include => includes } }
      named_scope :selects,   lambda { |select| { :select => select } }
      named_scope :order,    lambda { |order| { :order => order } }
      named_scope :limit,    lambda { |limit| { :limit => limit } }
      named_scope :offset,   lambda { |offset| { :offset => offset } }
      named_scope :group,    lambda { |group| { :group => group } }
      named_scope :having,   lambda { |having| { :having => having } }
    end
  end
end

ActiveRecord::Base.send(:include, RelationScope)