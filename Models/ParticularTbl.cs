using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace Web_Project_MedicalTest.Models
{
    [DataObject(true)]
    public class ParticularTbl
    {
        public static List<Web_Project_MedicalTest.Models.Particular> Select()
        {
            MedicalTestDB1Entities db = new MedicalTestDB1Entities();
            return db.Particulars.ToList();

        }

        public static void Insert(Web_Project_MedicalTest.Models.Particular particular)
        {
            MedicalTestDB1Entities db = new MedicalTestDB1Entities();


            string fileNameToInsert = HttpContext.Current.Session["ImagePath"].ToString();
            if (fileNameToInsert != string.Empty)
            {
                particular.ImageUrl = fileNameToInsert;
                db.Particulars.Add(particular);
                db.SaveChanges();

            }



        }
        public static void Update(Web_Project_MedicalTest.Models.Particular particular)
        {
            MedicalTestDB1Entities db = new MedicalTestDB1Entities();

            string fileNameToUpdate = HttpContext.Current.Session["ImagePath"].ToString();
            if (fileNameToUpdate != string.Empty)
            {
                var updatePrt = db.Particulars.Where(P => P.ParticularID == particular.ParticularID).FirstOrDefault();

                updatePrt.ParticularName = particular.ParticularName;
                updatePrt.ImageUrl = fileNameToUpdate;
                updatePrt.Rate = particular.Rate;
                db.SaveChanges();

            }


        }

        public static void Delete(Web_Project_MedicalTest.Models.Particular particular)
        {
            MedicalTestDB1Entities db = new MedicalTestDB1Entities();

            var deleteItem = db.Particulars.Where(p => p.ParticularID == particular.ParticularID).FirstOrDefault();
            

            db.Particulars.Remove(deleteItem);
            db.SaveChanges();
        }

    }
}