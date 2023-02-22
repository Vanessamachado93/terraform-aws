resource "aws_s3_bucket" "mybucket" {
  count = 2
  bucket = "ed-my-bucket-${count.index}"
  # bucket =var.name   #"ed-my-bucket" - o nome do bucket fica guardado dentro da varivel
  tags = {
    "environment" = "dev"
  }
  
}

#Abre o terminal e executa
#terraform init
#terraform validate(verifica se o Hcl esta bem construido)
#terraform fmt (valida se esta alinhado corretamente)
#terraform plan (pasa o resumo do que vamos criar no terraform)
# terraform aplay (pra criar o bucket e dá o yes)
#terraform destroy (remove o que criamos, tbm faz um plan e pedi a validacao)
# terraform destroy --auto-aprove (sem a interaçao) 