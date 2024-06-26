# Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio.

  SELECT *,
	  AVG(consultas.valor) AS valor_medio
	  FROM consultas
	  WHERE YEAR(data_hora) = 2020
	  AND convenio_id IS NOT NULL;

# Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta.

	
ALTER TABLE internacoes CHANGE data_entrada data_alta DATE;
ALTER TABLE internacoes CHANGE data_saida data_prevista_alta DATE;
  SELECT * FROM internacoes
	  WHERE  data_prevista_alta < data_alta;

# Receituário completo da primeira consulta registrada com receituário associado.

# Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio).

# Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta.

# Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.

# Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta.

# Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”.

# Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou.

# Todos os médicos que tenham "Gabriel" no nome. 

# Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação.

# Observação 1: se necessário, inclua novos registros no banco de dados para testar adequadamente.  

# Observação 2: podem ser úteis as funções de data do MySQL, 
-- como DATEDIFF(data1, data2) para número de dias entre duas datas, CURDATE() ou NOW() para data atual, DATE(dataehora) para extrair a data de um “datetime”, YEAR(data) para o ano de uma data, TIMESTAMPDIFF(YEAR, data1, data2) para número de anos entre duas datas, entre outras. 
-- Consulte a documentação do MySQL (“Date and Time Functions”) para mais informações.
