package com.algaworks.algamoney.api.repository.lancamento;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.algaworks.algamoney.api.dto.LancamentoEstatisticaCategoriaDTO;
import com.algaworks.algamoney.api.dto.LancamentoEstatisticaDiaDTO;
import com.algaworks.algamoney.api.dto.LancamentoEstatisticaPessoaDTO;
import com.algaworks.algamoney.api.model.Lancamento;
import com.algaworks.algamoney.api.repository.filter.LancamentoFilter;
import com.algaworks.algamoney.api.repository.projection.LancamentoResumo;

public interface LancamentoRepositoryQuery {

	public Page<Lancamento> filtrar(LancamentoFilter lancamentoFilter, Pageable pageable);

	public Page<LancamentoResumo> resumir(LancamentoFilter lancamentoFilter, Pageable pageable);
	
	public List<LancamentoEstatisticaCategoriaDTO> listarEstatisticaCategoria(LocalDate mesReferencia);

	public List<LancamentoEstatisticaDiaDTO> listarEstatisticaDia(LocalDate mesReferencia);

	public List<LancamentoEstatisticaPessoaDTO> listarEstatisticaPessoa(LocalDate dataInicial, LocalDate dataFinal);

}
