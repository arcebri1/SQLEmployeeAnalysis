-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "Dept_No" varchar   NOT NULL,
    "Dept_Name" varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Dept_No"
     )
);

CREATE TABLE "Department_Employees" (
    "Dept_No" varchar   NOT NULL,
    "Emp_No" int   NOT NULL
);

CREATE TABLE "Department_Manager" (
    "Dept_No" varchar   NOT NULL,
    "Emp_No" int   NOT NULL
);

CREATE TABLE "Employees" (
    "Emp_No" int   NOT NULL,
    "Emp_Title_ID" varchar   NOT NULL,
    "First_Name" varchar   NOT NULL,
    "Last_Name" varchar   NOT NULL,
    "Sex" varchar   NOT NULL,
    "Birth_Date" date   NOT NULL,
    "Hire_Date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_No"
     )
);

CREATE TABLE "Salaries" (
    "Emp_No" int   NOT NULL,
    "Salary" int   NOT NULL
);

CREATE TABLE "Titles" (
    "Title_ID" varchar   NOT NULL,
    "Title" varchar   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_ID"
     )
);

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Department_Manager" ("Dept_No");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Dept_No" FOREIGN KEY("Dept_No")
REFERENCES "Departments" ("Dept_No");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Employees" ("Emp_No");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Emp_No" FOREIGN KEY("Emp_No")
REFERENCES "Salaries" ("Emp_No");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Title_ID" FOREIGN KEY("Title_ID")
REFERENCES "Employees" ("Emp_Title_ID");

