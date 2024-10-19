document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('patientRegistrationForm');

    form.addEventListener('submit', function(e) {
        e.preventDefault();

        // Collect form data
        const formData = {
            patientId: document.getElementById('patientId').value,
            name: document.getElementById('name').value,
            age: document.getElementById('age').value,
            phoneNo: document.getElementById('phoneNo').value,
            disease: document.getElementById('disease').value,
            admittedOn: document.getElementById('admittedOn').value,
            dischargedOn: document.getElementById('dischargedOn').value,
            fees: document.getElementById('fees').value,
            ward: document.getElementById('ward').value
        };

        // Here you would typically send the data to your server
        console.log('Form data:', formData);

        // Show success message
        alert('Patient registration submitted successfully!');

        // Reset form
        form.reset();
    });
});