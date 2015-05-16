require "ar_union/version"

ActiveRecord::Relation.class_eval do
  def union(*scopes)
    uniq_identifier = "#{table_name}.#{primary_key}"
    scopes << self
    sub_query = (scopes).map {|s| s.except(:select).select(uniq_identifier).to_sql}.join(" UNION ALL ")
    engine.where("#{uniq_identifier} IN (#{sub_query})")
  end

  # TODO: make this actually work
  def ordered_union(*scopes)
    uniq_identifier = "#{table_name}.#{primary_key}"
    scopes << self
    sub_query = (scopes).map {|s| s.except(:select).select(uniq_identifier).to_sql}.join(" UNION ALL ")
    engine.where("#{uniq_identifier} IN (#{sub_query})")
  end
end