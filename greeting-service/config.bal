import ballerinax/mysql;

configurable string name = "Renuka";
configurable string message = "Hello World!";
configurable int count = ?;
configurable MyType myType = {
    name: "Renuka",
    message: "Hello World!",
    count: 10
};

type MyType record {
    string name;
    string message = "Hello World!";
    int count?;
    *mysql:Options;
};
