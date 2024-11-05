/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cadastroee.model;

import jakarta.persistence.Basic;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQueries;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import jakarta.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

/**
 *
 * @author Eross
 */
@Entity
@Table(name = "PessoaJuridica")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PessoaJuridica.findAll", query = "SELECT p FROM PessoaJuridica p"),
    @NamedQuery(name = "PessoaJuridica.findByIDPessoaJuridica", query = "SELECT p FROM PessoaJuridica p WHERE p.iDPessoaJuridica = :iDPessoaJuridica"),
    @NamedQuery(name = "PessoaJuridica.findByCnpj", query = "SELECT p FROM PessoaJuridica p WHERE p.cnpj = :cnpj")})
public class PessoaJuridica implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID_PessoaJuridica")
    private Integer iDPessoaJuridica;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 18)
    @Column(name = "CNPJ")
    private String cnpj;
    @JoinColumn(name = "ID_Pessoa", referencedColumnName = "ID_Pessoa")
    @ManyToOne(optional = false)
    private Pessoa iDPessoa;

    public PessoaJuridica() {
    }

    public PessoaJuridica(Integer iDPessoaJuridica) {
        this.iDPessoaJuridica = iDPessoaJuridica;
    }

    public PessoaJuridica(Integer iDPessoaJuridica, String cnpj) {
        this.iDPessoaJuridica = iDPessoaJuridica;
        this.cnpj = cnpj;
    }

    public Integer getIDPessoaJuridica() {
        return iDPessoaJuridica;
    }

    public void setIDPessoaJuridica(Integer iDPessoaJuridica) {
        this.iDPessoaJuridica = iDPessoaJuridica;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public Pessoa getIDPessoa() {
        return iDPessoa;
    }

    public void setIDPessoa(Pessoa iDPessoa) {
        this.iDPessoa = iDPessoa;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (iDPessoaJuridica != null ? iDPessoaJuridica.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PessoaJuridica)) {
            return false;
        }
        PessoaJuridica other = (PessoaJuridica) object;
        if ((this.iDPessoaJuridica == null && other.iDPessoaJuridica != null) || (this.iDPessoaJuridica != null && !this.iDPessoaJuridica.equals(other.iDPessoaJuridica))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "cadastroee.model.PessoaJuridica[ iDPessoaJuridica=" + iDPessoaJuridica + " ]";
    }
    
}
