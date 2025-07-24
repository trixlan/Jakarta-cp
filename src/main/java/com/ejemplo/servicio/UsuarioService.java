package com.ejemplo.servicio;
import java.util.List;

import com.ejemplo.modelo.Usuario;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Stateless
public class UsuarioService {
    @PersistenceContext(unitName = "miPU")
    private EntityManager em;

    public void crear(Usuario usuario) {
        em.persist(usuario);
    }

    public Usuario buscarPorId(Long id) {
        return em.find(Usuario.class, id);
    }

    public List<Usuario> buscarTodos() {
        return em.createQuery("SELECT u FROM Usuario u", Usuario.class).getResultList();
    }
}
