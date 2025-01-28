-- question 1.1 Add a patient to the patients table.
INSERT INTO patients
	(first_name, last_name, date_of_birth, gender, language)
VALUES
	('John', 'Doe', '1980-11-15', 'Male', 'English');

-- question 2.1 Change John Doe's language to Spanish.
UPDATE patients
SET language = 'Spanish'
WHERE patient_id = 947;

-- question 3.1 Delete the patient with patient_id = 10
DELETE FROM patients
WHERE patient_id = 10;

-- question 4.1 select all the names & emails of the providers and if any of them has a NULL email, replace it with N/A
SELECT
	first_name,
    last_name,
    COALESCE(email_address, 'N/A') AS email
FROM providers;

-- question 4.2 write the names and contact details of the provider, either phone number or email and if any of the two is missing, replace it with Missing details
SELECT
	first_name,
    last_name,
    COALESCE(email_address, 'missing_details') AS email_address,
    COALESCE(phone_number, 'missing_details') AS phone_number
FROM providers;

-- bonus question
SELECT 
	first_name,
    last_name,
    email_address,
    phone_number
FROM providers
WHERE provider_specialty = 'Pediatrics'
  AND (email_address IS NULL OR phone_number IS NULL);







