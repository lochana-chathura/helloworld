import ballerina/http;
import ballerina/io;
import ballerina/log;
import ballerina/lang.runtime;

service / on new http:Listener(9090) {

    // This function responds with `string` value `Hello, World!` to HTTP GET requests.
    resource function get greeting12() returns string {
        foreach int i in 1...60 {
            io:println("io:println count: ", i);
            log:printInfo("log:printInfo count " + i.toString());
            runtime:sleep(1);
        }
        
        return "Hello, World12!";
    }
}
