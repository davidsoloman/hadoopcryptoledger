CREATE database IF NOT EXISTS hcl;
USE hcl;
CREATE FUNCTION hclBitcoinTransactionHash as 'org.zuinnote.hadoop.bitcoin.hive.udf.BitcoinTransactionHashUDF' USING JAR '/tmp/hadoopcryptoledger-hiveudf-1.0.7.jar';
CREATE FUNCTION hclBitcoinTransactionHashSegwit as 'org.zuinnote.hadoop.bitcoin.hive.udf.BitcoinTransactionHashSegwitUDF' USING JAR '/tmp/hadoopcryptoledger-hiveudf-1.0.7.jar';
CREATE FUNCTION hclBitcoinScriptPattern as 'org.zuinnote.hadoop.bitcoin.hive.udf.BitcoinScriptPaymentPatternAnalyzerUDF' USING JAR '/tmp/hadoopcryptoledger-hiveudf-1.0.7.jar';
