package com.example;

import com.microsoft.azure.functions.ExecutionContext;
import com.microsoft.azure.functions.HttpMethod;
import com.microsoft.azure.functions.HttpRequestMessage;
import com.microsoft.azure.functions.HttpResponseMessage;
import com.microsoft.azure.functions.HttpStatus;
import com.microsoft.azure.functions.annotation.AuthorizationLevel;
import com.microsoft.azure.functions.annotation.FunctionName;
import com.microsoft.azure.functions.annotation.HttpTrigger;

import java.util.Optional;

/**
 * Azure Functions with HTTP Trigger.
 */
public class Function {

    @FunctionName("BEName")
    public HttpResponseMessage run(
        @HttpTrigger(
            name = "req",
            methods = { HttpMethod.GET, HttpMethod.POST },
            authLevel = AuthorizationLevel.ANONYMOUS
        )
        HttpRequestMessage<Optional<String>> request,
        final ExecutionContext context
    ) {

        context.getLogger().info("Java HTTP trigger processed a request.");

        String id = request.getQueryParameters().get("id");

        if (id == null || id.isEmpty()) {
            return request
                .createResponseBuilder(HttpStatus.BAD_REQUEST)
                .body("Missing 'id' query parameter")
                .build();
        }

        String envVarName = "BE_NAME_" + id.toUpperCase();
        String name = System.getenv(envVarName);

        if (name == null) {
            return request
                .createResponseBuilder(HttpStatus.NOT_FOUND)
                .body("Environment variable " + envVarName + " not found")
                .build();
        }

        return request
            .createResponseBuilder(HttpStatus.OK)
            .body(name)
            .build();
    }
}
