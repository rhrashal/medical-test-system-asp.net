using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Web_Project_MedicalTest.Startup))]
namespace Web_Project_MedicalTest
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
