# spring_boot_seed
Integrated with Hibernate/JPA

# Tested JDK Version
1.8.0_162

# Default Database
H2 (in memory mode)
    
    ## Change database to others
    1. Refer to application.properties, i.e. [MySQL] ...
    2. Spring will auto load `resource\data.sql` into connected database, remove this file if not needed.
    3. Spring has Hikari as built-in database pool
