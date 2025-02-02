class Server from HTTPLib_Server

	init()

	func route cURL,cCode
		# **Support anonymous functions - Also support normal Ring code**
		if ! substr(cCode,"(")
			cCode += " ()"
		ok
		return wGet(cURL,cCode)

	func response 
		pTempObj = new Response
		pTempObj.pObject = HTTPLib_Server_response(pObject)
		return pTempObj

	func request 
		pTempObj = new Request
		pTempObj.pObject = HTTPLib_Server_request(pObject)
		return pTempObj

	func setContent p1,p2
		return response().set_Content(p1,p2)

class Response from HTTPLib_Response

	func setContent p1,p2
		return set_content(p1,p2)

class Request from HTTPLib_Request

class Client from HTTPLib_Client