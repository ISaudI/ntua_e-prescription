<?xml version = '1.0' encoding = 'UTF-8'?>
<trigger xmlns="http://xmlns.oracle.com/jdeveloper/1111/offlinedb">
  <ID class="oracle.javatools.db.IdentifierBasedID">
    <identifier class="java.lang.String">6d6ea3bd-07d4-4785-91e1-5c9e133872da</identifier>
  </ID>
  <name>PAYMENTS_TRG</name>
  <baseType>TABLE</baseType>
  <code>BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.PAYMENT_ID IS NULL THEN
      SELECT PAYMENTS_SEQ.NEXTVAL INTO :NEW.PAYMENT_ID FROM DUAL;
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
  <source>CREATE TRIGGER PAYMENTS_TRG 
BEFORE INSERT ON PAYMENTS 
FOR EACH ROW 
BEGIN
  &lt;&lt;COLUMN_SEQUENCES&gt;&gt;
  BEGIN
    IF :NEW.PAYMENT_ID IS NULL THEN
      SELECT PAYMENTS_SEQ.NEXTVAL INTO :NEW.PAYMENT_ID FROM DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;</source>
  <statementLevel>false</statementLevel>
  <tableID class="oracle.javatools.db.IdentifierBasedID">
    <name>PAYMENTS</name>
    <identifier class="java.lang.String">cfad75d1-6eb1-47ac-8716-36690b5343c2</identifier>
    <schemaName>EPRES</schemaName>
    <type>TABLE</type>
  </tableID>
  <timing>BEFORE</timing>
</trigger>
