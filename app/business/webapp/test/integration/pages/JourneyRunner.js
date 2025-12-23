sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/ust/business/test/integration/pages/BusinessPartnersList",
	"com/ust/business/test/integration/pages/BusinessPartnersObjectPage"
], function (JourneyRunner, BusinessPartnersList, BusinessPartnersObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/ust/business') + '/test/flp.html#app-preview',
        pages: {
			onTheBusinessPartnersList: BusinessPartnersList,
			onTheBusinessPartnersObjectPage: BusinessPartnersObjectPage
        },
        async: true
    });

    return runner;
});

