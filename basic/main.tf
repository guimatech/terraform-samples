terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }

    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

data "local_file" "external_source" {
  filename = "datasource.txt"
}

resource "random_pet" "meu_pet" {
  length = 3
  prefix = "Sr."
  separator = " "
}

resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content  = <<EOF
Conteúdo: ${var.file_content}

Conteúdo vindo de um data source: ${data.local_file.external_source.content}

Meu pet: ${random_pet.meu_pet.id}

Valor boolean: ${var.var_bool}
  
Fruits: ${var.fruits[1]}

Name: ${var.person_map["name"]}
Idade: ${var.person_map["age"]}

Name: ${var.person_tuple[0]}
Idade: ${var.person_tuple[1]}

Name: ${var.person_object.name}
Idade: ${var.person_object.age}
EOF 
}

output "name_my_pet" {
  value = "Esse é o nome do meu pet: ${random_pet.meu_pet.id}"
}

output "person" {
  value = var.person
}