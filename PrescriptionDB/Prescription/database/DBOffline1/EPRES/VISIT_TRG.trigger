<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <identifier class="java.lang.String">cb3319bc-94de-4e6e-b39d-b2be99ce6834</identifier>
  </ID>
  <name>VISIT_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.VISIT_ID IS NULL THEN
      SELECT VISIT_SEQ.NEXTVAL INTO :NEW.VISIT_ID FROM DUAL;
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
  <source>CREATE TRIGGER VISIT_TRG 
BEFORE INSERT ON VISIT 
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.VISIT_ID IS NULL THEN
      SELECT VISIT_SEQ.NEXTVAL INTO :NEW.VISIT_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>VISIT</name>
    <identifier class="java.lang.String">470f2586-c89c-4e32-8fda-57a892a8cd72</identifier>
    <schemaName>EPRES</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
