module ApplicationHelper

  def body_classes
    body_classes = [] || @body_classes
    body_classes << params[:controller] if params[:controller]
    body_classes << params[:action] if params[:action]
    body_classes.join(" ")
  end

  def add_body_class(klass)
    @body_classes ||= []
    @body_classes << klass
  end

end
