# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120612044655) do

  create_table "categorias", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "configuraciones", :force => true do |t|
    t.string   "nombre",     :null => false
    t.string   "valor",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "det_documentos", :force => true do |t|
    t.integer  "cantidad"
    t.integer  "total"
    t.integer  "factura_compra_id"
    t.integer  "guia_compra_id"
    t.integer  "guia_venta_id"
    t.integer  "factura_venta_id"
    t.integer  "producto_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "entidad", :force => true do |t|
    t.string "rut"
    t.string "razon_social"
    t.string "giro"
    t.string "nombre"
    t.string "direccion"
    t.string "comuna"
    t.string "ciudad"
    t.string "telefono"
    t.string "email"
    t.string "contacto"
    t.string "type"
  end

  create_table "factura_compras", :force => true do |t|
    t.integer  "folio"
    t.date     "fecha_emision"
    t.integer  "neto"
    t.integer  "total"
    t.integer  "proveedor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "factura_ventas", :force => true do |t|
    t.integer  "folio"
    t.datetime "fecha_emision"
    t.integer  "neto"
    t.integer  "total"
    t.integer  "cliente_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "pagos", :force => true do |t|
    t.string   "nombre",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "productos", :force => true do |t|
    t.string   "codigo"
    t.text     "descripcion"
    t.integer  "precio"
    t.integer  "costo"
    t.integer  "categoria_id"
    t.integer  "stock_real"
    t.integer  "stock_minimo"
    t.integer  "stock_maximo"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "rol",                    :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
