 Como o ambiente vai crescer nós não vamos ficar presos a uma região.
 
 Podemos receber uma demanda: Na qual precise expandir as máquinas de desenvolvimento, precise criar um database, só que o cliente está em outra região da AWS. 

A idéia seria criar um novo provider com uma nova região, exemplo "us east 2" ou que é outra região que eu vou trabalhar, que foi encomenda do meu cliente.

Então será criado um “alias =us-east-2", outro security group e outra imagem "AMI" deve ser referenciada também.

Para os servidores com mais de um nó será criado um load balance e em períodos de alta demanda podemos criar um auto-scalling.