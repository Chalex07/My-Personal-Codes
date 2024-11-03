document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('userForm');
    const emailInput = document.getElementById('email');
    const emailError = document.getElementById('emailError');
    
    // Real-time validation for email
    if (form) {
        emailInput.addEventListener('input', () => {
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(emailInput.value)) {
                emailError.textContent = " Invalid email format.";
            } else {
                emailError.textContent = "";
            }
        });

        // Form submission event
        form.addEventListener('submit', function(event) {
            event.preventDefault();

            // Validate form fields
            if (!form.checkValidity()) {
                alert('Please fill out all required fields.');
                return;
            }

            if (!document.getElementById('terms').checked) {
                alert('Please accept the terms and conditions.');
                return;
            }

            // Capture form data
            const formData = {
                name: document.getElementById('name').value,
                email: emailInput.value,
                phone: document.getElementById('phone').value,
                contactMethod: document.getElementById('contactMethod').value,
            };

            // Save data to localStorage for use in the summary page
            localStorage.setItem('formData', JSON.stringify(formData));

            // Redirect to summary.html
            window.location.href = 'summary.html';
        });
    }

    // Display form summary on the summary page
    if (window.location.pathname.includes('summary.html')) {
        const savedData = JSON.parse(localStorage.getItem('formData'));

        if (savedData) {
            document.getElementById('summaryName').textContent = savedData.name;
            document.getElementById('summaryEmail').textContent = savedData.email;
            document.getElementById('summaryPhone').textContent = savedData.phone;
            document.getElementById('summaryContact').textContent = savedData.contactMethod;
            document.getElementById('confirmationMessage').textContent = 'Thank you! Your form has been submitted successfully.';
        }
    }
});
