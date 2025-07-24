package com.ejemplo.rest;
import java.util.List;

import com.ejemplo.modelo.Usuario;
import com.ejemplo.servicio.UsuarioService;
import jakarta.inject.Inject;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

@Path("/usuarios")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class UsuarioResource {
    @Inject
    private UsuarioService usuarioService;

    @POST
    public Response crearUsuario(Usuario usuario) {
        usuarioService.crear(usuario);
        return Response.status(Response.Status.CREATED).build();
    }

    // ✅ GET /usuarios/{id}
    @GET
    @Path("/{id}")
    public Response obtenerUsuario(@PathParam("id") Long id) {
        Usuario usuario = usuarioService.buscarPorId(id);
        if (usuario != null) {
            return Response.ok(usuario).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }

    // ✅ GET /usuarios
    @GET
    public List<Usuario> listarUsuarios() {
        return usuarioService.buscarTodos();
    }
}
