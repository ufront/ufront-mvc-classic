package ufront.web.routing;
import ufront.web.routing.RouteCollection;
import ufront.web.HttpContext;
import ufront.web.IHttpSessionState;
import ufront.web.HttpResponse;
import ufront.web.HttpRequest;

/** Encapsulates information about an HTTP request that matches a defined route. */
class RequestContext {
	/** Gets information about the HTTP request. */
	public var httpContext(default, null) : HttpContext;

	/** Gets information about the requested route. */
	public var routeData(default, null) : RouteData;   
	
 	public var request(default, null) : HttpRequest;
	public var response(default, null) : HttpResponse;
	public var session(default, null) : IHttpSessionState;
	public var routes(default, null) : RouteCollection;
	
	public function new(httpContext : HttpContext, routeData : RouteData, routes : RouteCollection)
	{
		this.httpContext = httpContext;
		this.routeData = routeData;           
		
		this.request = httpContext.request;
		this.response = httpContext.response;        
		this.session = httpContext.session;      
		
		this.routes = routes;
	}
}