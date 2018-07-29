using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Week 5 - Chapter 10 and 11
*/

[ServiceContract(Namespace = "")]
[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
public class CNameService
{
    // To use HTTP GET, add [WebGet] attribute. (Default ResponseFormat is WebMessageFormat.Json)
    // To create an operation that returns XML,
    //     add [WebGet(ResponseFormat=WebMessageFormat.Xml)],
    //     and include the following line in the operation body:
    //         WebOperationContext.Current.OutgoingResponse.ContentType = "text/xml";
    [OperationContract]
    public string HelloWorld(string strName)
    {
        return string.Format("Hello {0}", strName);
    }

    // Add more operations here and mark them with [OperationContract]
}
