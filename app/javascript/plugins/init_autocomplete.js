import places from 'places.js';

const initAutocomplete = () => {
  const userAddressInput = document.getElementById('user_address');
  const boatAddressInput = document.getElementById('boat_address');
  if (userAddressInput) {
    places({ container: userAddressInput });
  }
  if (boatAddressInput) {
    places({ container: boatAddressInput });
  }
};

export { initAutocomplete };
