<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
    <#elseif section = "form">

<div class="bg-white shadow sm:rounded-lg" style="margin:20px">
  <div class="px-4 py-5 sm:p-6">
    <div class="mt-2 sm:flex sm:items-start sm:justify-between">
      <div class="mt-5 sm:mt-0 sm:ml-6 sm:flex sm:flex-shrink-0 sm:items-center">
        <a href="${url.loginRestartFlowUrl}"  class="inline-flex items-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:text-sm">Restart Login Process</a>
        <a style="margin-left:10px" href="${url.loginAction}" class="inline-flex items-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:text-sm">Continue the login process</a>
      </div>
    </div>
  </div>
</div>
    </#if>
</@layout.registrationLayout>
