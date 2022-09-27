<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
    <#elseif section = "form">
<div class="bg-white shadow sm:rounded-lg">
  <div class="px-4 py-5 sm:p-6">
    <h3 class="text-lg font-medium leading-6 text-gray-900">Confirm Email</h3>
    <div class="mt-2 max-w-xl text-sm text-gray-500">
      <p>
<a style="font-weight:bold;color:black" href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
</p>
<p>
${msg("emailVerifyInstruction2")}
</p>
<p>
${memailVerifyInstruction1sg("",user.email)}
</p>
    </div>
    <div class="mt-5">
      <a  href="${url.loginAction}" class="inline-flex items-center justify-center rounded-md border border-transparent bg-red-100 px-4 py-2 font-medium text-red-700 hover:bg-red-200 focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-offset-2 sm:text-sm">Resend</a>
    </div>
  </div>
</div>
        <p class="instruction"></p>
    <#elseif section = "info">
        <p class="instruction">

            <br/>

        </p>
    </#if>
</@layout.registrationLayout>
