sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'dmr2935/salesorders2935/test/integration/FirstJourney',
		'dmr2935/salesorders2935/test/integration/pages/SalesSrvList',
		'dmr2935/salesorders2935/test/integration/pages/SalesSrvObjectPage',
		'dmr2935/salesorders2935/test/integration/pages/ItemsSrvObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesSrvList, SalesSrvObjectPage, ItemsSrvObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('dmr2935/salesorders2935') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesSrvList: SalesSrvList,
					onTheSalesSrvObjectPage: SalesSrvObjectPage,
					onTheItemsSrvObjectPage: ItemsSrvObjectPage
                }
            },
            opaJourney.run
        );
    }
);