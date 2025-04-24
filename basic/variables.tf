variable "file_content" {
  default = "Esse é o valor padrão da variável file_content"
  description = "O conteúdo do arquivo a ser criado"
  type        = string
}

variable "var_bool" {
  default = true
  description = "Um valor booleano de exemplo"
  type        = bool
}

variable "fruits" {
  default = ["banana", "maçã", "laranja"]
  description = "Uma lista de frutas"
  type        = list(string)
}

variable "person_map" {
  default = {
    name = "João"
    age  = 30
  }
  description = "Um mapa com informações de uma pessoa"
  type        = map(string) 
}

variable "person_tuple" {
  default = ["Maria", 25]
  description = "Uma tupla com informações de uma pessoa"
  type        = tuple([string, number]) 
}

variable "person_object" {
  default = {
    name = "Carlos"
    age  = 40
  }
  description = "Um objeto com informações de uma pessoa"
  type        = object({
    name = string
    age  = number
  })
  
}