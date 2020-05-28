using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace DotnetCoreContainer.Pages
{
    public class AboutModel : PageModel
    {
        public string Message { get; set; }

        public void OnGet()
        {
            Message = "ASP.NET Core application deployed as a container to Azure App Service, built with docker and deployed with web hooks on docker push. After the container has been constructed locally using a sixteen step docker file";
        }
    }
}
