defmodule PhxWeb.LayoutView do
  use PhxWeb, :view

  def js_script_tag  (path) do
    if Mix.env == :prod do
      # In production we'll just reference the file
       "<script src=\"" <> path <>"\"></script>"
    else
      # In development mode we'll load it from our webpack dev server
      "<script src=\"http://localhost:4001/js/app.js\"></script>"
    end
  end

  # Ditto for the css
  def css_link_tag (path) do
    if Mix.env == :prod do
      "<link rel=\"stylesheet\" type=\"text/css\" href=\"" <> path <>"\" />"
    else
      "<link rel=\"stylesheet\" type=\"text/css\" href=\"http://localhost:4001/css/app.css\" />"
    end
  end
  
end
