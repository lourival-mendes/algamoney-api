package com.algaworks.algamoney.api.config.property;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@ConfigurationProperties("algamoney")
public class AlgaMoneyApiProperty {

	private String originPermitida = "https://lourival-mendes-algamoney-ui.herokuapp.com";
	private final Seguranca seguranca = new Seguranca();

	@Setter
	public static class Seguranca {

		private boolean enableHttps;

		public boolean isEnableHttps() {
			return enableHttps;
		}

	}

}
