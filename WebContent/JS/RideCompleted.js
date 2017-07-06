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

function AutocompleteDirectionsHandler(map) {
	this.map = map;
	this.originPlaceId = null;
	this.destinationPlaceId = null;
	this.travelMode = 'DRIVING';
	var originInput = document.getElementById('origin-input');
	var destinationInput = document.getElementById('destination-input');
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
          distance = console.log(response);
          document.getElementById("costEstimate").value = ((response.rows[0].elements[0].distance.value)/1000)*10;
          document.getElementById("timeEstimate").value = (response.rows[0].elements[0].duration.text);
          
      }
  });
}





var __slice = [].slice;

(function($, window) {
  var Starrr;

  Starrr = (function() {
    Starrr.prototype.defaults = {
      rating: void 0,
      numStars: 5,
      change: function(e, value) {}
    };

    function Starrr($el, options) {
      var i, _, _ref,
        _this = this;

      this.options = $.extend({}, this.defaults, options);
      this.$el = $el;
      _ref = this.defaults;
      for (i in _ref) {
        _ = _ref[i];
        if (this.$el.data(i) != null) {
          this.options[i] = this.$el.data(i);
        }
      }
      this.createStars();
      this.syncRating();
      this.$el.on('mouseover.starrr', 'span', function(e) {
        return _this.syncRating(_this.$el.find('span').index(e.currentTarget) + 1);
      });
      this.$el.on('mouseout.starrr', function() {
        return _this.syncRating();
      });
      this.$el.on('click.starrr', 'span', function(e) {
    if (_this.options.rating === _this.$el.find('span').index(e.currentTarget)+1){
		return false;
	}
	return _this.setRating(_this.$el.find('span').index(e.currentTarget) + 1);
});
      this.$el.on('starrr:change', this.options.change);
    }

    Starrr.prototype.createStars = function() {
      var _i, _ref, _results;

      _results = [];
      for (_i = 1, _ref = this.options.numStars; 1 <= _ref ? _i <= _ref : _i >= _ref; 1 <= _ref ? _i++ : _i--) {
        _results.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"));
      }
      return _results;
    };

    Starrr.prototype.setRating = function(rating) {
      if (this.options.rating === rating) {
        rating = void 0;
      }
      this.options.rating = rating;
      this.syncRating();
      return this.$el.trigger('starrr:change', rating);
    };

    Starrr.prototype.syncRating = function(rating) {
      var i, _i, _j, _ref;

      rating || (rating = this.options.rating);
      if (rating) {
        for (i = _i = 0, _ref = rating - 1; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
          this.$el.find('span').eq(i).removeClass('glyphicon-star-empty').addClass('glyphicon-star');
        }
      }
      if (rating && rating < 5) {
        for (i = _j = rating; rating <= 4 ? _j <= 4 : _j >= 4; i = rating <= 4 ? ++_j : --_j) {
          this.$el.find('span').eq(i).removeClass('glyphicon-star').addClass('glyphicon-star-empty');
        }
      }
      if (!rating) {
        return this.$el.find('span').removeClass('glyphicon-star').addClass('glyphicon-star-empty');
      }
    };

    return Starrr;

  })();
  return $.fn.extend({
    starrr: function() {
      var args, option;

      option = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
      return this.each(function() {
        var data;

        data = $(this).data('star-rating');
        if (!data) {
          $(this).data('star-rating', (data = new Starrr($(this), option)));
        }
        if (typeof option === 'string') {
          return data[option].apply(data, args);
        }
      });
    }
  });
})(window.jQuery, window);

$(function() {
  return $(".starrr").starrr();
});

$( document ).ready(function() {
      
  $('#stars').on('starrr:change', function(e, value){
    $('#count').html(value);
  });
  
  $('#stars-existing').on('starrr:change', function(e, value){
    $('#count-existing').html(value);
  });
});




