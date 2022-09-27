<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("confirmLinkIdpTitle")}
    <#elseif section = "form">


<div class="bg-white shadow sm:rounded-lg" style="margin:20px">
  <div class="px-4 py-5 sm:p-6">
    <h3 class="text-lg font-medium leading-6 text-gray-900">User already exists</h3>
    <div class="mt-2 sm:flex sm:items-start sm:justify-between">
      <div class="max-w-xl text-sm text-gray-500">
        <p>Please select and action to continue.</p>
      </div>

        <form id="kc-register-form" action="${url.loginAction}" method="post">


      <div class="mt-5 sm:mt-0 sm:ml-6 sm:flex sm:flex-shrink-0 sm:items-center">
        <button type="submit" id="updateProfile" name="submitAction" value="updateProfile"  class="inline-flex items-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:text-sm">
            ${msg("confirmLinkIdpReviewProfile")}
        </button>

        <button style="margin-left:10px" type="submit" name="submitAction" value="linkAccount"  class="inline-flex items-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:text-sm">
            ${msg("confirmLinkIdpContinue", idpDisplayName)}
        </button>
        </form>

      </div>
    </div>
  </div>
</div>

    </#if>
</@layout.registrationLayout>
