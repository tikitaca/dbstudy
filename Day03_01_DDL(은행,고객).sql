

DROP TABLE CUSTOMER_TBL;
DROP TABLE BANK_TBL;

CREATE TABLE BANK_TBL (

    BANK_CODE  VARCHAR2(20 BYTE) NOT NULL,
    BANK_NAME  VARCHAR2(30 BYTE),
    CONSTRAINT PK_BANK PRIMARY KEY (BANK_CODE)
);


CREATE TABLE CUSTOMER_TBL (

    NO        NUMBER            NOT NULL,
    NAME      VARCHAR2(30 BYTE) NOT NULL,
    PHONE     VARCHAR2(30 BYTE) UNIQUE,
    AGE       NUMBER            CHECK(AGE BETWEEN 0 AND 100),
    BANK_CODE VARCHAR2(20 BYTE),
    CONSTRAINT PK_CUSTOMER PRIMARY KEY ( CUSTOMER_NO),
    CONSTRAINT FK_CUSTOMER_BANK FOREIGN KEY(BANK_CODE) REFERENCES BANK_TBL(BANK_CODE)
);

