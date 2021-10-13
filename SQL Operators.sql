Q.1 List all the employees who don't have reporting manager.

SQL> select * from emp where mgr is null;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7839 KING       PRESIDENT            17-NOV-81       5000                    10


Q2. List all the salesman in dept no.30 and having salary greater than 1500.

SQL> select * from emp where job='SALESMAN' and deptno=30 and sal>1500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30


Q3. List all the employees whose name start with 'S' or 'A'.

SQL> select * from emp where ename like 'S%' or ename like 'A%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20


Q4. List all the employees except those who are working in dept 10 and 20.

SQL> select * from emp where deptno in (10,20);

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


Q5. List all the employees whose ename does not start with S.

SQL> select * from emp where ename not like 'S%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


Q6. List all the employees whose commission is null and working as a clear.

SQL> select * from emp where comm is null and job='CLERK';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


Q7. List all the analyst in dept no 20 and having salary greater than 2500.

SQL> select * from emp where job='ANALYST' and deptno=20 and sal>2500;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


Q8. List all the employees whose name start with 'M' or 'J'.

SQL> select * from emp where ename like 'M%' or ename like 'J%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


Q9.List all the employees with their annual salary except those who are working in dept 30.

SQL> SELECT ENAME,SAL*12 "ANN_SAL" FROM EMP WHERE DEPTNO NOT IN 30;

ENAME         ANN_SAL
---------- ----------
SMITH            9600
JONES           35700
CLARK           29400
SCOTT           36000
KING            60000
ADAMS           13200
FORD            36000
MILLER          15600


Q10. List all the employees whose names does not end with 'ES' or 'R'.

SQL> select * from emp where ename not like '%ES' and ename like '%R';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


Q11. Display the employee name with 10% hike in their salaries.

SQL> select ename,sal as "old_sal", sal+(sal*0.1) as "new sal" from emp;

ENAME         old_sal    new sal
---------- ---------- ----------
SMITH             800        880
ALLEN            1600       1760
WARD             1250       1375
JONES            2975     3272.5
MARTIN           1250       1375
BLAKE            2850       3135
CLARK            2450       2695
SCOTT            3000       3300
KING             5000       5500
TURNER           1500       1650
ADAMS            1100       1210
JAMES             950       1045
FORD             3000       3300
MILLER           1300       1430


Q12. List all the salesman who are having 'E' as second last character but salary having exactly 4 character.

SQL> select * from emp where ename like '%E_' and sal like '____'and job='SALESMAN';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30


Q13. Display all the employees who are joined after 81.

SQL> select * from emp where hiredate > '31-Dec-81';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10


Q14. Display all the employees who are joined in feb.

SQL> select * from emp where hiredate like '%FEB%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30


Q15. List all the employees who are not working as manager and clerk in dept 10 and 20 with 
salary in a range of 1000 of 3000.


SQL>  SELECT * FROM EMP WHERE JOB NOT IN('MANAGER','CLERK') AND SAL BETWEEN 1000 AND 3000
  2   AND DEPTNO NOT LIKE '30';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20

Q16. List all the employees whose job has 'MAN' in it.

SQL> select * from emp where job like '%MAN%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30

Q17. Display the employees who are hired in Nov and Dec.

SQL> select * from emp where hiredate like '%NOV%' or hiredate like '%DEC%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20


Q18. List all the employees with their commission who earns commission more than their salary.

QL> select * from emp where comm>sal;

    EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
--------- ---------- --------- ---------- --------- ---------- ---------- ----------
     7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30


Q19. Display the name of an employee only if their annual salary ends with zero.

SQL> select ename,sal from emp where sal*12 like '%0';

ENAME             SAL
---------- ----------
SMITH             800
ALLEN            1600
WARD             1250
JONES            2975
MARTIN           1250
BLAKE            2850
CLARK            2450
SCOTT            3000
KING             5000
TURNER           1500
ADAMS            1100
JAMES             950
FORD             3000
MILLER           1300


Q20. List the name whose name starts with vowels.

SQL> select * from emp where ename like 'A%' or ename like 'E%' or 
  2  ename like 'I%' or ename like 'O%' or ename like 'U%';

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20

