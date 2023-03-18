sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'dmr2935.salesorders2935',
            componentId: 'ItemsSrvObjectPage',
            entitySet: 'ItemsSrv'
        },
        CustomPageDefinitions
    );
});