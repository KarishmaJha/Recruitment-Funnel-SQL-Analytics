-- ===============================
-- Recruitment Funnel Database
-- ===============================

-- Candidates Table
CREATE TABLE candidates (
    candidate_id INT PRIMARY KEY,
    candidate_name VARCHAR(100),
    location VARCHAR(100),
    experience_years INT,
    primary_skill VARCHAR(50),
    source VARCHAR(50),
    application_date DATE
);

-- Recruiters Table
CREATE TABLE recruiters (
    recruiter_id INT PRIMARY KEY,
    recruiter_name VARCHAR(100),
    team VARCHAR(50)
);

-- Jobs Table
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(100),
    client_name VARCHAR(100),
    location VARCHAR(100),
    employment_type VARCHAR(50),
    pay_rate INT,
    open_date DATE,
    close_date DATE
);

-- Applications Table
CREATE TABLE applications (
    application_id INT PRIMARY KEY,
    candidate_id INT,
    job_id INT,
    recruiter_id INT,
    stage VARCHAR(50),
    stage_date DATE,
    FOREIGN KEY (candidate_id) REFERENCES candidates(candidate_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (recruiter_id) REFERENCES recruiters(recruiter_id)
);

-- Offers Table
CREATE TABLE offers (
    offer_id INT PRIMARY KEY,
    application_id INT,
    offered_rate INT,
    offer_date DATE,
    joining_date DATE,
    offer_status VARCHAR(50),
    FOREIGN KEY (application_id) REFERENCES applications(application_id)
);
