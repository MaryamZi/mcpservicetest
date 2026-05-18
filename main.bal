import ballerina/mcp;

configurable int port = 9090;

listener mcp:Listener mcpListener = new (port);

@mcp:ServiceConfig {
    info: {
        name: "WeatherService",
        version: "1.0.0"
    }
}
service mcp:Service /mcp on mcpListener {
    # + return - decimal
    remote function getWeather() returns decimal {
        return 35;
    }

}
