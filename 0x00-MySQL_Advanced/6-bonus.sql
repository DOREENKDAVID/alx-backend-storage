-- script that creates a stored procedure AddBonus that
-- adds a new correction for a student.

DELIMITER //

CREATE PROCEDURE AddBonus(
    IN in_user_id INT,
    IN in_project_name VARCHAR(255),
    IN in_score INT
)
BEGIN
    DECLARE project_id INT;

    -- Check if the project exists; if not, create it
    SELECT project_id INTO project_id
    FROM projects
    WHERE name = in_project_name;

    IF project_id IS NULL THEN
        -- Project doesn't exist, so create it
        INSERT INTO projects (name) VALUES (in_project_name);
        SET project_id = LAST_INSERT_ID(); -- Get the last inserted project ID
    END IF;

    -- Add bonus for the user in the specified project
    INSERT INTO bonuses (user_id, project_id, score)
    VALUES (in_user_id, project_id, in_score);
END //

DELIMITER ;

