package com.ejemplo.config;

import com.ejemplo.modelo.Usuario;
import jakarta.annotation.PostConstruct;
import jakarta.ejb.Singleton;
import jakarta.ejb.Startup;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Startup
@Singleton
public class DataLoader {

    @PersistenceContext(unitName = "miPU")
    private EntityManager em;

    @PostConstruct
    public void init() {
        if (em.createQuery("SELECT COUNT(u) FROM Usuario u", Long.class).getSingleResult() == 0) {
            Usuario u1 = new Usuario();
            u1.setNombre("Gerardo");
            u1.setEdad(35);

            Usuario u2 = new Usuario();
            u2.setNombre("Juan");
            u2.setEdad(28);

            em.persist(u1);
            em.persist(u2);

            System.out.println("✅ Usuarios precargados: Gerardo y Juan");
        }
    }
}
