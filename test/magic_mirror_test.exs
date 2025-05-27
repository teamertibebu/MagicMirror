defmodule MagicMirrorTest do
  use ExUnit.Case
  doctest MagicMirror

  test "greets the world" do
    assert MagicMirror.hello() == :world
  end
end
