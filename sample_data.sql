INSERT INTO recruiters VALUES
(1, 'Aisha Khan', 'Healthcare'),
(2, 'Rohit Sharma', 'IT'),
(3, 'Neha Patel', 'Healthcare'),
(4, 'John Miller', 'Allied Health');
INSERT INTO jobs VALUES
(101, 'Registered Nurse - Med Surg', 'City Hospital', 'Texas', 'Contract', 55, '2024-01-01', NULL),
(102, 'Registered Nurse - ICU', 'Regional Medical Center', 'California', 'Contract', 65, '2024-01-05', NULL),
(103, 'Behavioral Health RN', 'Mental Health Clinic', 'Florida', 'Full Time', 50, '2024-01-10', NULL),
(104, 'Clinical Technician', 'Care Plus', 'New York', 'Contract', 35, '2024-01-15', NULL);
INSERT INTO candidates VALUES
(201, 'Emily Brown', 'Texas', 3, 'RN Med Surg', 'Indeed', '2024-01-02'),
(202, 'Daniel Lee', 'California', 5, 'RN ICU', 'LinkedIn', '2024-01-04'),
(203, 'Sophia Wilson', 'Florida', 2, 'Behavioral Health', 'Referral', '2024-01-06'),
(204, 'Michael Johnson', 'New York', 4, 'Clinical Tech', 'Indeed', '2024-01-08'),
(205, 'Olivia Davis', 'Texas', 6, 'RN ICU', 'Vivian', '2024-01-09');
INSERT INTO applications VALUES
(301, 201, 101, 1, 'Screening', '2024-01-03'),
(302, 202, 102, 2, 'Interview', '2024-01-06'),
(303, 203, 103, 3, 'Offer', '2024-01-08'),
(304, 204, 104, 4, 'Rejected', '2024-01-10'),
(305, 205, 102, 1, 'Joined', '2024-01-15');
INSERT INTO offers VALUES
(401, 303, 50, '2024-01-09', '2024-01-20', 'Joined'),
(402, 302, 65, '2024-01-07', NULL, 'Rejected'),
(403, 305, 68, '2024-01-12', '2024-01-25', 'Joined');
