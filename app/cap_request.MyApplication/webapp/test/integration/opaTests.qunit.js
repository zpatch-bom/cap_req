sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'caprequest/MyApplication/test/integration/FirstJourney',
		'caprequest/MyApplication/test/integration/pages/RequestsList',
		'caprequest/MyApplication/test/integration/pages/RequestsObjectPage'
    ],
    function(JourneyRunner, opaJourney, RequestsList, RequestsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('caprequest/MyApplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRequestsList: RequestsList,
					onTheRequestsObjectPage: RequestsObjectPage
                }
            },
            opaJourney.run
        );
    }
);