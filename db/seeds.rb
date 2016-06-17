# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Activity.destroy_all
Activity.create!([{
  activity_name: "TV Adicional",
  activity_cost: 53.2
},
{
  activity_name: "Decos",
  activity_cost: 48.64
},
{
  activity_name: "PCS",
  activity_cost: 67.64
},
{
  activity_name: "Exts",
  activity_cost: 68.4
},
{
  activity_name: "2da linea",
  activity_cost: 68.4
},
{
  activity_name: "Certificaciones",
  activity_cost: 17.4
},
{
  activity_name: "Recableado",
  activity_cost: 53.2
},
{
  activity_name: "IN x ducto",
  activity_cost: 157.32
},
{
  activity_name: "Cable UTP",
  activity_cost: 42.56
},
{
  activity_name: "Jumper UTP",
  activity_cost: 7.6
}])
Classification.destroy_all

Classification.create!([{
  name: "INST. UN PLAY VIDEO EN DOM. NUEVOS",
  price: 157.32
},
{
  name: "INST. UN PLAY VIDEO EN DOM. CON SERVICIO ACTIVO DE TELEFONIA",
  price: 76
},
{
  name: "INST. UN PLAY VIDEO EN DOM. CON SERVICIO ACTIVO DE INTERNET Y TELEFONIA",
  price: 76
},
{
  name: "INST. UN PLAY VIDEO EN DOM. CON SERVICIO ACTIVO DE INTERNET",
  price: 76
},
{
  name: "INST. UN PLAY INTERNET EN DOM. NUEVOS",
  price: 224.96
},
{
  name: "INST. UN PLAY INTERNET EN DOM. CON SERVICIO ACTIVO DE VIDEO",
  price: 143.64
},
{
  name: "INST. UN PLAY INTERNET EN DOM. CON SERVICIO ACTIVO DE TELEFONIA",
  price: 77.52
},
{
  name: "INST. UN PLAY INTERNET EN DOM. CON SERVICIO ACTIVO DE TELEFONIA Y VIDEO",
  price: 77.52
},
{
  name: "INST. UN PLAY TELEFONIA EN DOM. NUEVOS",
  price: 271.32
},
{
  name: "INST. UN PLAY TELEFONIA EN DOM. CON SERVICIO ACTIVO DE VIDEO",
  price: 190
},
{
  name: "INST. UN PLAY TELEFONIA EN DOM. CON SERVICIO ACTIVO DE INTERNET Y VIDEO",
  price: 136.04
},
{
  name: "INST. UN PLAY TELEFONIA EN DOM. CON SERVICIO ACTIVO DE INTERNET",
  price: 136.04
},
{
  name: "INST. DOS PLAY INTERNET Y VIDEO EN DOM. NUEVOS",
  price: 278.16
},
{
  name: "INST. DOS PLAY INTERNET Y VIDEO EN DOM. CON SERVICIO ACTIVO DE TELEFONIA",
  price: 143.64
},
{
  name: "INST. DOS PLAY INTERNET Y TELEFONIA EN DOM. NUEVOS",
  price: 338.2
},
{
  name: "INST. DOS PLAY INTERNET Y TELEFONIA EN DOM. CON SERVICIO ACTIVO DE VIDEO",
  price: 256.88
},
{
  name: "INST. DOS PLAY VIDEO Y TELEFONIA EN DOM. CON SERVICIO ACTIVO DE INTERNET",
  price: 190
},
{
  name: "INST. DOS PLAY VIDEO Y TELEFONIA EN DOM. NUEVOS",
  price: 324.52
},
{
  name: "INST. TRIPLE PLAY",
  price: 391.4
},
{
  name: "INST. UN PLAY EN DOM. NUEVOS SIN CABLEADO",
  price: 47.88
},
{
  name: "A TELEVISION ADICIONAL",
  price: 53.2
},
{
  name: "B INSTALACION SET-UP BOX",
  price: 48.64
},
{
  name: "C CONFIGURACION PC ADICIONAL",
  price: 67.64
},
{
  name: "D INSTALACION SEGUNDA LINEA TELEFONICA",
  price: 57
},
{
  name: "E INSTALACION EXTENSION ADICIONAL",
  price: 68.4
},
{
  name: "F CERTIFICACION POR ACOMETIDA",
  price: 17.48
},
{
  name: "G R-CABLEADO",
  price: 53.2
},
{
  name: "H INSTALACION POR DUCTOS",
  price: 157.32
},
{
  name: "I TV´S ADICIONALES EN VIAJES EXCLUSIVOS",
  price: 53.2
},
{
  name: "INSTALACION DE CABLE UTP",
  price: 42.56
},
{
  name: "INSTALACION DE JUMPER UTP",
  price: 7.6
}])
