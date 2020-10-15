using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Dharvik.Startup))]
namespace Dharvik
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
