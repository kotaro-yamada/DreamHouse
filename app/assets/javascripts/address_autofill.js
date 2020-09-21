$(document).on('turbolinks:load', function() {
    return $('#buyer_postcode').jpostal({
      postcode: ['#buyer_postcode'],
      address: {
        '#buyer_prefecture_code': '%3',
        '#buyer_address_city': '%4',
        '#buyer_address_street': '%5%6%7',
      },
    });
  });
$(document).on('turbolinks:load', function() {
    return $('seller_postcode').jpostal({
      postcode: ['#seller_postcode'],
      address: {
        '#seller_prefecture_code': '%3',
        '#seller_address_city': '%4',
        '#seller_address_street': '%5%6%7',
      },
  });
});