<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <identifier class="java.lang.String">f67e4017-29e9-4cf5-8f6c-097932de3bbe</identifier>
  </ID>
  <name>FKA_PATIENT_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.FKA_PATIENT_ID IS NULL THEN
      SELECT FKA_PATIENT_SEQ.NEXTVAL INTO :NEW.FKA_PATIENT_ID FROM DUAL;
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
  <source>CREATE TRIGGER FKA_PATIENT_TRG 
BEFORE INSERT ON FKA_PATIENT 
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.FKA_PATIENT_ID IS NULL THEN
      SELECT FKA_PATIENT_SEQ.NEXTVAL INTO :NEW.FKA_PATIENT_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>FKA_PATIENT</name>
    <identifier class="java.lang.String">776f41ef-a777-4744-926f-fc57f24dcaa6</identifier>
    <schemaName>EPRES</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
