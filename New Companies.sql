SELECT
    C.COMPANY_CODE,
    C.FOUNDER,
    COUNT(DISTINCT L.LEAD_MANAGER_CODE) AS TOTAL_LEAD_MGR,
    COUNT(DISTINCT S.SENIOR_MANAGER_CODE) AS TOTAL_SENIOR_MGR,
    COUNT(DISTINCT M.MANAGER_CODE) AS TOTAL_MGRS,
    COUNT(DISTINCT E.EMPLOYEE_CODE) AS TOTAL_EMPL
FROM COMPANY C
LEFT JOIN LEAD_MANAGER L USING(COMPANY_CODE)
LEFT JOIN SENIOR_MANAGER S USING(COMPANY_CODE)
LEFT JOIN MANAGER M USING (COMPANY_CODE)
LEFT JOIN EMPLOYEE E USING(COMPANY_CODE)
GROUP BY 1,2
ORDER BY 1