package com.springapp.mvc;

import java.util.List;

public interface AddressService {

	void createAddress(Address add);

	void deleteAddress(Address add);

	List<Address> getAllAddresses();

	Address getAddressById(Long id);

	void updateAddress(Address address);

}
