<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String image = request.getParameter("filepath");
    
    File file = new File("D:\\images\\"+image+"");
    String second = null;
    System.out.println(file);
   
    try{
       
    Connection con=DbConnection.getConnection();
  //  Random s = new Random();
  //  int otp = s.nextInt(10000 - 5000) +25000 ;
    
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from register where name= '"+username+"' and password='"+password+"'");
    if(rs.next())
    {

    String user = rs.getString("username");
    session.setAttribute("user",user);
    String email = rs.getString("email");
    session.setAttribute("email",email);
    second = rs.getString("image");
    
     File file2 = new File("D:\\images\\"+second+"");
     System.out.println(file2);
  
     
     
     
     
            BufferedImage bImage = ImageIO.read(file);
		BufferedImage cImage = ImageIO.read(file2);
		int height = bImage.getHeight();
		int width = bImage.getWidth();
                String res="";
		BufferedImage rImage = new BufferedImage(width, height, BufferedImage.TYPE_4BYTE_ABGR);
		for (int y = 0; y < height; y++) {
			for (int x = 0; x < width; x++) {
				try {
					int pixelC = cImage.getRGB(x, y);
					int pixelB = bImage.getRGB(x, y);
					if (pixelB == pixelC ) {
						rImage.setRGB(x, y,  bImage.getRGB(x, y));
                                                res="matched";
					} else {
						int a= 0xff |  bImage.getRGB(x, y)>>24 , 
						r= 0xff &  bImage.getRGB(x, y)>>16 , 
						g= 0x00 &  bImage.getRGB(x, y)>>8,
						b= 0x00 &  bImage.getRGB(x, y);	
						
						int modifiedRGB=a<<24|r<<16|g<<8|b;
						rImage.setRGB(x,y,modifiedRGB);
                                                 res="Not matched";
					}
				} catch (Exception e) {
					// handled hieght or width mismatch
					rImage.setRGB(x, y, 0x80ff0000);
				}
			}
		}
     
     
     
if (res=="matched") {
    
    
    PreparedStatement ps=con.prepareStatement("update owner set status = 'Genuine' where email = '"+email+"'");
    ps.executeUpdate();
   
            response.sendRedirect("ownerhome.jsp?msg=Success");
            
        } else {
    
     
    PreparedStatement ps=con.prepareStatement("update owner set status = 'Attacker' where email = '"+email+"'");
    ps.executeUpdate();
            response.sendRedirect("owner.jsp?msg=Failed");
           
        }
                   
          
          
          
   
    }
    else 
    {
    
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in emplogact"+e.getMessage());
    }
%>