<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <identifier class="java.lang.String">5f07fee3-53b3-413e-b0e0-2a6db3d7746d</identifier>
  </ID>
  <name>FKA_DOCTORS_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.FKA_DOCTORS_ID IS NULL THEN
      SELECT FKA_DOCTORS_SEQ.NEXTVAL INTO :NEW.FKA_DOCTORS_ID FROM DUAL;
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
  <source>CREATE TRIGGER FKA_DOCTORS_TRG 
BEFORE INSERT ON FKA_DOCTORS 
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.FKA_DOCTORS_ID IS NULL THEN
      SELECT FKA_DOCTORS_SEQ.NEXTVAL INTO :NEW.FKA_DOCTORS_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>FKA_DOCTORS</name>
    <identifier class="java.lang.String">48115d41-b2a7-457a-b69d-a4b5eba3312b</identifier>
    <schemaName>EPRES</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
