package com.redhat.serverless;

import org.jboss.logging.Logger;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/")
public class GreetingResource {

    private static final Logger LOG = Logger.getLogger(GreetingResource.class);

    @GET
    @Path("/hello")
    public Response hello() {
        return Response.ok("Greetings from Quarkus!").build();
    }

    @POST
    public Response event(String event) {
        LOG.info("-----> " + event + " <-----");
        return Response.ok().build();
    }
}