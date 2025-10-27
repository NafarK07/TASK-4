USE LibraryManagement;

-- Count total books
SELECT COUNT(*) AS total_books FROM Books;

-- Count total members
SELECT COUNT(*) AS total_members FROM Members;


SELECT SUM(total_copies) AS total_copies_in_library FROM Books;

SELECT AVG(total_copies) AS avg_copies_per_book FROM Books;

SELECT 
    MIN(publication_year) AS oldest_book,
    MAX(publication_year) AS newest_book
FROM Books;

SELECT 
    publication_year,
    SUM(total_copies) AS total_copies
FROM Books
GROUP BY publication_year
ORDER BY publication_year;

-- Find total borrowed books per member
SELECT member_id,
       COUNT(*) AS total_borrowed
FROM Borrowings
GROUP BY member_id
HAVING COUNT(*) > 0
ORDER BY total_borrowed DESC;

-- Find number of books borrowed on each date
SELECT borrow_date,
       COUNT(*) AS total_borrowed_books
FROM Borrowings
GROUP BY borrow_date
ORDER BY borrow_date;

-- Find average available copies per publication year
SELECT publication_year,
       ROUND(AVG(available_copies), 2) AS avg_available
FROM Books
GROUP BY publication_year
ORDER BY publication_year;


