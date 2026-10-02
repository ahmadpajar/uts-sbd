select fname || lname as name, salary
from staff;
SELECT staffNo, fName || ' ' || lName AS fullName, salary
FROM Staff
WHERE salary < 10000;
SELECT p.propertyNo,
       p.city,
       p.type,
       o.fName || ' ' || o.lName AS ownerName,
       c.fName || ' ' || c.lName AS clientName
FROM PropertyForRent p
JOIN PrivateOwner o ON p.ownerNo = o.ownerNo
LEFT JOIN Viewing v ON p.propertyNo = v.propertyNo
LEFT JOIN Client c ON v.clientNo = c.clientNo
WHERE p.city <> 'London';
select 
    p.propertyNo,
    p.street,
    p.city,
    o.fName || ' ' || o.lName as nama_pemilik
from PropertyForRent p
join PrivateOwner o on p.ownerNo = o.ownerNo
where p.propertyNo in (
    select propertyNo
    from Viewing
    where comment is null
);
select 
    ownerNo,
    fName || ' ' || lName as nama_pemilik,
    address
from PrivateOwner
where fName like 'T%';
select 
    p.propertyNo,
    p.type as jenis_property,
    p.street || ', ' || p.city as alamat,
    o.fName || ' ' || o.lName as nama_pemilik,
    p.rent
from PropertyForRent p
join PrivateOwner o on p.ownerNo = o.ownerNo
where p.rent < 500;
select count(fname)
from staff;
select 
    fName || ' ' || lName as nama_lengkap,
    salary as gaji_awal,
    salary * 0.10 as bonus,
    salary + (salary * 0.10) as gaji_akhir
from Staff
where salary < 10000;

