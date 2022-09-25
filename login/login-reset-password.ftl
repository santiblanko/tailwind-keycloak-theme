<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true displayMessage=!messagesPerField.existsError('username'); section>
    <#if section = "header">
    <#elseif section = "form">



<div class="flex min-h-full flex-col justify-center py-12 sm:px-6 lg:px-8">
  <div class="sm:mx-auto sm:w-full sm:max-w-md">
    <img class="mx-auto h-12 w-auto" src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600" alt="Your Company">
    <h2 class="mt-6 text-center text-3xl font-bold tracking-tight text-gray-900">Account Recovery</h2>
    <p class="mt-2 text-center text-sm text-gray-600">
      Or
      <a href="${url.loginUrl}" class="font-medium text-indigo-600 hover:text-indigo-500">Back to login</a>
    </p>
  </div>

  <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
    <div class="bg-white py-8 px-4 shadow-2xl sm:rounded-lg sm:px-10">
      <form action="${url.loginAction}" class="space-y-6" action="#" method="POST">
        <div>
          <label for="email" class="block text-sm font-medium text-gray-700">Email address</label>
          <div class="mt-1">
            <input placeholder="Email address" id="username" name="username" type="email" autocomplete="email" required class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
          </div>
        </div>

        <#if messagesPerField.existsError('username')>
            <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
              ${kcSanitize(messagesPerField.get('username'))?no_esc}
            </span>
        </#if>

        <div>
          <button type="submit" class="flex w-full justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">Recovery</button>
        </div>
      </form>


    </div>
  </div>
</div>


















    </#if>
</@layout.registrationLayout>
