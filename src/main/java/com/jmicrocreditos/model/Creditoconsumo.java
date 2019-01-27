/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jmicrocreditos.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Raimundo Jose
 */
@Entity
@Table(name = "creditoconsumo")
@NamedQueries({
    @NamedQuery(name = "Creditoconsumo.findAll", query = "SELECT c FROM Creditoconsumo c")})
public class Creditoconsumo implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CreditoconsumoPK creditoconsumoPK;
    @Column(name = "funcao")
    private String funcao;
    @Column(name = "contactogestor")
    private String contactogestor;
    @Column(name = "titularconta")
    private String titularconta;
    @Column(name = "nrconta")
    private String nrconta;
    @Column(name = "nomebanco")
    private String nomebanco;
    @Column(name = "urldeclaracaoservico")
    private String urldeclaracaoservico;
    @Column(name = "urlbi")
    private String urlbi;
    @Column(name = "urlextratobancario")
    private String urlextratobancario;
    @Column(name = "urloutro")
    private String urloutro;
    @JoinColumn(name = "idcredito", referencedColumnName = "idcredito", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Credito credito;
    @JoinColumn(name = "idinstituicao", referencedColumnName = "idinstituicao", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Instituicao instituicao;

    public Creditoconsumo() {
    }

    public Creditoconsumo(CreditoconsumoPK creditoconsumoPK) {
        this.creditoconsumoPK = creditoconsumoPK;
    }

    public Creditoconsumo(short idcredito, short idinstituicao) {
        this.creditoconsumoPK = new CreditoconsumoPK(idcredito, idinstituicao);
    }

    public CreditoconsumoPK getCreditoconsumoPK() {
        return creditoconsumoPK;
    }
    public void setCreditoconsumoPK(CreditoconsumoPK creditoconsumoPK) {
        this.creditoconsumoPK = creditoconsumoPK;
    }
    public String getFuncao() {
        return funcao;
    }
    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }
    public String getContactogestor() {
        return contactogestor;
    }
    public void setContactogestor(String contactogestor) {
        this.contactogestor = contactogestor;
    }
    public String getTitularconta() {
        return titularconta;
    }

    public void setTitularconta(String titularconta) {
        this.titularconta = titularconta;
    }

    public String getNrconta() {
        return nrconta;
    }

    public void setNrconta(String nrconta) {
        this.nrconta = nrconta;
    }

    public String getNomebanco() {
        return nomebanco;
    }

    public void setNomebanco(String nomebanco) {
        this.nomebanco = nomebanco;
    }

    public String getUrldeclaracaoservico() {
        return urldeclaracaoservico;
    }

    public void setUrldeclaracaoservico(String urldeclaracaoservico) {
        this.urldeclaracaoservico = urldeclaracaoservico;
    }

    public String getUrlbi() {
        return urlbi;
    }

    public void setUrlbi(String urlbi) {
        this.urlbi = urlbi;
    }

    public String getUrlextratobancario() {
        return urlextratobancario;
    }

    public void setUrlextratobancario(String urlextratobancario) {
        this.urlextratobancario = urlextratobancario;
    }

    public String getUrloutro() {
        return urloutro;
    }

    public void setUrloutro(String urloutro) {
        this.urloutro = urloutro;
    }

    public Credito getCredito() {
        return credito;
    }

    public void setCredito(Credito credito) {
        this.credito = credito;
    }

    public Instituicao getInstituicao() {
        return instituicao;
    }

    public void setInstituicao(Instituicao instituicao) {
        this.instituicao = instituicao;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (creditoconsumoPK != null ? creditoconsumoPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Creditoconsumo)) {
            return false;
        }
        Creditoconsumo other = (Creditoconsumo) object;
        if ((this.creditoconsumoPK == null && other.creditoconsumoPK != null) || (this.creditoconsumoPK != null && !this.creditoconsumoPK.equals(other.creditoconsumoPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jmicrocreditos.model.Creditoconsumo[ creditoconsumoPK=" + creditoconsumoPK + " ]";
    }
    
}
