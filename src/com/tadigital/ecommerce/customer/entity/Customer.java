package com.tadigital.ecommerce.customer.entity;

//ENTITY/BEAN/POJO/MODEL CLASS
public class Customer {
	//PROPERTIES
	private int id;
	private String Name;
	private String lastName;
	private String email;
	private String password;
	private String firstnameName;
	private String gender;
	private String address;
	private String city;
	private String zip;
	private String state;
	private String country;
	private String contact;
	
	
	public Customer() {
	}
	public Customer(int id, String Name, String email, String password) {
		this.id = id;
		this.Name = Name;
		this.email = email;
		this.password = password;
	}
	
	//GETTER OR ACCESSOR METHODS
	public int getId() {
		return id;
	}
	public String getName() {
		return Name;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	
	//SETTER OR MUTATOR METHODS
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String firstName) {
		this.Name = firstName;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", Name=" + Name + ", lastName=" + lastName + ", email=" + email + ", password="
				+ password + ", firstnameName=" + firstnameName + ", gender=" + gender + ", address=" + address
				+ ", city=" + city + ", zip=" + zip + ", state=" + state + ", country=" + country + ", contact="
				+ contact + "]";
	}
	
	
}