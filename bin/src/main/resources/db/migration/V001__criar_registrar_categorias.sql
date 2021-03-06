-- Table: public.categoria

-- DROP TABLE public.categoria;

CREATE TABLE public.categoria
(
    id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    nome character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT tb_cateoria_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

  INSERT INTO public.categoria(nome) values ('Lazer');
  INSERT INTO public.categoria(nome) values ('Alimentação');
  INSERT INTO public.categoria(nome) values ('Supermercado');
  INSERT INTO public.categoria(nome) values ('Farmácia');
  INSERT INTO public.categoria(nome) values ('Outros');
  