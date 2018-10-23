using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Program
/// </summary>
public class Program
{
    private String organizationName = "";
    private String onOffSite = "";
    private String programStatus = "";
    private String programAddress = "";
    private String city = "";
    private String county = "";
    private String programMonth = "";
    private String programDate = "";
    private int numberOfKids = 0;
    private int numberOfAdults = 0;
    private String birds = "";
    private String mammals = "";
    private String reptiles = "";
    private String payStatus = "";
    private String invoiceID = "";
    private String lastUpdatedBy = "";
    private String lastUpdated = "";

    public Program()
    {
        
    }

    public String getOrganizationName()
    {
        return this.organizationName;
    }

    public String getOnOffSite()
    {
        return this.onOffSite;
    }
}