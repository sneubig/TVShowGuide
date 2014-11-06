App.ShowCollection = Backbone.Collection.extend({
	model: App.ShowModel,
	url: '/shows',

	initialize: function(){
		console.log("New Show Collection")
	}

});