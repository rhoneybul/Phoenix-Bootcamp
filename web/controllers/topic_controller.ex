defmodule Discuss.TopicController do 
    use Discuss.Web, :controller

    alias Discuss.Topic

    def new(conn, _params) do 
        changeset = Topic.changeset(%Topic{}, %{})

        render conn, "new.html", changeset: changeset
    end

    def create(conn, %{"topic" => topic}) do 
        ## want to make a change to the database
        changeset = Topic.changeset(%Topic{}, topic)
        ## this inserts into the database for us
        Repo.insert(changeset)
    end 
end 
