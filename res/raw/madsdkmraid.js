<script>
    window.mraid_init = function()
    {
        consoleLog('mraid_init');

        var mraid = window.mraid = {};

        mraid.getVersion = function(){
            return "2.0";
        };

        mraid.getState = function(){
            consoleLog('getState');
            return jsInterface.getState();
        };

        mraid.addEventListener = function(event, handler){
            consoleLog('addEvent_Listener_event:'+event+'_handler:'+handler);
            if(!mraid.handlers)
                mraid.handlers = {};

            if(!mraid.handlers[event])
                mraid.handlers[event] = [];

            for(var i=0; i < mraid.handlers[event].length; i++){
                if(mraid.handlers[event][i] === handler)
                    return;
            }

            mraid.handlers[event].push(handler);
        };

        mraid.fireEvent = function(event, variable, action){
            consoleLog('Fire_event_'+event+'_variable: ' + variable + '_action: ' + action);
            if(!mraid.handlers)
                return;

            var eventHandlers = mraid.handlers[event];
            if(eventHandlers)
                for(var i = 0;i < eventHandlers.length; i++){
                    eventHandlers[i](variable, action);
                }
        };

        mraid.removeEventListener = function(event, handler){
            consoleLog('removeEvent_Listener_event: ' +event+'_handler:' + handler);
            if(!mraid.handlers)
                            mraid.handlers = {};

                        if(!mraid.handlers[event])
                            mraid.handlers[event] = [];

                        mraid.handlers[event].pop(handler);
        }

        mraid.supportedFeatures = {};

        mraid.setSupportedFeatures = function(jsonString){
            self.supportedFeatures = JSON.parse(jsonString);
        }

        mraid.expand = function(){
            consoleLog('expand');
            jsInterface.expand();
        };
        mraid.useCustomClose = function(isCustomClose){
            consoleLog('customClose:'+ isCustomClose);
            jsInterface.useCustomClose();
        }
        mraid.setExpandProperties = function(properties){
            consoleLog('setExpandProperties');
            var str = JSON.stringify(properties);
            consoleLog(str);
            jsInterface.setExpandProperties(str);
        };
        mraid.close = function(){
            consoleLog('close');
            jsInterface.close();
        };

        mraid.supports = function(feat){
            consoleLog('supports:'+feat);
            return true;
        }

        mraid.getCurrentPosition = function(){
            consoleLog('getCurrentPosition');
            var data = JSON.parse(jsInterface.getCurrentPosition());
            return data;
        }

        mraid.getDefaultPosition =function(){
            consoleLog('getDefaultPosition');
            var data = JSON.parse(jsInterface.getDefaultPosition());
            return data;
        }

        mraid.getExpandProperties =function(){
            consoleLog('getExpandProperties');
            var data = JSON.parse(jsInterface.getExpandProperties());
            return data;
        }
        mraid.getMaxSize =function(){
            consoleLog('getMaxSize');
            var data = JSON.parse(jsInterface.getMaxSize());
            return data;
        }
        mraid.getPlacementType =function(){
            consoleLog('getPlacementType');
            return jsInterface.getPlacementType();
        }
        mraid.getResizeProperties =function(){
            consoleLog('getResizeProperties');
            var data = JSON.parse(jsInterface.getResizeProperties());
            return data;
        }
        mraid.getScreenSize =function(){
            consoleLog('getScreenSize');
            var data = JSON.parse(jsInterface.getScreenSize());
            return data;
        }
        mraid.isViewable =function(){
            consoleLog('isViewable');
            return jsInterface.isViewable();
        }
        mraid.open =function(url){
            consoleLog('open :'+url);
            jsInterface.open(url);
        }

        mraid.resize =function(){
            consoleLog('resize');
            jsInterface.resize();
        }

        mraid.setResizeProperties =function(properties){
            consoleLog('setResizeProperties');
            var str = JSON.stringify(properties);
            consoleLog(str);
            jsInterface.setResizeProperties(str)
        }

        mraid.createCalendarEvent = function(properties){
            consoleLog('createCalendarEvent');
            var str = JSON.stringify(properties);
            consoleLog(str);
            jsInterface.createCalendarEvent(str)
        }

        mraid.playVideo =function(url){
            consoleLog('playVideo');
            jsInterface.playVideo(url);
        }

        mraid.storePicture =function(url){
            consoleLog('storePicture');
            jsInterface.storePicture(url);
        }

        mraid.getOrientationProperties = function(){
            consoleLog('getOrientationProperties');
            var data = JSON.parse(jsInterface.getOrientationProperties());
            return data;
        }

        mraid.setOrientationProperties = function(properties){
            consoleLog('setOrientationProperties');
            var str = JSON.stringify(properties);
            jsInterface.setOrientationProperties(str)
        }


        mraid.callNative = function(command){
            var iframe = document.createElement("IFRAME");
            iframe.setAttribute("src", "mraid://" + command);
            document.documentElement.appendChild(iframe);
            iframe.parentNode.removeChild(iframe);
            iframe = null;
        };
    };

    mraid_init();

    function consoleLog(log){
        jsInterface.log(log);
    }

</script>