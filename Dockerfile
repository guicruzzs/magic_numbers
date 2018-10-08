FROM elixir:1.7.3

COPY . /magic_numbers
WORKDIR /magic_numbers

CMD ["iex","-S","mix"]