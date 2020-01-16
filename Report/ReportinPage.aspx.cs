using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Project_MedicalTest.Report
{
    public partial class ReportinPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int patientId = Convert.ToInt32(Request.QueryString["PatientID"].ToString());

            DataSet ds = getData(patientId);

            //ds.WriteXml(@"E:\aspProject7\Final_Modifyed\Web_Project_MedicalTest\Report\PatientInfo_Report.xsd", XmlWriteMode.WriteSchema);


            ReportDocument rd = new ReportDocument();
            rd.Load(Server.MapPath("~/Report/ReceptReport.rpt"));
            rd.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rd;

        }

        public DataSet getData(int patientId) 
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                using(SqlDataAdapter da = new SqlDataAdapter())
                {
                    string sqlstatement = @"SELECT  Patient.PatientID, Patient.PatientName, Patient.Age,  Patient.MobileNumber,  Doctor.DoctorName,  Doctor.DepartmentName,
		                                Particular.ParticularName,  Particular.Rate
                                        FROM [Patient] join Doctor on Patient.DoctorID = Doctor.DoctorID
				                                join Service on Service.PatientID = Patient.PatientID 
				                                join Particular on Particular.ParticularID = Service.ParticularID
				                                WHERE Patient.PatientID = @patientID;";

                    da.SelectCommand = new SqlCommand(sqlstatement, con);
                    da.SelectCommand.CommandType = CommandType.Text;
                    da.SelectCommand.Parameters.Add("@patientID", SqlDbType.Int).Value = patientId;

                    DataSet ds = new DataSet();
                    da.Fill(ds, "PatientInfo");

                    return ds;


                }
            }
        }

       
    }
}