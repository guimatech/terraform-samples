terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content  = <<EOF
Conteúdo: ${var.file_content}

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
