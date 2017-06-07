var lat;
var lng;

function getLocation() {
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(showPosition);
	}
}

function showPosition(position) {
	lat = position.coords.latitude;
	lng = position.coords.longitude;
}

function openNav() {
	document.getElementById("mySidenav").style.width = "40%";
	document.getElementById("main").style.marginLeft = "250px";
	document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
	document.getElementById("mySidenav").style.width = "0";
	document.getElementById("main").style.marginLeft = "0";
	document.body.style.backgroundColor = "white";
}

function initMap() {
	var map = new google.maps.Map(document.getElementById('map'), {
		mapTypeControl : false,
		center : {
			lat : 17.3850,
			lng : 78.4867
		},
		zoom : 13
	});

	new AutocompleteDirectionsHandler(map);
}

/**
 * @constructor
 */
var originInput;
var destinationInput;
var target ="Hyderabad";

function AutocompleteDirectionsHandler(map) {
	this.map = map;
	this.originPlaceId = null;
	this.destinationPlaceId = null;
	this.travelMode = 'DRIVING';
	originInput = document.getElementById('origin-input');
	destinationInput = document.getElementById('destination-input');
	var modeSelector = document.getElementById('mode-selector');
	this.directionsService = new google.maps.DirectionsService;
	this.directionsDisplay = new google.maps.DirectionsRenderer;
	this.directionsDisplay.setMap(map);

	var originAutocomplete = new google.maps.places.Autocomplete(originInput, {
		placeIdOnly : true
	});
	var destinationAutocomplete = new google.maps.places.Autocomplete(
			destinationInput, {
				placeIdOnly : true
			});

	this.setupClickListener('changemode-walking', 'WALKING');
	this.setupClickListener('changemode-transit', 'TRANSIT');
	this.setupClickListener('changemode-driving', 'DRIVING');

	this.setupPlaceChangedListener(originAutocomplete, 'ORIG');
	this.setupPlaceChangedListener(destinationAutocomplete, 'DEST');

	this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(originInput);
	this.map.controls[google.maps.ControlPosition.TOP_LEFT]
			.push(destinationInput);
	this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(modeSelector);
}

// Sets a listener on a radio button to change the filter type on Places
// Autocomplete.
AutocompleteDirectionsHandler.prototype.setupClickListener = function(id, mode) {
	var radioButton = document.getElementById(id);
	var me = this;
	radioButton.addEventListener('click', function() {
		me.travelMode = mode;
		me.route();
	});
};

AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function(
		autocomplete, mode) {
	var me = this;
	autocomplete.bindTo('bounds', this.map);
	autocomplete.addListener('place_changed', function() {
		var place = autocomplete.getPlace();
		if (!place.place_id) {
			window.alert("Please select an option from the dropdown list.");
			return;
		}
		if (mode === 'ORIG') {
			me.originPlaceId = place.place_id;
		} else {
			me.destinationPlaceId = place.place_id;
		}
		me.route();
	});

};

AutocompleteDirectionsHandler.prototype.route = function() {
	if (!this.originPlaceId || !this.destinationPlaceId) {
		return;
	}
	var me = this;

	this.directionsService.route({
		origin : {
			'placeId' : this.originPlaceId
		},
		destination : {
			'placeId' : this.destinationPlaceId
		},
		travelMode : this.travelMode
	}, function(response, status) {
		if (status === 'OK') {
			me.directionsDisplay.setDirections(response);
			getDropLatitudeLongitude();
			getPickupLatitudeLongitude();
		} else {
			window.alert('Directions request failed due to ' + status);
		}
	});
};

function openNav() {
	document.getElementById("mySidenav").style.width = "30%";
	document.getElementById("main").style.marginRight = "250px";
	document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
	document.getElementById("mySidenav").style.width = "0";
	document.getElementById("main").style.marginRight = "0";
	document.body.style.backgroundColor = "white";
}
var plat;
var plng;
var dlat;
var dlng;

function getPickupLatitudeLongitude() {
	var address = document.getElementById("origin-input").value;
	document.getElementById("source").value =  document.getElementById("origin-input").value;
	geocoder = new google.maps.Geocoder();
	geocoder.geocode({
		'address' : address
	}, function(results, status) {
		plat = results[0].geometry.location.lat();
		plng = results[0].geometry.location.lng();
	});
}

function getDropLatitudeLongitude() {
	var address = document.getElementById("destination-input").value;
	document.getElementById("destination").value =  document.getElementById("destination-input").value;
	geocoder = new google.maps.Geocoder();
	geocoder.geocode({
		'address' : address
	}, function(results, status) {
		dlat = results[0].geometry.location.lat();
		dlng = results[0].geometry.location.lng();
	});
}

function calcDistance() {
	var distance = google.maps.geometry.spherical.computeDistanceBetween(
			new google.maps.LatLng(plat, plng), new google.maps.LatLng(dlat,
					dlng));
	// document.getElementById("distance").value = distance / 1000;
	document.getElementById("costEstimate").value = (((distance / 1000)) );
}

function getDistance()

{
	getLocation();
   //Find the distance
   var distanceService = new google.maps.DistanceMatrixService();
   distanceService.getDistanceMatrix({
      origins: [$("#origin-input").val()],
      destinations: [$("#destination-input").val()],
      travelMode: google.maps.TravelMode.DRIVING,
      unitSystem: google.maps.UnitSystem.METRIC,
      durationInTraffic: true,
      avoidHighways: false,
      avoidTolls: false
  },
  function (response, status) {
      if (status !== google.maps.DistanceMatrixStatus.OK) {
          console.log('Error:', status);
      } else {
    	  originInput = toString(originInput);
    	  destinationInput = toString(destinationInput);
    	  var costPerKm = parseInt(document.getElementById("type").value);
    	  var distance1 = (response.rows[0].elements[0].distance.value)/1000;
    	  document.getElementById("distanceEstimate").value = (distance1)+" Km";
          document.getElementById("costEstimate").value = "Rs." + parseInt(((response.rows[0].elements[0].distance.value)/1000)*costPerKm);
          document.getElementById("timeEstimate").value = (response.rows[0].elements[0].duration.text);
          if(originInput.toLowerCase.contains(target.toLowerCase)   &&  destinationInput.toLowerCase.contains(target.toLowerCase)){
          }else {
        	   
        	  alert("Choose within the vicinity of Hyderabad!!")
          }
      }  
      
  });
}


