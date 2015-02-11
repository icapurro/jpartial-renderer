# JPartial::Renderer
[![Gem Version](https://badge.fury.io/rb/jpartial-renderer.svg)](http://badge.fury.io/rb/jpartial-renderer)
[![Code Climate](https://codeclimate.com/github/icapurro/jpartial-renderer/badges/gpa.svg)](https://codeclimate.com/github/icapurro/jpartial-renderer)
[![Test Coverage](https://codeclimate.com/github/icapurro/jpartial-renderer/badges/coverage.svg)](https://codeclimate.com/github/icapurro/jpartial-renderer)

Gem to use jbuilder partial files to render ruby hashes inside a rails application

# Install

Include the following line in your Gemfile

```ruby
gem 'jpartial-renderer'
```

# Motivation

The motivation to provide this funcionality is to rehuse the json definitions inside the jbuilder files in the views of the application. This is extremely usefull if you want to implement websocket updates to the UI using jsons in the payload of the events. With this you can define the jsons in one place (the jbuilder partials) and reuse them.

# Usage

Let's say you have the follwing model
```ruby
class Post < ActiveRecord::Base
end
```

with this associated jbuilder partial view in `posts/_show.json.jbuilder`

```ruby
json.(post, :id, :message)
```

Then you can use this library in the following way

```ruby
module MyTestModule
    extend JPartial::Renderer
    
    def self.show_post_hash(post)
        render_json 'posts/show', post: post, wrap_with: :post
    end
end
```

and the output of the method is

```ruby
{ post => { id => 1, message => 'Post message' } }
```

Notice that the option `wrap_with` let's you wrap the partial inside a hash key.
