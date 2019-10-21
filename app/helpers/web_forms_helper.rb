module WebFormsHelper
    def checked(text)
        @web_form.options.nil? ? false : @web_form.options.match(text)
    end
end
