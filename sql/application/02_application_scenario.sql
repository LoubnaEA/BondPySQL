
/* 02 APPLICATION SCENARIO (Data-Model-Centric Implementation)
   -----------------------------------------------------------------------
   Purpose:
   - Create real tables based on the conceptual model
   - Define PK, FK, NOT NULL, data types
   - Ready to insert sample data and run analytical queries
=========================================================================== 



                            CORE ENTITIES
===========================================================================  */

CREATE TABLE persons (
    person_id       INT PRIMARY KEY,
    full_name       VARCHAR(100) NOT NULL,
    gender          VARCHAR(10),
    age_group       VARCHAR(20),
    created_at      DATE NOT NULL
);

CREATE TABLE partners (
    partner_id      INT PRIMARY KEY,
    partner_name    VARCHAR(100) NOT NULL,
    revenue         NUMERIC,
    created_at      DATE NOT NULL
);


--                                DOMAIN
-- ========================================================================

CREATE TABLE relationships (
    relationship_id         INT PRIMARY KEY,
    person_id               INT NOT NULL,
    partner_id              INT NOT NULL,
    relationship_start_date DATE NOT NULL,
    relationship_end_date   DATE,
    status                  VARCHAR(20),
    reciprocated            BOOLEAN,
    emotional_investment    NUMERIC,
    body_count              INT,
    ghosting_date           DATE,
    ghosted_by              INT,  -- logical FK → persons.person_id (self-reference)
    blocked_by              INT,  -- logical FK → persons.person_id (self-reference)

    -- Foreign keys
    CONSTRAINT fk_person FOREIGN KEY (person_id) REFERENCES persons(person_id),
    CONSTRAINT fk_partner FOREIGN KEY (partner_id) REFERENCES partners(partner_id)
);

-- Cardinality comment
-- 1 person → N relationships
-- 1 partner → N relationships


--                       COMMUNICATION & SENTIMENT
-- ========================================================================

CREATE TABLE messages (
    message_id      INT PRIMARY KEY,
    person_id       INT NOT NULL,
    relationship_id INT NOT NULL,
    sentiment_score NUMERIC,
    message_date    DATE NOT NULL,

    CONSTRAINT fk_msg_person FOREIGN KEY (person_id) REFERENCES persons(person_id),
    CONSTRAINT fk_msg_relationship FOREIGN KEY (relationship_id) REFERENCES relationships(relationship_id)
);


--                       GIFTS & MATERIAL INVESTMENT
-- ========================================================================

CREATE TABLE gifts (
    gift_id         INT PRIMARY KEY,
    provider_id     INT NOT NULL, -- gift giver
    receiver_id     INT NOT NULL, -- gift receiver (partner)
    gift_type       VARCHAR(50),
    category        VARCHAR(20),
    gift_date       DATE NOT NULL,

    CONSTRAINT fk_gift_provider FOREIGN KEY (provider_id) REFERENCES persons(person_id),
    CONSTRAINT fk_gift_receiver FOREIGN KEY (receiver_id) REFERENCES partners(partner_id)
);


--                        CONFLICTS & BREAKDOWNS
-- ========================================================================

CREATE TABLE conflicts (
    conflict_id      INT PRIMARY KEY,
    relationship_id  INT NOT NULL,
    conflict_type    VARCHAR(50),
    conflict_date    DATE NOT NULL,

    CONSTRAINT fk_conflict_relationship FOREIGN KEY (relationship_id) REFERENCES relationships(relationship_id)
);


--                       EVENTS & SPECIAL MOMENTS
-- ========================================================================

CREATE TABLE first_dates (
    first_date_id    INT PRIMARY KEY,
    relationship_id  INT NOT NULL,
    location         VARCHAR(100),
    first_date_date  DATE NOT NULL,

    CONSTRAINT fk_first_date_relationship FOREIGN KEY (relationship_id) REFERENCES relationships(relationship_id)
);


--                    HOOKUPS / CASUAL RELATIONSHIPS
-- ========================================================================

CREATE TABLE hookups (
    hookup_id       INT PRIMARY KEY,
    person_id       INT NOT NULL,
    age_group       VARCHAR(20),
    hookup_date     DATE NOT NULL,

    CONSTRAINT fk_hookup_person FOREIGN KEY (person_id) REFERENCES persons(person_id)
);


/*                          ANALYTICAL INTENT
=========================================================================== 
This schema is ready to :
- Insert sample data (INSERT INTO ...)
- Run queries with JOINs and aggregations
- Perform temporal and behavioral analytics
- Apply ranking, GROUP BY, window functions                              */

