package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.conn.DBConnect;
import com.entity.User;


public class UserDAO {

	
private Connection conn;
	
	public UserDAO(Connection conn) {
		this.conn = conn;
	}
	
	
	
		
		// check Admin login
		
			public boolean checkadmin(User adm)
			{
				boolean f = false;
			
			
				try{
					String sql = "select * from User  where email=? and password=? and role='ROLE_ADMIN'";
					PreparedStatement ps = conn.prepareStatement(sql);
				
				
				ps.setString(1, adm.getEmail());
				ps.setString(2, adm.getPassword());
				
				ResultSet rs=ps.executeQuery();
				if (rs.next()==true)
					f = true;
				else
					f = false;
				
				}catch(Exception ex){
				   System.out.println(ex.getMessage());
				}

			return f;
					
			}
			
			
			// view voter/user by email

			public User getVoterByEmail(String email){
				User user = new User();
				
				
				try {
					String sql = "select * from User where email = ?";
					PreparedStatement ps = conn.prepareStatement(sql);
					
					ps.setString(1, email);
					
					ResultSet rs = ps.executeQuery();
					
					while(rs.next())
					{
						user.setId(rs.getInt(1));
						user.setEmail(rs.getString(2));
						user.setName(rs.getString(3));
						user.setPassword(rs.getString(4));
						user.setPhone(rs.getInt(5));
						user.setStatus(rs.getString(6));
						user.setRole(rs.getString(7));
						
						
					
						
					}
					
					
						
					}catch (Exception e) {
						e.printStackTrace();
					}
					
					return user;
				}
			
			
			
			// add Voters
	public int addVoter(User vtr) {
				
				int i = 0;
				try{
					String sql = "insert into User (email,name,password,phone,status,role) values(?,?,?,?,?,?)" ;
					PreparedStatement ps = conn.prepareStatement(sql);
				
				
				ps.setString(1, vtr.getEmail());
				ps.setString(2, vtr.getName());
				ps.setString(3, vtr.getPassword());
				ps.setInt(4, vtr.getPhone());
				ps.setString(5,"Not Voted");
				ps.setString(6, "ROLE_NORMAL");
				
				i = ps.executeUpdate();
				if(i > 0)
					i = 1;
				
				
				}catch(Exception ex){
				   System.out.println(ex.getMessage());
				}

			return i;
				
				
				
			}
			
			
					
					// check Voters login
					
					public boolean checkVoter(User vtr)
					{
						boolean f = false;
					
					
						try{
							String sql = "select * from User  where email=? and password=?";
							PreparedStatement ps = conn.prepareStatement(sql);
						
						
						ps.setString(1, vtr.getEmail());
						ps.setString(2, vtr.getPassword());
						
						ResultSet rs=ps.executeQuery();
						if (rs.next()==true)
							f = true;
						else
							f = false;
						
						}catch(Exception ex){
						   System.out.println(ex.getMessage());
						}

					return f;
							
					}
					
					
					
					// check Voters login before new voter registration
					
					public boolean checkVoter2(User vtr)
					{
						boolean f = false;
					
					
						try{
							String sql = "select * from User  where email=?";
							PreparedStatement ps = conn.prepareStatement(sql);
						
						
						ps.setString(1, vtr.getEmail());
						
						ResultSet rs=ps.executeQuery();
						if (rs.next()==true)
							f = true;
						else
							f = false;
						
						}catch(Exception ex){
						   System.out.println(ex.getMessage());
						}

					return f;
							
					}
				
		
					// update the voting status of user
					
					public int  updateUser(String email) {
						
						
						
						
							int a =  0;
							try {
							
								
								String sql = "update User set status='Voted' where email=?";
								PreparedStatement ps= conn.prepareStatement(sql);
								

								
								ps.setString(1, email);
								
								
								
								a  = ps.executeUpdate();
								 
								if( a > 0)
									a =1;
								
							
								
							}catch (Exception e) {
								System.out.println(e);
							}
						return a;
							
						}
					
			
			

			

			
			
	
		
			

}
