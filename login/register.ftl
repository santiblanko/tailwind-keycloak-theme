<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('firstName','lastName','email','username','password','password-confirm'); section>
    <#if section = "header">
    <#elseif section = "form">


<div class="flex min-h-full" style="min-height:100vh">
  <div class="flex flex-1 flex-col justify-center py-12 px-4 sm:px-6 lg:flex-none lg:px-20 xl:px-24">
    <div class="mx-auto w-full max-w-sm lg:w-96">
      <div>
        <img class="h-12 w-auto" src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600" alt="Your Company">
        <h2 class="mt-6 text-3xl font-bold tracking-tight text-gray-900">Create Account</h2>
        <p class="mt-2 text-sm text-gray-600">
          <a href="${url.loginUrl}" class="font-medium text-indigo-600 hover:text-indigo-500">¿Do you have an account?</a>
        </p>
      </div>

      <div class="mt-8">

        <div class="mt-6">
          <form action="${url.registrationAction}" method="POST" class="space-y-6">

            <div>
              <label for="firstName" class="block text-sm font-medium text-gray-700">First Name</label>
              <div class="mt-1">
                <input placeholder="First name" value="${(register.formData.firstName!'')}" name="firstName" type="text" class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
              </div>

              <#if messagesPerField.existsError('firstName')>
                <span id="input-error-firstname" class="font-medium text-red-600" aria-live="polite">
                    ${kcSanitize(messagesPerField.get('firstName'))?no_esc}
                </span>
             </#if>
            </div>

            <div>
              <label for="lastName" class="block text-sm font-medium text-gray-700">Last Name</label>
              <div class="mt-1">
                <input placeholder="Last name" value="${(register.formData.lastName!'')}" name="lastName" type="text" class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
              </div>

              <#if messagesPerField.existsError('firstName')>
                <span id="input-error-lastName" class="font-medium text-red-600" aria-live="polite">
                    ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                </span>
             </#if>
            </div>

            <#if !realm.registrationEmailAsUsername>
            <div>
              <label for="email" class="block text-sm font-medium text-gray-700">Email Address</label>
              <div class="mt-1">
                <input placeholder="Email Address" id="username" value="${(register.formData.username!'')}" name="username" type="text" class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm" aria-invalid="<#if messagesPerField.existsError('username')>true</#if>">
              </div>

             <#if messagesPerField.existsError('username')>
                <span id="input-error-username" class="font-medium text-red-600" aria-live="polite">
                  ${kcSanitize(messagesPerField.get('username'))?no_esc}
                </span>
            </#if>

            </div>
            </#if>

            <div class="space-y-1">
              <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
              <div class="mt-1">
                <input placeholder="Password" id="password" name="password" type="password" autocomplete="current-password" class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
              </div>

              <#if messagesPerField.existsError('password')>
                <span id="input-error-password" class="font-medium text-red-600" aria-live="polite">
                  ${kcSanitize(messagesPerField.get('password'))?no_esc}
                </span>
              </#if>


            </div>

            <div class="space-y-1">
              <label for="password-confirm" class="block text-sm font-medium text-gray-700">Repeat Password</label>
              <div class="mt-1">
                <input placeholder="Password Confirmation" id="password-confirm" name="password-confirm" type="password" autocomplete="current-password" class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
              </div>

              <#if messagesPerField.existsError('password-confirm')>
                  <span id="input-error-password-confirm" class="font-medium text-red-600" aria-live="polite">
                      ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                  </span>
              </#if>

            </div>




            <div>
              <button type="submit" class="flex w-full justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">Create Account</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="relative hidden w-0 flex-1 lg:block">
    <img class="absolute inset-0 h-full w-full object-cover" src="https://www.peterbeard.co/postimages/delaunay/lovely-triangles.png" alt="">
  </div>
</div>













    </#if>
</@layout.registrationLayout>