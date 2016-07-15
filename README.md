**Usage**

* Pull docker image from [dockerhub](https://hub.docker.com/r/ganesshkumar/gollum/) or build it using the following command
```
docker build -t <image_name> .
```

  
* Running the container
```
docker run —-name gollum \
           -v /path/to/gollum/files:/wiki -p 4567:4567 \
           -v /path/to/config.rb:/config.rb
           -d <image_name>
```
Note: /path/to/gollum/files must be a git directory. Use absolute path.

Example config.rb file
```
Gollum::Page.send :remove_const, :FORMAT_NAMES if defined? Gollum::Page::FORMAT_NAMES

wiki_options = {
  :live_preview => false,
  :allow_uploads => true,
  :per_page_uploads => true,
  :allow_editing => true,
  :css => true,
  :js => false,
  :mathjax => true,
  :h1_title => true
}

Precious::App.set(:wiki_options, wiki_options)
```

This wiki option sets `css` to true, so if you `custom.css` in your wiki git repo it will be applied.

You can integrate omniauth using this `config.rb`. Tutorial can be found [here](http://ronnieroller.com/Gollum).
