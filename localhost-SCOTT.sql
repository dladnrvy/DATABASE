-- 2019-07-02
-- 테이블의 컬럼들의 도메인 속성을 확인 할 수 있다.
-- 데이터 입력 시, 데이터 수정 시 
DESC dept;

-- 데이터를 검색하는 명령
-- select (컬럼 이름,...) from 테이블 이름
select * from dept;
-- 모든 부서의 부서 번호 리스트
select deptno from dept;
-- 모든 부서의 이름 리스트 
select dname from dept;
select dname, loc, deptno from dept;

-- EMP 테이블 확인
desc emp;
-- 전체 컬럼 출력
SELECT * from emp;
-- 사원의 번호, 이름의 리스트
SELECT empno, ename from emp; 

-- 컬럼의 사칙연산
select sal from emp;
select sal + comm from emp; -- null 의 연산의 결과 -> null
SELECT sal, sal+100 from emp;
SELECT sal, sal-100 from emp;
SELECT ename, sal, sal*12 from emp;
SELECT ename, sal, sal/5 from emp;

-- nvl 함수 : 특정 칼럼의 데이터가 null인 경우 특정 데이터로 치환해주는 함수
-- nvl(컬럼이름,치환값)
SELECT ename, sal, comm, sal*12+comm from emp;
SELECT ename, sal, comm, sal*12+comm as ysall, nvl(comm,0), sal*12+nvl(comm,0) as ysal from emp;

-- 컬럼과 문자열을 연결하는 결과 출력, sql에서 문자열 표현은 ' '로 묶는다.
SELECT ename || ' is a ' || job from emp;

-- distnct : 컬럼값에서 중복되는 값을 제거하고 하나의 데이터만 출력해준다.
SELECT DISTINCT deptno from emp;

-- select 의 조건절 : select 컬럼명..from 테이블 명 where 조건식 (true/false);
-- where 의 조건은 행을 찾는다.
select dname from dept where deptno = 10;
select empno,ename,job from emp where deptno = 10;

-- 문자 비교의 경우 작은 따옴표로 표현 대소문자 구분
SELECT empno,job from emp where ename='SCOTT';

-- 날짜 검색 : 날짜 데이터를 '' 묶어준다.
SELECT ename, hiredate from emp where hiredate > '81/12/03';

-- 논리 연산 : AND, OR, NOT 
SELECT * from emp where deptno = 30 and job='MANAGER';
SELECT * from emp where deptno =10 or deptno = 20;
SELECT * from emp where not deptno = 30;


-- 컬럼명 between A AND B 연산자 : A이상 B이하의 범위 연산
SELECT * from emp where sal between 2000 and 3000;
SELECT * from emp where sal >=2000 and sal <= 3000;
SELECT * from emp where sal > 2000 and sal < 3000;

-- 범위 연산은 날짜 연산도 가능하다.
SELECT * from emp where hiredate between '1987/01/01' AND '1987/12/31';

-- in 연산자는 or 조건이 많을때 사용
SELECT * from emp WHERE comm in(300,500,1400);






























