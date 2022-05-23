package com.inti.TPAeroportSpring;


import com.inti.TPAeroportSpring.model.*;
import java.util.Date;
import java.util.List;
import java.lang.annotation.Native;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.query.NativeQuery;


public class App {


	    public static void main( String[] args ) 
	    {
			List<Vol> listVol= new ArrayList<Vol>();
			//List<Aeroport> listAeroport= new ArrayList<Aeroport>;
	    	List<CompagnieAerienne> listCA= new ArrayList<CompagnieAerienne>();
	    	
			SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
			 
			try
			{
	    	
				
				
				Aeroport a1 = new Aeroport("A�roport Paris-Orly", "Paris");
				Aeroport a2 = new Aeroport("Aeroporti di Roma SpA", "Fiumicino");
				Aeroport a3 = new Aeroport("JFK Internatioal Airport", "New York");

				CompagnieAerienne CA1 = new CompagnieAerienne("Air Baltic");
				CompagnieAerienne CA2 = new CompagnieAerienne("Air France");
				CompagnieAerienne CA3 = new CompagnieAerienne("Flying Em");

				listCA.add(CA2);
//				session.saveOrUpdate(a1);
//				session.saveOrUpdate(a2);
//				session.saveOrUpdate(a3);
			
			
//					Vol v1 = new Vol(dt.parse("2022-05-10 15:00:00"),dt.parse("2022-10-22 17:22:36"), a1, a2);
//					Vol v2 = new Vol(dt.parse("2022-05-15 15:00:00"),dt.parse("2022-05-22 17:22:20"), a1, a2);
//					Vol v3 = new Vol(dt.parse("2022-05-20 15:00:00"),dt.parse("2022-10-22 20:25:40"), a1, a3);
				
			
				
//				v1.setListCA(listCA);
//				v2.setListCA(listCA);
//				v3.setListCA(listCA);
//
//				listVol.add(v1);
//				listVol.add(v2);
//				listVol.add(v3);

//				session.saveOrUpdate(v1);
//				session.saveOrUpdate(v2);
//				session.saveOrUpdate(v3);

				a1.setListVolDepart(listVol);
//				session.saveOrUpdate(a1);


				// session.saveOrUpdate(a2);
				// session.saveOrUpdate(a3);
				
			} catch (Exception e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
				
		
	    }


		

		public static void Rechercher(String departAeroport, String arriveeAeroport){
			Session session = null;
	
				NativeQuery nq = session.createNativeQuery("select idVol from Vol where aeroport_depart like '%"+departAeroport+"%' AND aeroport_arrivee like '%"+arriveeAeroport+"%' ;");


	
		}
	}