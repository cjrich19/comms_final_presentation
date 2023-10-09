# Database Drama: Database Keys Saving Lives

## Overview
   This project showcases the importance of using primary and foreign keys in relational databases through a theatrical script. A simple yet poignant demonstration, it illustrates the   potentially fatal consequences of overlooking key relationships in a medical context.


## Table of Contents
- Scenario
- Database Structure
- The Script
- Technical Deep Dive

## Scenario
Cassie's story unfolds through multiple scenarios, each highlighting the significance of database keys:

1. In the first scenario Cassie number one and her twin sister Cassie number two are both in the hospital receiving treatments. Cassie number one has high blood pressure and Cassie number two has low blood pressure. These two Cassie share completely the same information including name, birthday, height, weight, address. Doctor can’t really discern these two people. One day, the doctor gives number 2 Cassie’s medicine to number 1 Cassie, which leads to fatal consequences.

2. In scenario 2, Cassie, suffering from a sore throat, visits her doctor. After a diagnosis of strep throat, she is prescribed medication. Unfortunately, due to a missing foreign key link between her current appointment data and her comprehensive health history, she is prescribed medicine she's allergic to, leading to tragic consequences.

3.  In the third scenario, The doctor that provides Cassie her medication for her high blood pressure suddenly decided to leave the practice, so the hospital removed the doctor’s information from the doctors table. However, the information stored in the doctor’s table is linked to the information stored in the appointments table through the use of doctor_id as a foreign key, allowing it to refer to the doctors table. Unfortunately, the appointments table includes a clause allowing any deletions that occur in the doctors table to occur in the appointments table as well. As a result, any appointments that Cassie has with the doctor has been removed from the appointments table as well. This means that Cassie is unable to receive her medication, leading to tragic consequences.

4. Our last scenario shows the proper set up for this database. We have Cassie, and her twin who has the same birthday and last name, but Cassie has high blood pressure and her twin has low blood pressure, prescribed by the same doctor. Here we see there are no issues, and both cassie and her twin are easily identified, and any changes to the doctor or patient table will not effect the appointments in a negative fashion. Casssie finally lives, thanks to a proper database key design.

## Database Structure

The database consists of 3 tables:

1. **Patient**: Includes information about patients, features include name, address, height, weight, and diseases. The schema and relationships can be examined in ‘scenario1.py’.
2. **Patient Health History**: Holds general patient health history information, including records of known patient allergies. The schema and relationships can be examined in ‘scenario2.py’.
3. **Appointments Table**: Contains details about patient appointments, diagnoses, and prescriptions. The schema and relationships can be examined in ‘scenario2.py’.
4. **Doctors Table**: Hold information about the doctors within the practice. Their names and specialties. The schema and relationships can be examined in ‘scenario4.py’


## The Script

The script revolves around Cassie's doctor's visit and the subsequent fallout due to the oversight in database relations. It underscores the real-world implications of technical oversights.

To view the script, check the ‘script.txt’ file in the main directory.
To view the visual slides that went along with the script [click here]([https://pages.github.com/](https://docs.google.com/presentation/d/1yJslg4BhOvyq-TIjiY7U-Y4cfHts_EEKuChUU1j_x8g/edit#slide=id.p)https://docs.google.com/presentation/d/1yJslg4BhOvyq-TIjiY7U-Y4cfHts_EEKuChUU1j_x8g/edit#slide=id.p).

## Technical Deep Dive
Let's demystify some of the pivotal concepts:

**Primary Keys (PK)**: A PK is a unique identifier for a record in a table. No two records can have the same PK value. It helps in ensuring data integrity and accuracy.

**Foreign Keys (FK)**: An FK in one table points to a PK in another table, establishing a relationship between the two. It ensures that the records in one table correspond to records in another.

**Cascade/Restrict on Update/Delete**:

- **Cascade**: If a record in the primary key table is updated (or deleted), then the corresponding records in the FK table will automatically update (or delete). This ensures data consistency.
- **Restrict**: Restricts the update or delete of a record from the primary table if there are corresponding records in the FK table. It's a protective measure to prevent unwanted data loss or inconsistencies.


