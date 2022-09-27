<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("emailLinkIdpTitle", idpDisplayName)}
    <#elseif section = "form">


<div class="bg-white shadow sm:rounded-lg" style="margin:20px">
  <div class="px-4 py-5 sm:p-6">
    <h3 class="text-lg font-medium leading-6 text-gray-900">Pending Actions</h3>
    <div class="mt-2 sm:flex sm:items-start sm:justify-between">
      <div class="max-w-xl text-sm text-gray-500">
 <p id="instruction1" class="instruction">
            ${msg("emailLinkIdp1", idpDisplayName, brokerContext.username, realm.displayName)}
        </p>
        <p style="margin-top:10px" id="instruction2" class="instruction">
            ${msg("emailLinkIdp2")} <a style="font-weight:bold;" href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailLinkIdp3")}
        </p>
        <p id="instruction3" class="instruction">
            ${msg("emailLinkIdp4")} <a style="font-weight:bold;" href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailLinkIdp5")}
        </p>

      </div>
      <div class="mt-5 sm:mt-0 sm:ml-6 sm:flex sm:flex-shrink-0 sm:items-center">
        <a href="${url.loginAction}" class="inline-flex items-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:text-sm">Resend Email</a>
      </div>
    </div>
  </div>
</div>





    </#if>
</@layout.registrationLayout>