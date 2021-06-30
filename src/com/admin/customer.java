package com.admin;

public class customer {

		private int idCustomer;
		private String fname;
		private String lname;
		private String email;
		private String phoneNo;
		private String NICno;
		private String address;
		private String gender;
		private String username;
		private String password;
		
		
		public customer(int idCustomer,String fname,String lname,String email,String phoneNo,String NICno,String address,String gender,String username,String password) {
		
			this.idCustomer = idCustomer;
			this.fname = fname;
			this.lname = lname;
			this.email = email;
			this.phoneNo = phoneNo;
			this.NICno = NICno;
			this.address = address;
			this.gender = gender;
			this.username = username;
			this.password = password;
		}



		public int getidCustomer() {
			return idCustomer;
		}



		public String getfname() {
			return fname;
		}


		public String getlname() {
			return lname;
		}



		public String getemail() {
			return email;
		}



		public String getPhoneNo() {
			return phoneNo;
		}


		public String getNICno() {
			return NICno;
		}


		public String getAddress() {
			return address;
		}


		public String getGender() {
			return gender;
		}


		public String getUsername() {
			return username;
		}


		public String getPassword() {
			return password;
		}






		public void setIdCustomer(int idCustomer) {
			this.idCustomer = idCustomer;
		}






		public void setFname(String fname) {
			this.fname = fname;
		}



		public void setLname(String lname) {
			this.lname = lname;
		}




		public void setEmail(String email) {
			this.email = email;
		}



		public void setPhoneNo(String phoneNo) {
			this.phoneNo = phoneNo;
		}



		public void setNICno(String nICno) {
			NICno = nICno;
		}



		public void setAddress(String address) {
			this.address = address;
		}



		public void setGender(String gender) {
			this.gender = gender;
		}



		public void setUsername(String username) {
			this.username = username;
		}



		public void setPassword(String password) {
			this.password = password;
		}

	
		
		
		
		
}
