require 'soap/wsdlDriver'

wsdl_url = 'http://www.webservicex.net/WeatherForecast.asmx?wsdl'

proxy = SOAP::WSDLDriverFactory.new(wsdl_url).create_rpc_driver
weather_info = proxy.GetWeatherByZipCode('ZipCode' => '44124')

