COMMENT
    ON COLUMN person_discounts.id IS 'The primary key identifier of each entary';

COMMENT
    ON COLUMN person_discounts.person_id IS 'The ID of the person';

COMMENT
    ON COLUMN person_discounts.pizzeria_id IS 'The ID of the pizzeria';

COMMENT
    ON COLUMN person_discounts.discount IS 'The discount for the person in the certain pizzeria';

COMMENT
    ON TABLE person_discounts IS 'This table stores discounts for persons';