<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','email','firstName','lastName'); section>
    <#if section = "header">
    <#elseif section = "form">


<div style="padding:10px;">
  <div class="md:grid md:grid-cols-3 md:gap-6">
    <div class="md:col-span-1">
      <div class="px-4 sm:px-0">
        <h3 class="text-lg font-medium leading-6 text-gray-900">Profile</h3>
        <p class="mt-1 text-sm text-gray-600">This information will not be displayed publicly.</p>
      </div>
    </div>
    <div class="mt-5 md:col-span-2 md:mt-0">
      <form  action="${url.loginAction}" method="post">
        <div class="shadow sm:overflow-hidden sm:rounded-md">
          <div class="space-y-6 bg-white px-4 py-5 sm:p-6">





            <div>
              <label for="about" class="block text-sm font-medium text-gray-700">Username</label>
              <div class="mt-1">
                  <input type="text" value="${(user.username!'')}"  class="block w-full flex-1 rounded-none rounded-r-md border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm h-10" placeholder="Username" name="username">
                             <#if messagesPerField.existsError('username')>
                            <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('username'))?no_esc}
                            </span>
                        </#if>

            </div>
            </div>

            <div>
              <label for="about" class="block text-sm font-medium text-gray-700">Email</label>
              <div class="mt-1">
                  <input value="${(user.email!'')}" type="text"  class="block w-full flex-1 rounded-none rounded-r-md border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm h-10" placeholder="Email" name="email">
                                    <#if messagesPerField.existsError('email')>
                            <span id="input-error-email" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('email'))?no_esc}
                            </span>
                        </#if>

             </div>
            </div>


            <div>
              <label for="about" class="block text-sm font-medium text-gray-700">First Name</label>
              <div class="mt-1">
                  <input  value="${(user.firstName!'')}" type="text"  class="block w-full flex-1 rounded-none rounded-r-md border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm h-10" placeholder="First Name" name="firstName">
                               <#if messagesPerField.existsError('firstName')>
                        <span id="input-error-firstname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('firstName'))?no_esc}
                        </span>
                    </#if>
   </div>
            </div>



            <div>
              <label for="about" class="block text-sm font-medium text-gray-700">Last Name</label>
              <div class="mt-1">
                  <input  value="${(user.lastName!'')}" type="text"  class="block w-full flex-1 rounded-none rounded-r-md border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm h-10" placeholder="Last Name" name="lastName">
                                <#if messagesPerField.existsError('lastName')>
                        <span id="input-error-lastname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                        </span>
                    </#if>

             </div>
            </div>


          </div>
          <div class="bg-gray-50 px-4 py-3 text-right sm:px-6">
            <button type="submit" class="inline-flex justify-center rounded-md border border-transparent bg-black py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">Save</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>


























    </#if>
</@layout.registrationLayout>
