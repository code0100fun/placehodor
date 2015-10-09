# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Placehodor.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Placehodor.Repo.insert!(%Placehodor.Image{name: "hodor"})
Placehodor.Repo.insert!(%Placehodor.Image{name: "crazy_eyes"})
Placehodor.Repo.insert!(%Placehodor.Image{name: "piggy_back"})
