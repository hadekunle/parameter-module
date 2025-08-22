from faker import Faker
import pandas as pd
import random

fake = Faker()
num_rows = 20

data = []

for _ in range(num_rows):
    data.append({
        "Patient_ID"       : fake.unique.uuid4()[:6],
        "Name"             : fake.name(),
        "Age"              : random.randint(0, 100),
        "Gender"           : random.choice(["Male", "Female", "Other"]),
        "Blood_Type"       : random.choice(["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]),
        "Diagnosis"        : random.choice(["Hypertension", "Diabetes", "Asthma", "Flu", "Migraine", "Healthy"]),
        "Medication"       : random.choice(["Metformin", "Ibuprofen", "Aspirin", "Paracetamol", "None"]),
        "Doctor"           : fake.name(),
        "Hospital"         : fake.company() + " Hospital",
        "Appointment_Date" : fake.date_between(start_date='-1y', end_date='+1y'),
        "Height_cm"        : round(random.uniform(140, 200), 1),
        "Weight_kg"        : round(random.uniform(40, 120), 1),
        "BMI"              : round(random.uniform(15, 35), 1),
        "Smoker"           : random.choice(["Yes", "No"]),
        "Allergies"        : random.choice(["None", "Peanuts", "Penicillin", "Pollen", "Dust"]),
        "Policy_Number"    : fake.unique.bothify(text="??#####")
    })

df = pd.DataFrame(data)
print(df)

df.to_csv("/Users/ade/Documents/AWS-COURSE/parameter-module/solutions/healthcare.csv", index=False, header=True)