-- script that creates a stored procedure ComputeAverageScoreForUser
--that computes and store the average score for a student.


DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN in_user_id INT
)
BEGIN
    DECLARE avg_score DECIMAL(10, 2);

    -- Calculate the average score for the user
    SELECT AVG(score) INTO avg_score
    FROM bonuses
    WHERE user_id = in_user_id;

    -- Store the calculated average score in a separate table or update an existing record
    -- For example, assuming a table 'average_scores' to store average scores for users
    INSERT INTO average_scores (user_id, average_score)
    VALUES (in_user_id, avg_score)
    ON DUPLICATE KEY UPDATE average_score = avg_score;
END //

DELIMITER ;
