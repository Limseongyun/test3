<%@ page contentType="application/unknown; charset=euc-kr" %><%@ page
import="java.util.*,java.io.*"%><%

/* ����ġ ��Ĺ���� Ȥ�� ��Ĺ �ܵ����� ���϶��� �ѱ� ���� �ٿ�ε�
 * 
 * �ձǳ� (kwon37xi_a#T_yahoo.co.kr)
 * 
 * http://www.okjsp.pe.kr�� �ö�� ���� �������� �����ϰ�, �������
 * ���迡 ���� ��Ģ���� �����Ͽ� ���� ����.
 * �̰��� ������ ��, ��γ� ���� �̸� �޾Ƶ��̴� ������� �ڽſ� �°�
 * ������ ��.
 *
 * ������ charset=euc-kr�� �������� �ȵȴ�.!!!!!!
 * 
 * ������ ��� �� JSP �������� EUC_KR�� �ؼ����� �ʾƼ� �� JSP������ ����
 * �ѱ��� ��� ����������. ����.. ���⼭�� �ѱ��� �Ⱦ����� �� �����
 * ������..
 */

/*
 * �ٿ�ε� ���� �������� Servlet���� ����°� ��Ģ�̴�.
 * �̰��� �׳� ���� ������ �����ִ� �� ���̴�.
 *
 * ����, JSP�� ���� ��쿡 �� �±� ���̿� ������� �־�� �ȵȴ�.
 * �׷���� �ٿ�ε�Ǵ� ������ ����� �� �ִ�. �׷��� �׳� ��������
 * ����⸦ ����.
 */

request.setCharacterEncoding("euc-kr");

 String filename = request.getParameter("fileName");
 String fileDir = request.getParameter("fileDir");
 String filePath = request.getRealPath("") + fileDir + "/" + filename;
 System.out.println(filename);
 System.out.println(filePath);
if (filename == null) {
 return;
}

String mime = getServletContext().getMimeType(filename);

if (mime == null) {
 mime = "application/octet-stream;";
}

// �ڽſ��� �°� ������ ��.
File file =
 new File(filePath);

byte b[] = new byte[2048];


//response.setHeader("Content-Transfer-Encoding", "7bit");
// �� �κ��� �Ʒ��� ���� ������. 2005/01/17
response.setContentType(mime + "; charset=euc-kr"); 

/*
 * URLEncoder�� ��뿡 �����Ұ�. J2SDK 1.3x ���Ͽ�����
 * java.net.URLEncoder.encode(filename) ���� ������ ��.
 *
 * MS IE 5.5���� ���װ� �־ atatchment �κ��� ������Ѵ�.
 *
 */
String aa =file.getName();
if (request.getHeader("User-Agent").indexOf("MSIE 5.5") > -1) {
 response.setHeader("Content-Disposition",
   "filename=" +java.net.URLEncoder.encode(filename, "EUC-KR") + ";");
} else {
 response.setHeader("Content-Disposition",
   "attachment; filename=" + java.net.URLEncoder.encode(filename, "EUC-KR") + ";");
}
System.out.println("filename="+filename);
/*
 * ���ݱ��� ���� ������� �ѱ� ���ϸ��� latin1���� �ٲ۵� ���´µ�,
 * ��Ĺ �ܵ����� ���̴� ��쿡�� ������� �� ������ ����ġ�� �� ������ ������ ���
 * latin1(8bit) ���� �� �����̸��� �״�� ������ �ѱ� ���� �̸��� ������.
 * ����ġ�� (Ȥ�� ����ġ�� ��Ĺ�� �����ϴ� �����) ������� latin1���ε� ���ڸ�
 * �ڱ� ����� ������Ű�� ������ ���δ�.(���� telnet ���� �����ؼ� �����
 * �����̸��κ��� ��Ĺ�ܵ��� ����ġ+��Ĺ �϶� ���� latin1���� ������쿡 ����
 * �ٸ��� ���´�)
 * 
 * �� URLEncoding�� �ؼ� ������ ������ ����ε� �ѱ� �̸����� �ٿ�ε尡 �ȴ�.
 *
 * �׷��� �̰��� �����󿡼��� �۵����� �ʾҴ�.
 * 
 * URLencoding �� �����̸��� �ʹ� ���쿡�� �ٿ�ε���� �ʴ´�.
 * �����󿡼��� ��� �ѱ������̸��� ������ �ٿ�ε� �Ǵ°����� ����
 * IE 5.x, 6.x �� ���׷� ��������. - �̹����� ���� �ذ�å ���� ����?
 */

response.setHeader("Content-Length", "" + file.length() );

if (file.isFile() && file.length() > 0) // ���� ũ�Ⱑ 0���� Ŀ�� �Ѵ�.
{
 BufferedInputStream fin = new BufferedInputStream(new
 FileInputStream(file));
 BufferedOutputStream outs = new
 BufferedOutputStream(response.getOutputStream());
 int read = 0;
 
 while ((read = fin.read(b)) != -1){
  outs.write(b,0,read);
 }

 outs.close();
 fin.close();
 
}
%>
