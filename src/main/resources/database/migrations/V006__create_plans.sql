CREATE TABLE plans
(
    id         BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    member_id  BIGINT,
    trainer_id BIGINT,
    dateTime   DATE,
    comment    VARCHAR(512),

    CONSTRAINT pk_plans PRIMARY KEY (id),
    CONSTRAINT fk_member_id FOREIGN KEY (member_id) REFERENCES members (id),
    CONSTRAINT fk_trainer_id FOREIGN KEY (trainer_id) REFERENCES trainers (id)
)