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
```
    asdf install
```

3. Confirm installation
```
   asdf plugin-list
```

You should see the following output
```
   elixir
   erlang
```

4. Install postgresql
   * http://postgresguide.com/setup/install.html

5. Setup the project
```
   git clone <add path here>
   cd tradehounds
   ./bin/setup.sh
```

6. Add the Elixir formatter to your editor setup
   * For vim, follow these instructions: https://github.com/mhinz/vim-mix-format

7. Run tests
These commands run the entire CI suite including `format`, `credo`, `dialyzer`
and `test`
```
   mix test     # Runs functional test suite
   mix verify   # Runs static checking tools
```

You may also run any of these individually with:
```
   mix format --check-formatted
   mix credo
   mix dialyzer
   mix test
   mix coveralls
```

8. Start Phoenix endpoint
```
   mix phx.server
```

9. To use an API endpoint:
   * Visit `localhost:4000/api/v1/healthcheck`

   You should see this JSON response:

   ```
   {"status" : "ok"}
   ```

## Learn more about Phoenix

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
