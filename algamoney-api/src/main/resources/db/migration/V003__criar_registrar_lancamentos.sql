-- Table: public.lancamento

-- DROP TABLE public.lancamento;

CREATE TABLE public.lancamento
(
	id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	descricao character varying(50) COLLATE pg_catalog."default",
	data_vencimento date,
	data_pagamento date,
	valor double precision,
	observacao character varying(100) COLLATE pg_catalog."default",
	tipo character varying(20) COLLATE pg_catalog."default",
	id_categoria bigint NOT NULL,
	id_pessoa bigint NOT NULL,
	ativo boolean,
    CONSTRAINT tb_lancamento_pkey PRIMARY KEY (id),
	CONSTRAINT lancamento_idCategoria FOREIGN KEY (id_categoria)
	REFERENCES public.categoria (id) MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION,
	CONSTRAINT lancamento_idPessoa FOREIGN KEY (id_pessoa)
	REFERENCES public.pessoa (id) MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION	
    
)

TABLESPACE pg_default;

ALTER TABLE public.lancamento
    OWNER to postgres;
    
  INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa) values ('descrição', '2021-04-13', '2021-04-14',10.50, 'observação', 'DESPESA', 1, 1);
  INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa) values ('descrição', '2021-04-13', '2021-04-14',11.50, 'observação', 'DESPESA', 2, 2);
  INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa) values ('descrição', '2021-04-13', '2021-04-14',12.50, 'observação', 'DESPESA', 3, 3);
  INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa) values ('descrição', '2021-04-13', '2021-04-14',13.50, 'observação', 'DESPESA', 4, 4);
  INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa) values ('descrição', '2021-04-13', '2021-04-14',14.50, 'observação', 'DESPESA', 5, 5);
  INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa) values ('descrição', '2021-04-13', '2021-04-14',15.50, 'observação', 'RECEITA', 1, 6);
  INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa) values ('descrição', '2021-04-13', '2021-04-14',16.50, 'observação', 'RECEITA', 2, 7);
  INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa) values ('descrição', '2021-04-13', '2021-04-14',17.50, 'observação', 'RECEITA', 3, 8);
  INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa) values ('descrição', '2021-04-13', '2021-04-14',18.50, 'observação', 'RECEITA', 4, 9);
  INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, id_categoria, id_pessoa) values ('descrição', '2021-04-13', '2021-04-14',19.50, 'observação', 'RECEITA', 5, 10);
