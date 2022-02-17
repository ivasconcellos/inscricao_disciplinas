json.extract! curso, :id, :nome, :ativo, :local_id, :created_at, :updated_at
json.url curso_url(curso, format: :json)
