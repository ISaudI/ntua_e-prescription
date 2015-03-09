<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <identifier class="java.lang.String">b6b5bfe1-2bd1-4c8b-9eea-ffa4dd3f64e8</identifier>
  </ID>
  <name>FKA_PHARMACY_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.FKA_PHARMACY_ID IS NULL THEN
      SELECT FKA_PHARMACY_SEQ.NEXTVAL INTO :NEW.FKA_PHARMACY_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</code>
  <enabled>true</enabled>
  <events>
    <event>INSERT</event>
  </events>
  <schema>
    <name>EPRES</name>
  </schema>
  <source>CREATE TRIGGER FKA_PHARMACY_TRG 
BEFORE INSERT ON FKA_PHARMACY 
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.FKA_PHARMACY_ID IS NULL THEN
      SELECT FKA_PHARMACY_SEQ.NEXTVAL INTO :NEW.FKA_PHARMACY_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>FKA_PHARMACY</name>
    <identifier class="java.lang.String">8525b8f8-1552-42ac-b999-b18f6b0c9df5</identifier>
    <schemaName>EPRES</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
