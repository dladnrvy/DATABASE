-- 2019-07-02
-- ���̺��� �÷����� ������ �Ӽ��� Ȯ�� �� �� �ִ�.
-- ������ �Է� ��, ������ ���� �� 
DESC dept;

-- �����͸� �˻��ϴ� ���
-- select (�÷� �̸�,...) from ���̺� �̸�
select * from dept;
-- ��� �μ��� �μ� ��ȣ ����Ʈ
select deptno from dept;
-- ��� �μ��� �̸� ����Ʈ 
select dname from dept;
select dname, loc, deptno from dept;

-- EMP ���̺� Ȯ��
desc emp;
-- ��ü �÷� ���
SELECT * from emp;
-- ����� ��ȣ, �̸��� ����Ʈ
SELECT empno, ename from emp; 

-- �÷��� ��Ģ����
select sal from emp;
select sal + comm from emp; -- null �� ������ ��� -> null
SELECT sal, sal+100 from emp;
SELECT sal, sal-100 from emp;
SELECT ename, sal, sal*12 from emp;
SELECT ename, sal, sal/5 from emp;

-- nvl �Լ� : Ư�� Į���� �����Ͱ� null�� ��� Ư�� �����ͷ� ġȯ���ִ� �Լ�
-- nvl(�÷��̸�,ġȯ��)
SELECT ename, sal, comm, sal*12+comm from emp;
SELECT ename, sal, comm, sal*12+comm as ysall, nvl(comm,0), sal*12+nvl(comm,0) as ysal from emp;

-- �÷��� ���ڿ��� �����ϴ� ��� ���, sql���� ���ڿ� ǥ���� ' '�� ���´�.
SELECT ename || ' is a ' || job from emp;

-- distnct : �÷������� �ߺ��Ǵ� ���� �����ϰ� �ϳ��� �����͸� ������ش�.
SELECT DISTINCT deptno from emp;

-- select �� ������ : select �÷���..from ���̺� �� where ���ǽ� (true/false);
-- where �� ������ ���� ã�´�.
select dname from dept where deptno = 10;
select empno,ename,job from emp where deptno = 10;

-- ���� ���� ��� ���� ����ǥ�� ǥ�� ��ҹ��� ����
SELECT empno,job from emp where ename='SCOTT';

-- ��¥ �˻� : ��¥ �����͸� '' �����ش�.
SELECT ename, hiredate from emp where hiredate > '81/12/03';

-- �� ���� : AND, OR, NOT 
SELECT * from emp where deptno = 30 and job='MANAGER';
SELECT * from emp where deptno =10 or deptno = 20;
SELECT * from emp where not deptno = 30;


-- �÷��� between A AND B ������ : A�̻� B������ ���� ����
SELECT * from emp where sal between 2000 and 3000;
SELECT * from emp where sal >=2000 and sal <= 3000;
SELECT * from emp where sal > 2000 and sal < 3000;

-- ���� ������ ��¥ ���굵 �����ϴ�.
SELECT * from emp where hiredate between '1987/01/01' AND '1987/12/31';

-- in �����ڴ� or ������ ������ ���
SELECT * from emp WHERE comm in(300,500,1400);






























