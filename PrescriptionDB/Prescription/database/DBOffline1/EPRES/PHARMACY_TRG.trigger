<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <identifier class="java.lang.String">b3087445-de50-43dd-8970-74e27fadb241</identifier>
  </ID>
  <name>PHARMACY_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.STORE_ID IS NULL THEN
      SELECT PHARMACY_SEQ.NEXTVAL INTO :NEW.STORE_ID FROM DUAL;
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
  <source>CREATE TRIGGER PHARMACY_TRG 
BEFORE INSERT ON PHARMACY 
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.STORE_ID IS NULL THEN
      SELECT PHARMACY_SEQ.NEXTVAL INTO :NEW.STORE_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>PHARMACY</name>
    <identifier class="java.lang.String">6302abdf-5d24-43f7-915e-a496a5b620bf</identifier>
    <schemaName>EPRES</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
