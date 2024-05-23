
package domain;

import java.util.Date;

import javax.persistence.Entity;

import org.hibernate.validator.constraints.NotBlank;

@Entity

public class Curso extends DomainEntity {

	private String	titulo;
	private Date	fechaini;
	private Date	fechafin;
	private String	diaSemana;
	private int		hora;
	private String	nivel;


	@NotBlank
	public String getTitulo() {
		return this.titulo;
	}
	public void setTitulo(final String titulo) {
		this.titulo = titulo;
	}

	public Date getFechaini() {
		return this.fechaini;
	}

	public void setFechaini(final Date fechaini) {
		this.fechaini = fechaini;
	}

	public Date getFechafin() {
		return this.fechafin;
	}

	public void setFechafin(final Date fechafin) {
		this.fechafin = fechafin;
	}

	@NotBlank
	public String getDiaSemana() {
		return this.diaSemana;
	}
	public void setDiaSemana(final String diaSemana) {
		this.diaSemana = diaSemana;
	}

	public int getHora() {
		return this.hora;
	}
	public void setHora(final int hora) {
		this.hora = hora;
	}

	public String getNivel() {
		return this.nivel;
	}
	public void setNivel(final String nivel) {
		this.nivel = nivel;
	}

}