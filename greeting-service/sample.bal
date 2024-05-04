import ballerina/log;
import ballerina/http;

type Greeting record {
    string 'from;
    string to;
    string message;
};

service / on new http:Listener(8090) {
    resource function get .(@http:Header string x\-jwt\-assertion, string name) returns Greeting {
        log:printInfo("X-JWT-Assertion headers: " + x\-jwt\-assertion);
        Greeting greetingMessage = {"from" : "Choreo", "to" : name, "message" : string`Hello ${name}! Welcome to Choreo!`, "count": count};
        return greetingMessage;
    }
}
