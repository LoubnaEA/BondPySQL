
/* APPLICATION SCENARIO
   01 DATA MODEL OVERVIEW (Conceptual Skeleton)
   -----------------------------------------------------------------------
   Purpose :
   - Describe the data model and business logic
   - Explain entities, relationships, constraints
   - No inserts, no analytics, no heavy SQL logic
=========================================================================== 



                           CORE ENTITIES
=========================================================================== 

TABLE : persons
---------------------------------------------------------------------------
Represents a person using the application.

Business meaning :
- A person can date multiple partners over time
- A person can give gifts, send messages, ghost or be ghosted

Key points :
- person_id is the unique identifier
- gender and age_group are analytical attributes
*/

persons
(
    person_id        PK,
    full_name,
    gender,
    age_group,
    created_at
);


/* 
TABLE : partners
---------------------------------------------------------------------------
Represents people involved in relationships.
(In this model, partners are also persons, but kept separate
to illustrate legacy or denormalized systems.)

Business meaning : Used mainly for relationship linking and analytics    */

partners
(
    partner_id       PK,
    partner_name,
    revenue,
    created_at
);

 
/*                        RELATIONSHIP DOMAIN
===========================================================================

TABLE : relationships
---------------------------------------------------------------------------
Central table of the application.

Business meaning :
- Represents a romantic or emotional relationship
- Tracks lifecycle (start, end, status)
- Stores emotional and behavioral indicators

Key relationships :
- FK to persons
- FK to partners     

Cardinality :
- 1 person → N relationships
- 1 partner → N relationships                                           */

relationships
(
    relationship_id          PK,
    person_id                FK → persons.person_id,
    partner_id               FK → partners.partner_id,

    relationship_start_date,
    relationship_end_date,

    status                   -- dating, married, divorced, ghosted, etc.
    reciprocated             -- boolean
    emotional_investment     -- numeric score
    body_count               -- optional metric

    ghosting_date,
    ghosted_by,              -- logical FK → persons.person_id (self-reference)
    blocked_by               -- logical FK → persons.person_id (self-reference)
);


/*                         COMMUNICATION & SENTIMENT
=========================================================================== 

TABLE : messages
---------------------------------------------------------------------------
Represents messages exchanged during relationships.

Business meaning :
- Used for sentiment analysis
- Allows gender-based or temporal analytics                             */

messages
(
    message_id       PK,
    person_id        FK → persons.person_id,
    relationship_id  FK → relationships.relationship_id,
    sentiment_score,
    message_date
);


/*                        GIFTS & MATERIAL INVESTMENT
=========================================================================== 

TABLE : gifts
---------------------------------------------------------------------------
Tracks gifts exchanged between partners.
Business meaning :
- Used to identify generosity patterns
- Supports ranking "most generous lover"

Provider_id is the gift giver                                           */

gifts
(
    gift_id          PK,
    provider_id      FK → persons.person_id,
    receiver_id      FK → partners.partner_id,
    gift_type,
    category,
    gift_date
);


/*                      CONFLICTS & BREAKDOWNS
=========================================================================== 

TABLE : conflicts
---------------------------------------------------------------------------
Represents relationship conflicts
Business meaning : Allows analysis of recurring conflict types           */

conflicts
(
    conflict_id      PK,
    relationship_id  FK → relationships.relationship_id,
    conflict_type,
    conflict_date
);


/*                         EVENTS & SPECIAL MOMENTS
=========================================================================== 

TABLE : first_dates
---------------------------------------------------------------------------
Represents first encounters
Business meaning : Used to analyze popular first-date locations          */

first_dates
(
    first_date_id    PK,
    relationship_id  FK → relationships.relationship_id,
    location,
    first_date_date
);


/*
TABLE : hookups
---------------------------------------------------------------------------
Represents casual relationships
Business meaning : Used for demographic trend analysis                   */

hookups
(
    hookup_id        PK,
    person_id        FK → persons.person_id,
    age_group,
    hookup_date
);


/*                    ANALYTICAL INTENT (NO SQL HERE)
=========================================================================== 
This data model allows :
  - Temporal analysis (relationships over time)
  - Behavioral analysis (ghosting, generosity, conflicts)
  - Demographic segmentation (age, gender)
  - Ranking and aggregation use cases
  - JOIN-heavy queries in real application scenarios

File 02_application_scenario.sql
will:
  - Create actual tables
  - Define constraints (PK, FK, NOT NULL)
  - Insert sample data
  - Execute real analytical queries
*/

