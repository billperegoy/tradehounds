# Tradehounds

## Project setup

1. Install [asdf package version manager](https://github.com/asdf-vm/asdf)
   * Follow the instructions on https://github.com/asdf-vm/asdf

1. Add asdf plugins
```
   asdf plugin-add erlang
   asdf plugin-add elixir
```

2. Install Elixir and Erlang versions
````
    asdf install
````

3. Confirm installation
```
   asdf plugin-list
```

You should see the following output
```
   elixir
   erlang
```

4. Setup the project
```
   git clone <add path here>
   cd tradehounds
   ./bin/setup.sh
```

5. Add the Elixir formatter to your editor setup
   * For vim, follow these instructions: https://github.com/mhinz/vim-mix-format

6. Run tests
This command runs the entire CI suite including `format`, `credo`, `dialyzer`
and `test`
```
   mix verify
```

You may also run any of these individually with:
```
   mix format --check-formatted
   mix credo
   mix dialyzer
   mix test
```

7. Start Phoenix endpoint
```
   mix phx.server
```

8. To use an API enpoint:
   * TBD

## Learn more about Phoenix

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
