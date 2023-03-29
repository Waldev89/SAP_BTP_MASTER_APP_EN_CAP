sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'salesorders/salesorders/test/integration/FirstJourney',
		'salesorders/salesorders/test/integration/pages/salesOrderList',
		'salesorders/salesorders/test/integration/pages/salesOrderObjectPage'
    ],
    function(JourneyRunner, opaJourney, salesOrderList, salesOrderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('salesorders/salesorders') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThesalesOrderList: salesOrderList,
					onThesalesOrderObjectPage: salesOrderObjectPage
                }
            },
            opaJourney.run
        );
    }
);