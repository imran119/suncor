//@ui5-bundle com/suncor/assetlist/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"com/suncor/assetlist/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("com.suncor.assetlist.Component",{metadata:{manifest:"json"}})});
},
	"com/suncor/assetlist/i18n/i18n.properties":'appTitle=Asset List App\n\n',
	"com/suncor/assetlist/i18n/i18n_en.properties":'appTitle=Asset List App\n',
	"com/suncor/assetlist/i18n/i18n_en_US.properties":'appTitle=Asset List App\n\n',
	"com/suncor/assetlist/manifest.json":'{"_version":"1.40.0","sap.app":{"id":"com.suncor.assetlist","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap-ux/fiori-elements-writer:lrop","version":"0.3.0"},"dataSources":{"mainService":{"uri":"catalog/","type":"OData","settings":{"annotations":["annotation"],"localUri":"localService/metadata.xml","odataVersion":"4.0"}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.101.0","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"com.suncor.assetlist.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"MainEntityList","target":"MainEntityList"},{"pattern":"MainEntity({key}):?query:","name":"MainEntityObjectPage","target":"MainEntityObjectPage"},{"pattern":"MainEntity({key})/lin({key2}):?query:","name":"ZengData_LinObjectPage","target":"ZengData_LinObjectPage"}],"targets":{"MainEntityList":{"type":"Component","id":"MainEntityList","name":"sap.fe.templates.ListReport","options":{"settings":{"entitySet":"MainEntity","variantManagement":"Page","navigation":{"MainEntity":{"detail":{"route":"MainEntityObjectPage"}}}}}},"MainEntityObjectPage":{"type":"Component","id":"MainEntityObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"entitySet":"MainEntity","sectionLayout":"Tabs","navigation":{"lin":{"detail":{"route":"ZengData_LinObjectPage"}}}}}},"ZengData_LinObjectPage":{"type":"Component","id":"ZengData_LinObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"entitySet":"ZengData_Lin","sectionLayout":"Tabs"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"}}'
}});
