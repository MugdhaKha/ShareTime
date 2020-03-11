using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ShareTime.Startup))]
namespace ShareTime
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
