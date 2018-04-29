defmodule Discuss.Topic do 
    use Discuss.Web, :model

    ## model schema 
    schema "topics" do 
        field :title, :string 
    end
    
    
    ## changeset // validation
    def changeset(struct, params \\ %{}) do 
        struct 
        |> cast(params, [:title])
        |> validate_required([:title])
    end 



end 
