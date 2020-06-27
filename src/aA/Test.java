package aA;

public class Test 
{
	public static int a=0,b=0;
	public static int currentAssignmentCount = 0;
	public static int subjectAssignmentCount = 0;
	
	public static String userName="",subject="";
	
	public static String assignments[] = new String[20];
	public static String assignmentID[] = new String[20];
	public static String assignmentID1[] = new String[20];
	public static String assignmentIDs[] = new String[20];
	public static String status[] = new String[20];
	public static String tstatus[] = new String[20];	
	public static String names[] = new String[20];
	public static String unames[] = new String[20];
	
	public static final int maxAssignmentCount = 5;
		
	public static void __init__()
	{
		a=0;
		userName="";
		subject="";
		currentAssignmentCount = 0;
		subjectAssignmentCount = 0;
		for(int i=0;i<20;i++)
		{
			assignments[i]="";
			status[i]="";
			status[i]="";
			tstatus[i]="";
			names[i]="";
			unames[i]="";
			assignmentID[i]="";
			assignmentIDs[i]="";

		}
	}
	
	public static void initUpdateInfo()
	{
		for(int i=0;i<20;i++)
		{
			tstatus[i]="";
			unames[i]="";
			assignmentIDs[i]="";
		}
		a=0;
	}
}


