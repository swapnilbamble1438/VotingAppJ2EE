package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Candidate;


public class CandidateDAO {
	
	
private Connection conn;
	
	public CandidateDAO(Connection conn) {
		this.conn = conn;
	}
	
	
	
	

	//view Candidates  (View votes of candidates)


	public List<Candidate> getCandidates(){
		List<Candidate> list = new ArrayList<Candidate>();
		
		Candidate cnd = new Candidate();
		
		try {
			String sql = "select * from Candidate";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				cnd = new Candidate();
				cnd.setId(rs.getInt(1));
				cnd.setCandidate(rs.getString(2));
				cnd.setVotes(rs.getInt(3));
				
				list.add(cnd);
				
			}
			
			
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return list;
		}
	
	
	
	// add Candidates (do votes for candidates)
	
			public int  addCandidate(String cnd) {
				
				
				
				
					int a =  0;
					try {
					
						
						String sql = "update Candidate set votes=(votes + 1) where candidate=?";
						PreparedStatement ps= conn.prepareStatement(sql);
						

						
						ps.setString(1, cnd);
						
						
						
						a  = ps.executeUpdate();
						 
						if( a > 0)
							a =1;
						
					
						
					}catch (Exception e) {
						System.out.println(e);
					}
				return a;
					
				}
			
	
	

	

		

	

}
