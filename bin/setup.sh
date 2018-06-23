#!/bin/bash

mix deps.get
mix ecto.create && mix ecto.migrate
MIX_ENV=test mix ecto.create && mix ecto.migrate
