# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160720190055) do

  create_table "anexo_relatorios_colaborador", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "path"
    t.integer  "relatorio_colaborador_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["relatorio_colaborador_id"], name: "index_anexo_relatorios_colaborador_on_relatorio_colaborador_id", using: :btree
  end

  create_table "cidades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "estado_id"
    t.string   "tipo_localidade"
    t.string   "municipio"
    t.string   "localidade"
    t.string   "codigo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["estado_id"], name: "fk_rails_d51899ba78", using: :btree
  end

  create_table "colaboradores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pessoa_id"
    t.integer  "tipo_colaborador_id"
    t.boolean  "habilitado"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "colaboradores_grupos_demandas", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "grupo_demandas_id", null: false
    t.integer "colaborador_id",    null: false
  end

  create_table "demandas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pessoa_id"
    t.integer  "endereco_id"
    t.integer  "estado"
    t.datetime "data_fim"
    t.string   "descricao"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "grupo_demandas_id"
    t.index ["endereco_id"], name: "fk_rails_ed8df0481a", using: :btree
    t.index ["pessoa_id"], name: "fk_rails_2fbc0ec8b2", using: :btree
  end

  create_table "enderecos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "cidade_id"
    t.string   "numero"
    t.string   "logradouro"
    t.string   "complemento"
    t.string   "cep"
    t.integer  "tipo_localidade_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["cidade_id"], name: "fk_rails_56ba484db1", using: :btree
  end

  create_table "estados", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome",       limit: 20
    t.integer  "pais_id"
    t.string   "sigla",      limit: 2
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["pais_id"], name: "fk_rails_04cf8c14b4", using: :btree
  end

  create_table "grupos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "descricao"
    t.string   "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos_demandas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grupos_regras", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "grupo_id", null: false
    t.integer "regra_id", null: false
    t.index ["grupo_id", "regra_id"], name: "index_grupos_regras_on_grupo_id_and_regra_id", using: :btree
    t.index ["regra_id", "grupo_id"], name: "index_grupos_regras_on_regra_id_and_grupo_id", using: :btree
  end

  create_table "paises", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.date     "data_nascimento"
    t.string   "email"
    t.string   "telefone"
    t.string   "celular"
    t.integer  "endereco_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["endereco_id"], name: "fk_rails_5ed4cd9168", using: :btree
  end

  create_table "regras", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "descricao"
    t.string   "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relatorios_colaborador", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "descricao"
    t.integer  "demanda_id"
    t.integer  "colaborador_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["colaborador_id"], name: "index_relatorios_colaborador_on_colaborador_id", using: :btree
    t.index ["demanda_id"], name: "index_relatorios_colaborador_on_demanda_id", using: :btree
  end

  create_table "tipos_colaborador", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "pessoa_id"
    t.string   "login"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["pessoa_id"], name: "fk_rails_ca91aa5f28", using: :btree
  end

  add_foreign_key "anexo_relatorios_colaborador", "relatorios_colaborador"
  add_foreign_key "cidades", "estados"
  add_foreign_key "demandas", "enderecos"
  add_foreign_key "demandas", "pessoas"
  add_foreign_key "enderecos", "cidades"
  add_foreign_key "estados", "paises"
  add_foreign_key "pessoas", "enderecos"
  add_foreign_key "relatorios_colaborador", "colaboradores"
  add_foreign_key "relatorios_colaborador", "demandas"
  add_foreign_key "usuarios", "pessoas"
end
