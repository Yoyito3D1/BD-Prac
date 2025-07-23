SELECT zona_assignada, lab FROM qualificats GROUP BY zona_assignada HAVING count(*) >2;
