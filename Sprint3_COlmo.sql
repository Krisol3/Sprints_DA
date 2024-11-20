#Nivell 1
#Exercici 1
#La teva tasca és dissenyar i crear una taula anomenada "credit_card" que emmagatzemi detalls crucials sobre les targetes de crèdit. 
#La nova taula ha de ser capaç d'identificar de manera única cada targeta i establir una relació adequada amb les altres dues taules ("transaction" i "company"). 
#Després de crear la taula serà necessari que ingressis la informació del document denominat "dades_introduir_credit". 
#Recorda mostrar el diagrama i realitzar una breu descripció d'aquest.

USE transactions;

CREATE TABLE credit_card (
	id VARCHAR(20) PRIMARY KEY,
    iban VARCHAR(50) NOT NULL UNIQUE,
    pan VARCHAR (50),
    pin VARCHAR (4), 
    cvv VARCHAR (3),
    expiring_date VARCHAR(20));
    
/*
-- Insertamos datos de credit_card
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-2938', 'TR301950312213576817638661', '5424465566813633', '3257', '984', '10/30/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-2945', 'DO26854763748537475216568689', '5142423821948828', '9080', '887', '08/24/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-2952', 'BG45IVQL52710525608255', '4556 453 55 5287', '4598', '438', '06/29/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-2959', 'CR7242477244335841535', '372461377349375', '3583', '667', '02/24/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-2966', 'BG72LKTQ15627628377363', '448566 886747 7265', '4900', '130', '10/29/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-2973', 'PT87806228135092429456346', '544 58654 54343 384', '8760', '887', '01/30/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-2980', 'DE39241881883086277136', '402400 7145845969', '5075', '596', '07/24/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-2987', 'GE89681434837748781813', '3763 747687 76666', '2298', '797', '10/31/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-2994', 'BH62714428368066765294', '344283273252593', '7545', '595', '02/28/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3001', 'CY49087426654774581266832110', '511722 924833 2244', '9562', '867', '09/16/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3008', 'LU507216693616119230', '4485744464433884', '1856', '740', '04/05/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3015', 'PS119398216295715968342456821', '3784 662233 17389', '3246', '822', '01/31/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3022', 'GT91695162850556977423121857', '5164 1379 4842 3951', '5610', '342', '04/25/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3029', 'AZ62317413982441418123739746', '3429 279566 77631', '9708', '505', '09/02/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3036', 'AZ39336002925842865843941994', '3768 451556 48766', '2232', '565', '10/27/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3043', 'TN6488143310514852179535', '455676 6437463635', '5969', '196', '06/07/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3050', 'FR5167744369175836831854477', '4024007123722', '4834', '126', '10/09/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3057', 'LU931822574697545215', '3484 621767 21237', '6805', '848', '09/14/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3064', 'PS146965545449253377627273133', '3467 732741 26810', '3865', '498', '06/03/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3071', 'NO8923814763512', '3464 789562 23352', '6625', '661', '12/20/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3078', 'IS025127145884623279548733', '4539 322 74 2377', '9405', '720', '03/08/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3085', 'BE63114723972437', '5266 3346 1135 1687', '7241', '413', '05/10/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3092', 'RO65LSOD1166122125447487', '3488 754223 46253', '9417', '594', '12/19/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3099', 'PT26105275356823705537218', '448 55418 98863 789', '5612', '564', '01/22/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3106', 'AT684251637751136592', '349547146395283', '9733', '209', '01/27/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3113', 'IE26LCGT47732173572752', '341834822877471', '9011', '287', '06/12/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3120', 'RS72655766666166237144', '527646 533375 6577', '7658', '265', '01/16/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3127', 'PT83533461438644342816864', '4716 443 46 4368', '8038', '924', '01/16/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3134', 'BG23MYJQ52668951824779', '5146 3453 9766 2168', '7260', '935', '08/24/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3141', 'CH4437804777669672438', '3775 626726 45261', '2923', '330', '05/11/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3148', 'FI6261403224677114', '3733 238351 51810', '2326', '333', '09/28/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3155', 'AD2777204763277722050982', '4532263578421', '3015', '779', '01/12/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3162', 'HU56074054826233730628233311', '455666 645685 4443', '5898', '603', '05/18/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3169', 'AT658218806585843788', '5396 2876 7721 4764', '6102', '420', '06/25/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3176', 'LV84DASY1039958872222', '448538 587842 4778', '4457', '707', '03/04/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3183', 'GE90157928843338134463', '516318 373677 5641', '6198', '327', '10/01/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3190', 'CZ8102824126352535629363', '4532 563 85 3433', '4359', '849', '05/07/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3197', 'GT02497653655330848247645975', '402 40071 75272 977', '6921', '562', '05/26/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3204', 'DK6124134241868111', '4716486677272', '5714', '175', '10/30/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3211', 'HR5688747222861164805', '556665 6465764236', '8013', '321', '04/04/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3218', 'GI11ORSG759765522698689', '3423 966328 58736', '9417', '701', '02/23/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3225', 'FI9398462343991818', '453918 9241769620', '1809', '732', '12/20/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3232', 'GE84848451582810541526', '5188 1243 7228 3277', '2896', '688', '10/10/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3239', 'TN9614563570667381893122', '375218464485646', '9547', '702', '05/29/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3246', 'RO30GGSJ3530721590487098', '516153 4426684869', '6641', '318', '08/01/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3253', 'PL80213758374176596516617081', '3774 685179 94338', '4304', '779', '04/30/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3260', 'CH8995351081824762557', '3787 654694 79443', '7542', '558', '04/09/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3267', 'LU382234224147521315', '516836 8543385453', '8444', '501', '03/06/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3274', 'RO05EDYS9588970569818260', '5191242916828483', '6963', '355', '06/30/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3281', 'MU4132333444534342541344788855', '453 96588 74883 221', '9664', '388', '09/21/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3288', 'GB58VMFR53393445767055', '347669879358478', '5235', '957', '06/20/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3295', 'LT095387880608439682', '5218 2833 5642 3285', '6016', '227', '03/24/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3302', 'MC4224211849356240064776625', '5363 8827 4698 5185', '6691', '847', '06/10/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3309', 'CR2081908447841410311', '371268842998970', '7452', '540', '04/21/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3316', 'NO4885859734737', '5223 3547 5234 2529', '9892', '480', '12/01/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3323', 'BG05UBIX63820348156559', '4716 5927 4626 2576', '8319', '860', '01/18/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3330', 'MK71456225556982848', '3426 166473 78887', '1254', '631', '10/18/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3337', 'DK0489809027732315', '5526 8745 4379 5697', '1497', '842', '04/29/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3344', 'EE262462329276252488', '558282 528672 3529', '5776', '864', '05/15/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3351', 'PS818747844912473654321393528', '374884327643662', '6695', '251', '07/31/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3358', 'RO76DAFO6583348580208155', '527947 395589 2842', '8149', '818', '12/05/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3365', 'SE0386176836596558347004', '379272817627343', '8133', '544', '05/06/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3372', 'NL51QOLW8088607375', '4716272885378349', '1687', '615', '10/29/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3379', 'PL51252032162591574552438904', '552 68987 43664 734', '4899', '738', '05/03/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3386', 'HR9310391623647587418', '375233562287679', '7448', '433', '01/25/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3393', 'VG1468087984174645729577', '4338 849 61 6580', '7375', '763', '01/23/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3400', 'IL632507629847612453498', '377471145232444', '9482', '780', '10/22/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3407', 'TR233433112075745210754794', '524567 7675544688', '6453', '746', '11/03/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3414', 'ME89166252329582146461', '453928 528538 8655', '6737', '851', '12/22/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3421', 'LI4066946571873144363', '4556742876247', '3060', '487', '07/27/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3428', 'BA599578388415987525', '495148 173557 2886', '9659', '191', '09/12/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3435', 'LV78EROL4956681623444', '348822148472492', '9572', '595', '06/25/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3442', 'BE95776663878029', '453 27768 65882 270', '7645', '286', '04/16/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3449', 'MT85NLEX14216091545625854698315', '376837365486897', '5720', '934', '06/19/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3456', 'IE54YHLN41108474543511', '3748 253331 42587', '6168', '581', '01/30/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3463', 'RS35935488614486812686', '4485654846578', '7658', '260', '01/23/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3470', 'IE89IFED86672789753104', '346299466774779', '7613', '275', '02/21/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3477', 'IE23RKTG51749960265399', '4024 007 19 5290', '9147', '416', '03/12/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3484', 'LB36569561338865502415531197', '5429842764757330', '5536', '285', '04/23/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3491', 'AL97314628168855586364314097', '372752331656560', '6110', '183', '07/31/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3498', 'GR7833935468496664868255555', '371276755132362', '9838', '326', '06/06/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3505', 'SI06256455722871242', '5347 8838 5513 8245', '8682', '179', '05/13/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3512', 'PT85885256815643142117247', '526 14367 47427 870', '9702', '951', '05/02/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3519', 'MK36979684638543263', '511276 848777 3886', '7144', '284', '09/23/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3526', 'DO96743453603772941249085766', '513337 2217813834', '5933', '268', '08/04/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3533', 'KW6888412707934027102973846441', '443 99226 84354 893', '7730', '869', '09/14/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3540', 'SI90187218272592688', '511 33327 92698 731', '8311', '443', '02/04/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3547', 'SM6828237268917825759365683', '491667 268693 3630', '5033', '568', '07/30/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3554', 'NL79TIEC4836352563', '557849 466856 6869', '7812', '912', '05/13/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3561', 'RS64388401491579277484', '375757353392355', '8154', '222', '03/01/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3568', 'MC8600628661601486624435735', '4916483397665390', '2746', '228', '11/10/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3575', 'IT649NCAHI80852756786533231', '5171546679238191', '4460', '169', '04/03/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3582', 'IL394364721887868723280', '448 57136 53842 361', '9315', '211', '07/18/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3589', 'AE640696354928782425103', '5547 2595 1345 8648', '3357', '269', '10/07/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3596', 'GL8941840137249247', '546793 9179522284', '7783', '788', '11/24/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3603', 'IT166ASABI81164333755123881', '376495785724718', '3355', '862', '01/16/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3610', 'AD7964354272148656432616', '4556296895569', '2949', '337', '07/06/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3617', 'PK6727433059762436051444', '5541642144568453', '8587', '621', '09/13/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3624', 'AZ05827355332482137783650782', '455626 9762898616', '4283', '227', '07/26/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3631', 'ME39733337786187494515', '341445795282738', '5945', '575', '03/08/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3638', 'FO1945990517618388', '455677 668771 8786', '1256', '575', '10/15/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3645', 'PS774972273648295735416650271', '345444856288771', '3688', '415', '04/17/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3652', 'MR6884737183646473275241354', '453 98346 22735 456', '7566', '957', '09/12/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3659', 'SI32664633548106291', '518373 357275 7826', '1706', '437', '01/27/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3666', 'DE35385647561242046858', '4556 7844 3557 4824', '4798', '930', '03/26/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3673', 'AL36723216264979973318818691', '534184 7628924765', '6865', '733', '11/05/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3680', 'MD4799721070815687888150', '5426 4337 3314 6889', '8556', '690', '01/11/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3687', 'CY85273661157727025863952721', '5534 7744 3362 9230', '2688', '857', '07/19/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3694', 'MK52333444678878011', '542 54285 91467 261', '3204', '490', '09/23/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3701', 'CY04215371490518737133975175', '5151 8299 6379 6361', '7846', '835', '07/20/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3708', 'PL39534423485707927512822536', '5383428743855876', '2311', '277', '06/15/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3715', 'IS389474813577187701272239', '4532 634 73 5833', '7294', '780', '06/14/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3722', 'SI50942306532997569', '4716688698622567', '3785', '295', '08/10/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3729', 'MD5723087436783068347555', '402400 7128955884', '8571', '350', '03/02/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3736', 'LT273037680127756677', '521 84328 88538 272', '9593', '777', '02/06/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3743', 'BA542358041365401657', '345537652543545', '9314', '656', '06/11/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3750', 'CY80138698304356192781019706', '5175965455218886', '5633', '429', '11/29/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3757', 'HU63856737363800384694160203', '491666 857248 5677', '8557', '789', '08/20/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3764', 'DO83239184883525656124257488', '535 23847 59612 247', '6546', '194', '01/18/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3771', 'CH6157615368246495325', '493513 2859765811', '6253', '637', '10/13/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3778', 'SE7813107767427189556484', '343488771836851', '9170', '487', '04/17/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3785', 'ME38421331246858744050', '5112727325633686', '1755', '987', '08/13/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3792', 'PS186411068892851253263377041', '343236737828888', '4715', '132', '09/10/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3799', 'GI33VVRE012659621685934', '4712967296877185', '3394', '153', '04/19/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3806', 'MC0538772116622833532447367', '4024007167557377', '1657', '873', '10/11/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3813', 'MU1854487516225689318914472171', '3721 543253 57141', '3666', '459', '05/18/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3820', 'AZ58645632361051026278861261', '5237 8846 5276 4657', '6211', '176', '09/05/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3827', 'GB30AMTO46195520479336', '491628 4555196727', '3455', '253', '07/28/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3834', 'GR7588113679484663257728388', '4929753568393', '6319', '737', '04/19/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3841', 'KW8958881954473634154801236186', '4716767637524', '8884', '391', '09/03/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3848', 'SI35069513568830361', '3724 884241 65462', '8885', '530', '08/02/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3855', 'PK3716865643513618989515', '402400 7173189785', '8304', '626', '03/27/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3862', 'SM6022751049715477062682363', '4024 007 11 4630', '5069', '794', '04/18/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3869', 'DE85364581402287146253', '448 56527 58385 670', '6328', '278', '11/21/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3876', 'CR2918135947128138635', '547 25687 75283 521', '4059', '874', '04/28/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3883', 'SA4355324713311241428302', '5293346436977121', '5182', '127', '10/12/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3890', 'IT983UMRNI21173872518496787', '3459 722445 78883', '3581', '181', '12/28/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3897', 'BG55VBGF72807401414894', '553364 973385 8484', '5510', '320', '11/14/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3904', 'FI7847379817377733', '3448 483212 86718', '5432', '242', '10/31/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3911', 'GE79113073098939546812', '378578567864345', '5551', '365', '10/27/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3918', 'NO4414757761220', '5567675343638684', '5616', '230', '01/16/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3925', 'NL40SLES4851032267', '448 56746 54875 257', '6038', '485', '03/18/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3932', 'GB70LNPJ38342285277448', '546 77862 58793 264', '6111', '868', '12/27/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3939', 'KZ104499180575629164', '549 36446 86553 362', '1498', '726', '08/10/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3946', 'HR1647261369237564166', '4532 5355 8673 7332', '9541', '201', '04/29/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3953', 'MC4255568304773564515252430', '4556 5568 8483 8623', '5511', '662', '11/02/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3960', 'LT053237077744561475', '4485 6453 7433 6648', '9507', '802', '04/02/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3967', 'LV15RGGE2148331556435', '4627729464768', '8446', '662', '11/07/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3974', 'MU8635574885638983527718572267', '512786 265851 7231', '7779', '355', '06/04/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3981', 'BH86814579285516920703', '4916227354254973', '8688', '228', '10/20/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3988', 'MC8666247646629382420868611', '529354 796597 4583', '5062', '646', '02/21/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-3995', 'LI7464428182413219443', '543 68966 74594 655', '7719', '542', '04/07/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4002', 'CR3934465639573721674', '345886217197283', '3898', '227', '12/10/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4009', 'SK9446370242474562577506', '547689 878486 9655', '4268', '820', '09/30/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4016', 'MC9813918248828136126478487', '5587 6912 1246 7242', '5703', '258', '07/06/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4023', 'CY51592581594123621273159544', '455644 7854383438', '5475', '149', '08/19/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4030', 'HU51520639954884197894644059', '526462 632862 7750', '2679', '665', '08/22/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4037', 'BH81656454545158343182', '4539772524226', '9334', '902', '02/08/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4044', 'AL65255766650838829611407660', '556686 371762 7423', '4161', '279', '08/16/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4051', 'BA894455712898153048', '4539 643 69 6583', '5626', '578', '07/17/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4058', 'KZ376412202733109847', '533842 4553898680', '8620', '218', '09/16/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4065', 'TR526417795869815094868511', '453 28425 45663 249', '7800', '738', '08/08/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4072', 'AZ86457622571455018178415526', '526 82288 83662 623', '4558', '376', '12/03/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4079', 'AZ03248993733987407386489271', '543 59449 45541 757', '1833', '741', '05/11/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4086', 'LI6539309407187397889', '453227 751157 4585', '9440', '291', '07/25/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4093', 'GI98IMNL122444875373267', '3427 813242 45583', '4688', '893', '02/13/26');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4100', 'VG8474593807739539750089', '3728 223277 76753', '3676', '571', '08/19/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4107', 'MR9288383624277251666064411', '3484 346723 58533', '5757', '946', '07/27/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4114', 'MD3307836371789489654645', '512331 2837574483', '3928', '548', '03/23/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4121', 'LB22136126105935807432371414', '348328885683457', '1657', '311', '12/22/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4128', 'CY94263537405015481188625576', '531 84477 67369 689', '9543', '493', '06/23/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4135', 'MK28368851538688349', '342656568883952', '7949', '702', '10/18/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4142', 'KW7436055642163756700128861858', '373527374237224', '9253', '997', '08/03/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4149', 'AZ62859332370341166187843859', '4539936624499831', '5459', '477', '05/25/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4156', 'ES3457328958327932668290', '471688 264545 8288', '6064', '990', '03/10/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4163', 'SE7951484302898821300669', '4556 776 96 5734', '7098', '953', '01/11/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4170', 'FO8241513854141125', '3487 517469 44737', '3568', '805', '12/07/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4177', 'CH9552373968796160224', '373956257411822', '9267', '304', '09/12/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4184', 'DK5765675670768547', '3757 268529 84889', '3305', '348', '10/08/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4191', 'DO68192976973138848171352176', '4633651727248', '9911', '640', '02/21/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4198', 'MK54903280718335118', '471 69767 74983 544', '7564', '787', '09/21/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4205', 'LB64655537777363327873049938', '537441 4887327535', '1907', '466', '06/19/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4212', 'GB72JSWX57159548109499', '517964 861324 5258', '9992', '951', '08/14/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4219', 'MD1234119525145401270486', '4916521244969', '6190', '374', '09/15/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4226', 'CR7348306166727297113', '492924 3966325775', '3580', '659', '04/13/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4233', 'GI10TNGB218311472843723', '349284173298327', '7910', '380', '12/03/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4240', 'HU14165000028522870444423128', '343482733331820', '4428', '165', '06/08/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4247', 'PS043351233971437175221697418', '5122584253556449', '2803', '451', '09/02/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4254', 'LI8940154197432678354', '542585 4594298827', '3535', '150', '10/04/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4261', 'PL22231088720828377785042582', '4716 5331 5225 2735', '2203', '258', '11/17/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4268', 'RO20IQTP8772753836738261', '5182647149891853', '3855', '130', '11/13/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4275', 'AE491827142302887266369', '448 59926 15713 833', '6420', '468', '02/10/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4282', 'MK25347478559416776', '3779 817833 37651', '7841', '330', '08/10/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4289', 'PS346287549618920817748976574', '557488 568223 6518', '1424', '319', '11/22/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4296', 'BE54849601852351', '3774 962276 33714', '4122', '443', '03/05/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4303', 'FI1146379728733696', '3427 495828 22724', '5972', '604', '12/14/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4310', 'ME27022245810759125320', '3425 589947 37358', '3109', '291', '11/16/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4317', 'HU29174683935743230828356447', '491637 9834296569', '3842', '642', '08/20/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4324', 'CR2934427002645556549', '548381 497234 7694', '7811', '822', '03/20/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4331', 'KW9485332754781757886242955643', '3785 952493 68487', '7606', '377', '02/07/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4338', 'NL68INMN2724282872', '479 13433 42278 329', '4232', '865', '05/06/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4345', 'AT461138859877579187', '3762 911284 78975', '5552', '514', '08/08/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4352', 'BH23117460873638461245', '521 57929 38862 722', '7982', '282', '08/19/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4359', 'PK1842602717357586645371', '5558 8675 3467 2892', '6718', '224', '01/26/26');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4366', 'DO18505288663185557586783345', '346585482855422', '6375', '349', '09/14/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4373', 'IL605688171286254823573', '491673 846381 7575', '7674', '321', '12/20/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4380', 'GE63542411265576162132', '554456 4937879326', '3190', '325', '03/11/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4387', 'IT822CNDZI11212029746050255', '5224 7471 9335 6850', '6810', '735', '09/25/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4394', 'RO96LPSV6662689287844654', '448 53887 88766 825', '5960', '931', '06/04/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4401', 'TR815222651844952288928043', '5488857588723472', '7165', '913', '12/12/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4408', 'BG46XYWB75160439249575', '377867313281636', '5401', '227', '03/01/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4415', 'GR9013439946807535854241144', '3748 648746 49239', '2145', '221', '10/26/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4422', 'DO35657223646222965184075271', '3741 529436 82138', '2135', '781', '11/08/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4429', 'DK4377684158381786', '342834817654827', '9690', '765', '08/14/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4436', 'SI44273472107613844', '3476 295845 56451', '8975', '606', '05/23/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4443', 'BH44392039643136345028', '491 65266 67312 570', '2283', '141', '01/14/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4450', 'CR3961432301707841145', '491 63321 35675 379', '3978', '672', '11/09/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4457', 'GE36372634666440824664', '3758 893912 84425', '1715', '931', '05/05/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4464', 'IT822TKQEI12456688803483461', '446157 5546574669', '6717', '250', '08/25/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4471', 'TN7992220464142447614053', '3477 376225 51465', '4959', '234', '04/26/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4478', 'SI52116155174087513', '5451685219226844', '3161', '939', '01/10/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4485', 'GB30OKEB42532252608494', '3443 989324 57829', '6206', '963', '09/28/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4492', 'AE779264810935412319977', '5494485246476242', '1606', '508', '10/28/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4499', 'ES0381262481577966178550', '527 75588 27196 562', '4302', '639', '10/25/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4506', 'SE8424235059254817742452', '377866463541856', '7038', '118', '06/26/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4513', 'TN3753195693666878144912', '532787 5824467386', '1146', '847', '03/26/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4520', 'AD5031514560453613215340', '4716 7284 4346 4665', '9548', '556', '03/08/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4527', 'AZ50263195887432245221350166', '5233822643465574', '2635', '573', '09/07/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4534', 'GR8589386183211253555707312', '374615172136380', '3746', '956', '11/17/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4541', 'PL76249283566852676343404576', '453 97739 96445 724', '8963', '269', '06/15/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4548', 'SM8085983832124924136831104', '372445517264156', '2813', '879', '11/28/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4555', 'KZ297844259556510615', '512549 6577286826', '4144', '250', '12/13/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4562', 'SM7685486170878577324646271', '343266869577557', '5732', '570', '06/27/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4569', 'DK3216331269627227', '3744 663534 34891', '4318', '836', '03/30/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4576', 'MT05JWCF58868200575771634583813', '4532 573 68 7334', '9888', '140', '04/26/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4583', 'BA773327919989165734', '527 46161 75318 130', '3024', '563', '08/17/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4590', 'AT050596581744321211', '3443 187254 34777', '1669', '147', '08/19/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4597', 'AE225185405438011769777', '3754 737136 28831', '5882', '284', '09/12/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4604', 'CR5411943287103219088', '544734 7842782720', '7169', '619', '11/01/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4611', 'AZ02307463194073728570325332', '374238243234835', '4050', '882', '10/21/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4618', 'CY40326276160678118750340113', '5267481137212858', '1606', '377', '03/24/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4625', 'ES2561868643384424254806', '5298 3644 7749 2491', '5500', '351', '02/06/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4632', 'AT713147536938954289', '448 55874 86627 789', '7878', '763', '09/06/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4639', 'LI8155319586365581720', '373693321855284', '6606', '367', '12/03/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4646', 'CR7237735131501258248', '4485 8278 9259 2981', '1686', '987', '01/21/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4653', 'DE45027134377528457318', '4716 862 33 7962', '3850', '916', '09/24/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4660', 'LV89RQUC7474307666821', '492948 3588749370', '3290', '114', '07/04/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4667', 'PT79551618452454886142166', '3745 466677 72837', '2301', '738', '08/11/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4674', 'DO71864273752575855510355726', '3437 391826 27572', '4022', '581', '05/23/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4681', 'GE38261236401561281317', '448 57826 38974 722', '6486', '707', '04/13/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4688', 'IS383255756743611896271082', '347635882232257', '3159', '350', '01/07/26');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4695', 'GT44327784356731801238887639', '376558773427717', '8297', '734', '10/08/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4702', 'DK7772824378841077', '348642676875332', '3880', '445', '09/19/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4709', 'GE45504127369280160124', '453233 846716 4597', '4796', '233', '11/04/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4716', 'PL75422719203842155307261926', '546684 833417 5543', '4252', '997', '08/14/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4723', 'FI8248793454336573', '3414 376437 29598', '7936', '243', '07/31/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4730', 'EE541536644818872885', '373396765877539', '5988', '988', '03/08/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4737', 'AT278617748359359721', '3426 555216 37521', '9048', '509', '02/25/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4744', 'AZ58751886174806034766368322', '5256255735951122', '6209', '606', '10/12/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4751', 'PK8373046933330403264694', '3436 372241 88142', '6392', '760', '06/19/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4758', 'GB51GUVH61469185263634', '378486693428441', '5241', '571', '07/27/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4765', 'SA2888713798782221436615', '448 51353 39347 393', '1667', '153', '02/28/21');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4772', 'ME59832015454148127328', '455 63485 32288 611', '1201', '552', '09/21/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4779', 'FI9109231810971761', '513 92416 26288 645', '8788', '131', '08/18/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4786', 'SI51703104173167515', '557 97688 75435 755', '9002', '199', '05/15/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4793', 'HU95215627749276573565556322', '471662 767641 7624', '7216', '848', '11/09/23');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4800', 'SI97824334522161436', '5455 7952 5528 3322', '3745', '886', '05/23/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4807', 'LB19298318715580851625676971', '4539 4326 8269 4216', '8596', '626', '04/07/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4814', 'MR4845282437847152280636374', '374471619343357', '8790', '124', '12/19/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4821', 'LT253147505686466784', '453987 7873842836', '9000', '867', '07/15/20');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4828', 'BG11ILMJ30149367569464', '4485252735942', '2789', '942', '09/04/22');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4835', 'PT34592171131763200132583', '3723 677744 22550', '1149', '680', '01/08/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4842', 'SA2156708581957118818229', '3774 636724 83250', '4655', '750', '11/11/24');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4849', 'SE2813123487163628531121', '5223363813491514', '9992', '779', '03/21/25');
INSERT INTO credit_card (id, iban, pan, pin, cvv, expiring_date) VALUES (        'CcU-4856', 'TR373872558313545667124286', '349528235713651', '9086', '974', '05/19/23');
*/

#Exercici 2
#El departament de Recursos Humans ha identificat un error en el número de compte de l'usuari amb ID CcU-2938. 
#La informació que ha de mostrar-se per a aquest registre és: R323456312213576817699999. 
#Recorda mostrar que el canvi es va realitzar.

UPDATE credit_card 
    SET iban = 'R323456312213576817699999' 
    WHERE id = 'CcU-2938';

#Exercici 3
#En la taula "transaction" ingressa un nou usuari amb la següent informació:
   
INSERT INTO company
(id, company_name, phone, email, country, website) VALUES ('b-9999', 'unknown', 000000000, 'unknown', 'unknown', 'unknown');

INSERT INTO credit_card
(id, iban, pan, pin, cvv, expiring_date) VALUES ('CcU-9999', '00000000000000000000', '00000000000', 0000, 000, '01-01-2028');

INSERT INTO transaction 
(id, credit_card_id, company_id, user_id, lat, longitude, amount, declined) VALUES ('108B1D1D-5B23-A76C-55EF-C568E49A99DD', 
'CcU-9999', 'b-9999', 9999, 829.999, -117.999, 111.11, 0); 

#Exercici 4
#Des de recursos humans et sol·liciten eliminar la columna "pan" de la taula credit_card. 
#Recorda mostrar el canvi realitzat.
ALTER TABLE credit_card DROP COLUMN pan;

#Nivell 2
#Exercici 1
#Elimina de la taula transaction el registre amb ID 02C6201E-D90A-1859-B4EE-88D2986D3B02 de la base de dades.
DELETE FROM transaction WHERE id = '02C6201E-D90A-1859-B4EE-88D2986D3B02';

#Exercici 2
#La secció de màrqueting desitja tenir accés a informació específica per a realitzar anàlisi i estratègies efectives. 
#S'ha sol·licitat crear una vista que proporcioni detalls clau sobre les companyies i les seves transaccions. 
#Serà necessària que creïs una vista anomenada VistaMarketing que contingui la següent informació: Nom de la companyia. Telèfon de contacte. País de residència. Mitjana de compra realitzat per cada companyia. 
#Presenta la vista creada, ordenant les dades de major a menor mitjana de compra.
    
CREATE VIEW VistaMarketing AS
SELECT c.company_name, c.phone, c.country, ROUND(avg(t.amount),2) AS mitjana_compra
FROM company AS c
LEFT JOIN transaction AS t
	ON c.id = t.company_id
GROUP BY 1, 3, 2
ORDER BY 4 DESC;
    
#Consulta per verificar que la VIEW funciona correctament
SELECT *
FROM VistaMarketing;
    

#Exercici 3
#Filtra la vista VistaMarketing per a mostrar només les companyies que tenen el seu país de residència en "Germany" 
SELECT *
FROM VistaMarketing
WHERE country = 'Germany';
    
#Nivell 3
#Exercici 1
#La setmana vinent tindràs una nova reunió amb els gerents de màrqueting. 
#Un company del teu equip va realitzar modificacions en la base de dades, però no recorda com les va realitzar. 

# PAS 1. Modificació de tipus de camp. Passar CVV de VARCHAR(3) a INT
ALTER TABLE credit_card MODIFY cvv INT;

#PAS 2. Afegir la columna fecha_actual a la taula credit_card amb format DATE
ALTER TABLE credit_card ADD COLUMN fecha_actual DATE;

#PAS 3. Eliminar l’atribut ‘website’ de la taula company. 
ALTER TABLE company DROP COLUMN website; 


#PAS 4. Creació de la taula data_user
CREATE TABLE IF NOT EXISTS user (
        id INT PRIMARY KEY,
        name VARCHAR(100),
        surname VARCHAR(100),
        phone VARCHAR(150),
        email VARCHAR(150),
        birth_date VARCHAR(100),
        country VARCHAR(150),
        city VARCHAR(150),
        postal_code VARCHAR(100),
        address VARCHAR(255),
        FOREIGN KEY(id) REFERENCES transaction(user_id) 
);

#Afegir l'índex un cop creada la taula
CREATE INDEX idx_user_id ON transaction(user_id);

#Afegir les dades a la taula USER
SET foreign_key_checks = 0;
/*
-- Insertamos datos de user
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "1", "Zeus", "Gamble", "1-282-581-0551", "interdum.enim@protonmail.edu", "Nov 17, 1985",         "United States", "Lowell", "73544", "348-7818 Sagittis St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "2", "Garrett", "Mcconnell", "(718) 257-2412", "integer.vitae.nibh@protonmail.org", "Aug 23, 1992",         "United States", "Des Moines", "59464", "903 Sit Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "3", "Ciaran", "Harrison", "(522) 598-1365", "interdum.feugiat@aol.org", "Apr 29, 1998",         "United States", "Columbus", "56518", "736-2063 Tellus St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "4", "Howard", "Stafford", "1-411-740-3269", "ornare.egestas@icloud.edu", "Feb 18, 1989",         "United States", "Kailua", "77417", "Ap #545-2244 Erat. Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "5", "Hayfa", "Pierce", "1-554-541-2077", "et.malesuada.fames@hotmail.org", "Sep 26, 1998",         "United States", "Sandy", "31564", "341-2821 Ultrices Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "6", "Joel", "Tyson", "(718) 288-8020", "gravida.nunc.sed@yahoo.ca", "Oct 15, 1989",         "United States", "Nashville", "96838", "888-2799 Amet Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "7", "Rafael", "Jimenez", "(817) 689-0478", "eget@outlook.ca", "Dec 4, 1981",         "United States", "Hillsboro", "29874", "8627 Malesuada Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "8", "Nissim", "Franks", "(692) 157-3469", "egestas.aliquam.fringilla@google.ca", "Aug 1, 1993",         "United States", "Jackson", "61750", "Ap #251-7144 Integer St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "9", "Mannix", "Mcclain", "(590) 883-2184", "aliquam.nisl@outlook.com", "Jan 24, 1987",         "United States", "Richmond", "35987", "647-3080 Lacus. St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "10", "Robert", "Mccarthy", "(324) 746-6771", "fermentum@protonmail.com", "Apr 30, 1984",         "United States", "Eugene", "85526", "P.O. Box 773, 3594 Ornare St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "11", "Joan", "Baird", "(981) 429-8106", "et@outlook.net", "Feb 25, 1990",         "United States", "Lincoln", "35211", "P.O. Box 687, 8917 Ligula St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "12", "Benedict", "Wheeler", "1-515-824-2855", "tincidunt.donec.vitae@hotmail.couk", "Aug 6, 1999",         "United States", "Lewiston", "92393", "748-8694 Porttitor Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "13", "Allegra", "Stanton", "1-927-753-6488", "proin.eget@protonmail.ca", "May 19, 1990",         "United States", "Kearney", "14947", "4457 Ante. Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "14", "Sara", "Flynn", "1-311-646-9333", "integer@outlook.net", "Dec 27, 1988",         "United States", "Warren", "20288", "P.O. Box 865, 4397 Ante St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "15", "Noelani", "Patrick", "1-723-488-5894", "sem.magna@google.com", "Sep 17, 1993",         "United States", "Orlando", "47987", "596-5044 Sapien, Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "16", "Eric", "Roth", "1-218-549-8253", "lorem.sit@yahoo.net", "Sep 7, 1988",         "United States", "Reading", "96697", "P.O. Box 541, 5137 Non Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "17", "Bruce", "Gill", "(744) 732-8628", "metus@aol.net", "Mar 4, 1990",         "United States", "Davenport", "43415", "Ap #836-9508 Vitae, Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "18", "Russell", "Jimenez", "(657) 779-2438", "orci@outlook.edu", "Aug 26, 1993",         "United States", "Hattiesburg", "75647", "4095 Quam Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "19", "Nicholas", "Travis", "1-330-223-9652", "libero.dui@hotmail.com", "Jul 15, 1981",         "United States", "Jacksonville", "71727", "Ap #459-539 Lectus Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "20", "Kelsey", "Bates", "(653) 724-4754", "ullamcorper.nisl@aol.com", "May 6, 1981",         "United States", "Gulfport", "50423", "824-3624 Lacinia St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "21", "Hall", "Reeves", "(241) 759-9235", "erat.eget@hotmail.edu", "Jul 22, 1987",         "United States", "Warren", "85521", "Ap #745-5948 Sollicitudin St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "22", "Allistair", "Holmes", "1-265-323-0812", "donec.tempor.est@protonmail.com", "Nov 5, 1990",         "United States", "Montpelier", "85914", "Ap #794-4229 Ante Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "23", "Kelsie", "Bass", "1-837-832-5631", "consequat@google.ca", "Apr 2, 1990",         "United States", "Jefferson City", "97237", "407-7562 A, Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "24", "Nolan", "Cash", "(273) 334-3785", "nam@hotmail.com", "Sep 9, 1994",         "United States", "Owensboro", "61256", "501-2733 Luctus. Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "25", "Wanda", "Campbell", "(702) 823-5535", "sagittis@google.couk", "May 31, 1999",         "United States", "San Jose", "88665", "Ap #337-8747 Auctor. Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "26", "Aquila", "Strickland", "1-246-231-5495", "enim.sit@icloud.com", "Sep 28, 1982",         "United States", "Colchester", "26637", "Ap #260-4612 Massa Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "27", "Diana", "Williamson", "1-285-365-7779", "id.nunc@google.com", "Dec 14, 1991",         "United States", "Kearney", "93484", "362-9552 Sed Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "28", "Elmo", "Cain", "1-663-583-6021", "nec.metus.facilisis@google.org", "Oct 13, 1980",         "United States", "Columbus", "25225", "P.O. Box 585, 4446 Suspendisse St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "29", "Deacon", "Sharpe", "(312) 529-1643", "hendrerit@icloud.net", "Sep 19, 1979",         "United States", "Naperville", "63967", "672-9145 Ullamcorper, Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "30", "Martena", "Blackwell", "1-336-632-3280", "at.nisi.cum@icloud.org", "Feb 21, 1987",         "United States", "Columbia", "53144", "641 Lacus. St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "31", "Francis", "Bryant", "(654) 360-7374", "quisque.ac.libero@protonmail.edu", "Aug 17, 1992",         "United States", "Waterbury", "91358", "P.O. Box 596, 9052 Quisque St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "32", "Chase", "Yang", "1-771-216-5335", "pellentesque.eget@google.net", "Apr 23, 1999",         "United States", "Duluth", "32807", "207-9951 Mi, Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "33", "Venus", "Sanders", "(679) 326-6342", "nec.ante.maecenas@aol.com", "Jan 6, 1990",         "United States", "Little Rock", "40790", "4840 Lorem Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "34", "Sopoline", "Branch", "1-557-503-3642", "nec@yahoo.org", "Apr 8, 1979",         "United States", "Gary", "79667", "745 Vivamus Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "35", "Yvonne", "Gibson", "1-424-288-3275", "risus@outlook.org", "Jan 7, 1993",         "United States", "Vancouver", "21213", "Ap #356-7162 Ligula Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "36", "Raymond", "Thornton", "1-581-648-7426", "enim.nisl@google.edu", "Dec 6, 1982",         "United States", "Kansas City", "26231", "746-3251 Aptent Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "37", "Graiden", "Glover", "(888) 957-3868", "non.hendrerit@hotmail.ca", "Nov 11, 1987",         "United States", "Portland", "35397", "Ap #497-8090 Vel Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "38", "Abra", "Doyle", "(367) 861-9621", "augue.eu@outlook.edu", "Aug 22, 1986",         "United States", "Chicago", "54137", "409-9169 Cubilia St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "39", "Nyssa", "Shaffer", "1-899-494-4941", "malesuada.fames@google.ca", "Jul 2, 1991",         "United States", "Columbus", "27828", "4215 Libero Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "40", "Astra", "Alexander", "1-877-546-5066", "lectus.nullam.suscipit@google.org", "Mar 12, 1983",         "United States", "Columbus", "78276", "P.O. Box 384, 117 Et St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "41", "Uriel", "Hebert", "1-265-846-2455", "donec@outlook.com", "Nov 30, 1981",         "United States", "Juneau", "33549", "670-5867 Eget Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "42", "Lucy", "Branch", "(459) 164-9989", "odio.etiam@aol.couk", "Oct 31, 1991",         "United States", "Joliet", "27874", "134-848 Orci, Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "43", "Jayme", "Chavez", "(542) 568-7326", "fusce.feugiat@outlook.com", "Jul 29, 1984",         "United States", "Aurora", "28283", "8659 Enim. Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "44", "Aquila", "Haley", "1-951-243-1892", "tempus.risus@outlook.edu", "Jan 21, 1996",         "United States", "Newark", "51734", "Ap #197-7436 Neque. Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "45", "Richard", "O'donnell", "1-275-844-6782", "ac.nulla@outlook.org", "Oct 4, 1986",         "United States", "Frankfort", "72520", "P.O. Box 333, 3191 Ullamcorper, Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "46", "Alika", "Valdez", "(781) 178-0838", "dapibus.gravida@yahoo.net", "Aug 8, 1990",         "United States", "Salem", "55729", "P.O. Box 580, 196 Cras Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "47", "Herrod", "Wright", "(575) 645-3218", "odio.auctor.vitae@yahoo.edu", "Nov 11, 1999",         "United States", "Fort Wayne", "72865", "8745 Elementum Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "48", "Patrick", "Reyes", "1-607-729-5993", "conubia.nostra@icloud.com", "Jul 29, 1986",         "United States", "San Jose", "96740", "1150 Etiam Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "49", "Lev", "Roth", "1-685-331-7392", "auctor.vitae.aliquet@yahoo.net", "Dec 3, 1981",         "United States", "Richmond", "52748", "P.O. Box 455, 4035 Ullamcorper, Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "50", "Aretha", "Chang", "1-634-250-1977", "suspendisse.aliquet.molestie@hotmail.edu", "May 11, 1998",         "United States", "Jonesboro", "26937", "491 Neque St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "51", "Lionel", "Griffith", "1-816-243-8788", "ultricies.sem.magna@yahoo.org", "Apr 3, 1993",         "United States", "Wichita", "17638", "P.O. Box 191, 5848 A, Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "52", "Sheila", "Sullivan", "(426) 608-1653", "arcu.vel@google.edu", "May 17, 1981",         "United States", "Sacramento", "48147", "Ap #644-7695 Nec, Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "53", "Lucas", "Lloyd", "(513) 819-9413", "sagittis.duis.gravida@outlook.net", "Jun 20, 1980",         "United States", "Waterbury", "56684", "745-3814 Metus. Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "54", "Emma", "Park", "(581) 468-8549", "vel.turpis.aliquam@icloud.org", "May 27, 1991",         "United States", "Topeka", "70684", "Ap #558-7250 Vivamus Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "55", "Barrett", "Andrews", "(573) 474-8979", "ligula.consectetuer@protonmail.edu", "Nov 28, 1995",         "United States", "Tacoma", "14982", "5363 Rhoncus Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "56", "Odysseus", "Frye", "(236) 402-6048", "sociis.natoque@outlook.org", "Feb 19, 1983",         "United States", "Norman", "74030", "772-6878 Sociosqu Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "57", "Daquan", "Kirk", "1-748-565-9125", "ultricies@hotmail.ca", "Dec 22, 1994",         "United States", "Grand Rapids", "46875", "5438 Odio. Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "58", "Sandra", "Owens", "1-961-472-4829", "eu.enim@icloud.ca", "Oct 14, 1980",         "United States", "Fort Worth", "44233", "465-230 Ullamcorper, Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "59", "Heather", "Bradshaw", "1-535-845-1352", "luctus.et@aol.couk", "Dec 4, 1984",         "United States", "Kaneohe", "85163", "6641 Convallis St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "60", "Roth", "Cook", "(122) 759-2618", "ullamcorper.eu@icloud.edu", "Nov 23, 1996",         "United States", "Aurora", "26839", "Ap #815-8102 Ante. St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "61", "Duncan", "Romero", "1-226-441-1416", "ligula.aenean.euismod@hotmail.com", "Feb 4, 1990",         "United States", "Hilo", "68158", "267-173 Felis Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "62", "Phyllis", "Holt", "1-806-654-1534", "metus.vitae.velit@outlook.couk", "Jun 7, 1987",         "United States", "Newark", "81711", "Ap #111-6364 Libero. Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "63", "Beverly", "Burt", "(336) 263-4576", "aliquam.enim@aol.edu", "Dec 12, 1996",         "United States", "Pittsburgh", "18438", "P.O. Box 632, 6754 Fringilla Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "64", "Irma", "Whitehead", "1-332-774-7232", "mauris.quis@google.org", "Feb 14, 1988",         "United States", "Norman", "47637", "393-6189 Sem Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "65", "Yeo", "Emerson", "(473) 596-9486", "lacinia.at.iaculis@aol.net", "Sep 26, 1993",         "United States", "Salem", "71835", "Ap #897-3426 Orci, Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "66", "Bert", "Juarez", "1-404-537-2914", "pede.nec@outlook.net", "Sep 14, 1988",         "United States", "Colchester", "85478", "757-6748 Placerat St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "67", "Kenneth", "Morrison", "1-214-178-7152", "elementum.sem.vitae@outlook.org", "Sep 10, 1981",         "United States", "Saint Louis", "65146", "801-4640 Odio Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "68", "Whoopi", "Ford", "1-548-301-4313", "enim.diam.vel@google.com", "Apr 30, 1979",         "United States", "Bloomington", "76233", "P.O. Box 312, 3903 Aliquam Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "69", "Stone", "Atkinson", "1-751-189-8258", "etiam@outlook.com", "Jan 31, 1993",         "United States", "Columbus", "36506", "Ap #820-7449 Tellus Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "70", "Debra", "Farley", "(377) 214-5814", "non.justo@aol.com", "Jan 31, 1985",         "United States", "San Jose", "88326", "P.O. Box 855, 7643 Eu Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "71", "Emerson", "Hess", "1-342-775-1174", "orci.tincidunt.adipiscing@icloud.ca", "May 12, 1984",         "United States", "Mesa", "33568", "Ap #191-5633 Lectus Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "72", "Jael", "Robles", "(267) 616-3375", "lorem.eget.mollis@protonmail.net", "Jun 6, 1983",         "United States", "Spokane", "97103", "266 Dictum Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "73", "Warren", "Christian", "1-125-829-9354", "malesuada.vel@icloud.ca", "Jan 12, 1993",         "United States", "Boise", "95246", "Ap #323-5264 Convallis Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "74", "Zelenia", "Good", "1-971-397-7840", "aenean@google.couk", "Sep 21, 1988",         "United States", "Wichita", "78518", "176-5987 Sociis St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "75", "Colleen", "Juarez", "1-647-277-0329", "sodales@yahoo.edu", "May 25, 1990",         "United States", "Lewiston", "36194", "919-2582 Et, St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "76", "Glenna", "Gutierrez", "(567) 428-5368", "amet@outlook.couk", "Sep 25, 1990",         "United States", "Newark", "58673", "9288 Posuere St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "77", "Jared", "Compton", "1-416-623-5165", "vel.quam@outlook.net", "Jan 18, 1999",         "United States", "Norfolk", "13086", "354-782 Tempor Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "78", "Camilla", "Zimmerman", "(403) 839-3861", "enim@aol.com", "Nov 20, 1997",         "United States", "Aurora", "79643", "Ap #612-9307 Metus Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "79", "Preston", "Hubbard", "(485) 611-5951", "in.cursus.et@protonmail.com", "Aug 16, 2000",         "United States", "Savannah", "73062", "P.O. Box 761, 364 Mauris Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "80", "Sophia", "Bradford", "(795) 358-4243", "eu@outlook.com", "Feb 10, 1985",         "United States", "Paradise", "89058", "Ap #425-5343 Fermentum Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "81", "Acton", "Gallegos", "1-784-875-8068", "rhoncus.donec@yahoo.org", "Feb 6, 1989",         "United States", "Lexington", "54348", "5613 Ut St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "82", "Stacey", "Moses", "(768) 696-2845", "ante.iaculis.nec@hotmail.edu", "Sep 7, 1985",         "United States", "South Portland", "84463", "Ap #786-4555 Scelerisque Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "83", "Dana", "Ware", "1-997-209-1750", "nisi.a@outlook.net", "Nov 29, 1979",         "United States", "Hillsboro", "59188", "Ap #801-3094 Nec Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "84", "Craig", "Shepherd", "1-817-268-8038", "feugiat@protonmail.net", "Jul 21, 1997",         "United States", "Dover", "29670", "P.O. Box 629, 4780 Egestas Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "85", "Dawn", "Murray", "1-818-547-6341", "ante.dictum.mi@outlook.couk", "Dec 13, 1989",         "United States", "Fairbanks", "67154", "8209 Morbi Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "86", "Quintessa", "Buckley", "1-461-623-4184", "justo.sit.amet@hotmail.ca", "Dec 16, 1987",         "United States", "Anchorage", "95823", "572-4088 Tempor, Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "87", "Camden", "Carpenter", "1-842-231-7504", "enim.commodo@google.ca", "Aug 14, 1981",         "United States", "Waterbury", "78847", "5748 Amet Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "88", "Holmes", "Ramsey", "(913) 726-8674", "id.erat@aol.net", "Jul 3, 1998",         "United States", "Augusta", "35453", "P.O. Box 359, 8428 Nec, St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "89", "Lars", "Mercado", "1-561-562-1561", "sem.vitae@aol.net", "Apr 27, 1991",         "United States", "Huntsville", "34901", "Ap #892-9811 Proin St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "90", "Alika", "Kinney", "(625) 262-0063", "parturient@hotmail.org", "Jan 3, 1996",         "United States", "Davenport", "64481", "P.O. Box 898, 349 Ultricies Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "91", "Serina", "Carter", "(852) 256-1633", "tellus.id.nunc@icloud.com", "Feb 14, 1984",         "United States", "Reading", "72245", "424-6510 Sit Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "92", "Lynn", "Riddle", "1-387-885-4057", "vitae.aliquet@outlook.edu", "Sep 21, 1984",         "United States", "Bozeman", "61871", "P.O. Box 712, 7907 Est St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "93", "Kimberley", "Avila", "(614) 862-3520", "magna.phasellus@outlook.com", "Apr 4, 1997",         "United States", "Burlington", "71305", "269-4732 Maecenas Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "94", "Kim", "Zimmerman", "(406) 496-7968", "sed.dictum@hotmail.couk", "Oct 7, 1981",         "United States", "Pittsburgh", "89349", "Ap #274-5686 Nec Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "95", "Chase", "Ellis", "(322) 137-3271", "quisque.purus@hotmail.edu", "Dec 19, 2000",         "United States", "New Haven", "72721", "1311 Accumsan Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "96", "Brennan", "Wynn", "(831) 607-3574", "nullam.ut@yahoo.net", "Nov 1, 1988",         "United States", "Lewiston", "74004", "Ap #774-4981 Elementum Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "97", "Joseph", "Davidson", "1-184-847-8256", "mauris@outlook.net", "Jan 18, 1987",         "United States", "Allentown", "88451", "P.O. Box 178, 6049 Luctus St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "98", "Cassandra", "Ferguson", "(594) 318-2465", "eu@google.couk", "May 8, 1992",         "United States", "Tuscaloosa", "83383", "497-7857 Eget, Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "99", "Reed", "Rutledge", "1-472-670-2236", "facilisis.facilisis@outlook.net", "Feb 17, 1997",         "United States", "Newport News", "36951", "225-6073 Magna Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "100", "Melodie", "Mclean", "1-677-221-7152", "risus.varius@google.ca", "Sep 15, 1989",         "United States", "College", "11838", "Ap #644-8492 Sagittis St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "101", "Sarah", "Beck", "(358) 691-4345", "vitae.risus@aol.couk", "Apr 9, 1983",         "United States", "Great Falls", "67129", "665-9047 In, Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "102", "Jasper", "Landry", "1-397-765-1118", "consectetuer.euismod@aol.org", "Apr 16, 1982",         "United States", "Columbus", "11595", "Ap #374-7325 Sodales Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "103", "Upton", "Chavez", "(227) 785-6484", "euismod.est@aol.ca", "Mar 15, 1986",         "United States", "Essex", "95631", "1990 Vel, Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "104", "Martha", "Barlow", "(732) 326-5448", "vulputate@hotmail.net", "Oct 29, 1988",         "United States", "Chicago", "41512", "Ap #311-7103 In Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "105", "Hashim", "Rose", "(858) 313-6727", "urna@icloud.com", "Mar 28, 1983",         "United States", "Tacoma", "99632", "8034 Tortor, Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "106", "Tanner", "Valenzuela", "1-346-421-3135", "nascetur.ridiculus@google.net", "Apr 6, 1993",         "United States", "Naperville", "31130", "Ap #114-2616 Fusce Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "107", "Victor", "Valencia", "(239) 569-1938", "non.enim@hotmail.couk", "May 1, 1998",         "United States", "Warren", "15158", "Ap #182-9926 At St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "108", "Germaine", "Suarez", "1-931-750-6983", "risus@icloud.com", "Feb 1, 1984",         "United States", "Cleveland", "36183", "Ap #383-1856 Mauris Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "109", "Raven", "Reynolds", "(667) 453-9731", "sed@aol.com", "Jul 11, 1986",         "United States", "Rockville", "64325", "P.O. Box 753, 3474 Orci, Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "110", "Neil", "Powers", "(864) 881-6737", "nec.metus@aol.edu", "Sep 3, 1980",         "United States", "Clarksville", "46921", "571-2024 Quam Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "111", "Astra", "Baldwin", "1-643-565-3266", "adipiscing.ligula.aenean@protonmail.net", "Jul 3, 1999",         "United States", "Indianapolis", "74764", "932-8297 Ac Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "112", "Ryder", "Cole", "1-572-759-8544", "nec.enim.nunc@protonmail.net", "Sep 4, 1990",         "United States", "South Portland", "52161", "Ap #286-4884 Arcu. Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "113", "Risa", "Frost", "1-712-488-5451", "neque.pellentesque@outlook.org", "May 5, 1996",         "United States", "Kearney", "88986", "Ap #678-785 Leo. Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "114", "Jasmine", "Castro", "1-512-143-0648", "lorem@google.ca", "Jan 5, 1987",         "United States", "San Jose", "94101", "9948 Dictum. Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "115", "Urielle", "Holman", "1-424-793-4354", "leo@google.ca", "Oct 11, 1985",         "United States", "Green Bay", "29058", "268-1889 Adipiscing Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "116", "Sacha", "Compton", "(265) 342-4775", "sed.dictum.proin@yahoo.org", "Sep 1, 1981",         "United States", "Wilmington", "94151", "Ap #722-5423 Velit. Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "117", "Halla", "Pearson", "(681) 698-7518", "lacus.etiam@protonmail.couk", "Apr 19, 1994",         "United States", "Biloxi", "65926", "664-903 In, Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "118", "Brooke", "Jensen", "(124) 739-9067", "purus.mauris.a@icloud.ca", "Aug 23, 1981",         "United States", "Erie", "68334", "P.O. Box 718, 9538 Velit Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "119", "Damian", "Mcgee", "(712) 572-8735", "neque.nullam@hotmail.edu", "Sep 20, 1988",         "United States", "Racine", "67561", "Ap #383-8201 Orci Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "120", "Solomon", "Blake", "1-814-753-4054", "in.at.pede@hotmail.edu", "Feb 23, 1990",         "United States", "Glendale", "32725", "469-4293 Aenean St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "121", "Ainsley", "Herrera", "1-380-341-6875", "est.congue@hotmail.couk", "Mar 28, 1996",         "United States", "Madison", "64252", "779-913 Cras Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "122", "Desiree", "Carey", "(888) 429-3660", "pellentesque.tellus.sem@protonmail.edu", "Sep 10, 1989",         "United States", "Reading", "71452", "P.O. Box 651, 6745 Donec St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "123", "Dominique", "Tillman", "1-956-793-8208", "vitae.dolor.donec@google.ca", "Sep 28, 1999",         "United States", "New Orleans", "33029", "618-3352 Amet, Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "124", "Walter", "Larsen", "(435) 652-7642", "et.netus.et@yahoo.net", "Sep 15, 1979",         "United States", "College", "31347", "Ap #946-1494 Mauris Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "125", "Celeste", "Ellis", "1-847-855-3441", "dapibus.rutrum@yahoo.org", "Jan 29, 1994",         "United States", "Wichita", "84214", "Ap #521-1005 Dolor Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "126", "Kim", "Mooney", "1-252-337-6661", "sed.nec@google.org", "Nov 28, 2000",         "United States", "Lewiston", "84345", "377-2270 Ante St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "127", "Ezra", "Beard", "(743) 567-0923", "morbi.sit@google.com", "Apr 8, 1984",         "United States", "Los Angeles", "43908", "P.O. Box 783, 1432 Inceptos Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "128", "Lucas", "Dawson", "(404) 491-1122", "in.consectetuer.ipsum@yahoo.com", "Sep 13, 1983",         "United States", "Shreveport", "82532", "P.O. Box 926, 2853 Non, Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "129", "Amber", "Blevins", "(734) 712-6456", "nunc@outlook.org", "Aug 14, 1979",         "United States", "Honolulu", "51863", "P.O. Box 878, 292 Orci Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "130", "Oscar", "Neal", "1-923-222-4140", "magna.nec@icloud.net", "Dec 29, 1983",         "United States", "Casper", "94343", "653 Posuere Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "131", "Hiram", "Preston", "(774) 220-4835", "ridiculus.mus@yahoo.net", "Jan 14, 1996",         "United States", "Rochester", "24724", "P.O. Box 579, 727 Ipsum Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "132", "Gisela", "Johnston", "(223) 563-2771", "accumsan.sed@outlook.couk", "Jul 29, 1993",         "United States", "Auburn", "58677", "489-8011 Faucibus Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "133", "Iona", "Soto", "1-249-240-5843", "tristique.aliquet@protonmail.com", "Apr 15, 1998",         "United States", "Iowa City", "73017", "Ap #327-9970 Sollicitudin St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "134", "Tiger", "Davis", "(571) 492-5568", "nonummy.ut@hotmail.ca", "Apr 12, 1997",         "United States", "Aurora", "80460", "P.O. Box 346, 7204 Quam. Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "135", "Zahir", "Swanson", "(758) 354-1913", "nam.ac@hotmail.couk", "Jan 12, 1991",         "United States", "Dover", "27834", "684 Sed Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "136", "Sonya", "Hobbs", "1-508-176-1405", "quis.pede@aol.com", "Jan 8, 1981",         "United States", "Memphis", "24123", "Ap #959-1231 Aliquam Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "137", "Brody", "Goodwin", "1-789-944-8575", "donec.felis@outlook.couk", "Apr 2, 1982",         "United States", "Tucson", "61282", "779-7842 Dolor Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "138", "Wesley", "Bush", "1-814-353-8532", "fermentum.arcu@hotmail.com", "Feb 8, 1987",         "United States", "Owensboro", "77662", "270-4210 Et, Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "139", "Walker", "Gibson", "1-935-527-2111", "ipsum.primis@yahoo.edu", "Jan 20, 1980",         "United States", "Annapolis", "99895", "P.O. Box 694, 6043 Dolor. St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "140", "Oprah", "Nicholson", "(485) 970-9786", "a@google.edu", "Sep 19, 1981",         "United States", "Bridgeport", "38328", "8543 Velit Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "141", "Clark", "Hewitt", "1-522-475-6115", "et.malesuada@aol.couk", "Oct 20, 1997",         "United States", "Tuscaloosa", "35547", "Ap #260-1064 Quisque St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "142", "Wyatt", "Morris", "1-402-317-8621", "consequat@google.org", "Oct 11, 1992",         "United States", "Salt Lake City", "37463", "P.O. Box 436, 6802 Purus Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "143", "Genevieve", "Nolan", "1-346-724-1579", "quis@outlook.com", "Sep 3, 1990",         "United States", "Springfield", "37616", "Ap #124-9427 Ante. Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "144", "Jeanette", "Blanchard", "1-287-355-3938", "amet.dapibus@google.couk", "Jul 6, 1996",         "United States", "San Jose", "26707", "Ap #529-6734 Ipsum Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "145", "Ursula", "Stewart", "1-442-838-6756", "commodo.auctor.velit@outlook.ca", "Feb 17, 1994",         "United States", "Lincoln", "69791", "161-6225 Ac, Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "146", "Priscilla", "Skinner", "(468) 855-0771", "laoreet.lectus@aol.edu", "Jul 31, 1980",         "United States", "Sandy", "86701", "207-6998 At Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "147", "Brody", "Talley", "(307) 307-2751", "metus.sit.amet@outlook.org", "Jun 13, 1991",         "United States", "Fayetteville", "42374", "469-5852 Tellus Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "148", "Kerry", "Adkins", "(528) 872-1974", "augue.eu.tempor@icloud.couk", "Mar 13, 1983",         "United States", "Dallas", "86373", "Ap #422-4836 Nunc Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "149", "Brock", "Doyle", "(265) 140-9567", "cursus.a@aol.edu", "Feb 19, 1986",         "United States", "Tuscaloosa", "77945", "Ap #172-5737 Lorem St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "150", "Oleg", "Coleman", "1-131-139-5673", "dis@outlook.edu", "Dec 2, 1981",         "United States", "Indianapolis", "28528", "722-3056 Eu, Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "151", "Meghan", "Hayden", "0800 746 6747", "arcu.vel@hotmail.ca", "Jul 2, 1980",         "United Kingdom", "Tullibody", "A1Y 3TC", "Ap #432-4493 Aliquet Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "152", "Hakeem", "Alford", "(0111) 367 0184", "adipiscing.ligula@google.edu", "Sep 30, 1979",         "United Kingdom", "Kettering", "O21 7JV", "551-8930 Lobortis Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "153", "Keegan", "Pugh", "(016977) 3851", "sodales.nisi@aol.org", "Jul 27, 1994",         "United Kingdom", "Whitehaven", "HQ8V 7YP", "Ap #312-5898 Consectetuer St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "154", "Cooper", "Bullock", "(021) 2521 6627", "et@outlook.net", "Nov 2, 1986",         "United Kingdom", "Presteigne", "U18 0DN", "872-1866 Pede Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "155", "Joshua", "Russell", "055 4409 5286", "justo.nec.ante@outlook.edu", "Jan 23, 1984",         "United Kingdom", "Hatfield", "B5H 5CS", "Ap #285-4727 Auctor. Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "156", "Remedios", "Case", "055 3114 1566", "mollis.phasellus.libero@aol.com", "Oct 9, 1994",         "United Kingdom", "North Berwick", "QR0 8CW", "479-3690 Turpis Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "157", "Philip", "Carey", "0800 640 6251", "phasellus@yahoo.net", "Oct 10, 1992",         "United Kingdom", "Lochgilphead", "CE2 6HT", "196-1103 Quisque Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "158", "Fatima", "Dyer", "0800 1111", "adipiscing@google.org", "Dec 24, 1988",         "United Kingdom", "Northampton", "IL3X 6XD", "Ap #435-7194 Scelerisque, St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "159", "Kylynn", "Acevedo", "056 5727 9602", "dignissim.lacus.aliquam@google.org", "May 10, 2000",         "United Kingdom", "Pitlochry", "K3 8UL", "871-3506 Lectus. Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "160", "Lael", "Moody", "07123 850737", "nunc.sed@aol.org", "Nov 19, 1987",         "United Kingdom", "Brora", "Q87 5JM", "Ap #633-810 Purus. Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "161", "Nora", "Reeves", "(01692) 29410", "ac@aol.com", "Dec 24, 1989",         "United Kingdom", "Blaenau Ffestiniog", "T37 5PO", "Ap #956-407 Et St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "162", "Francesca", "Sawyer", "(01632) 32279", "nunc@protonmail.com", "Apr 27, 1985",         "United Kingdom", "Bolton", "B35 2LE", "654-6011 Sociis Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "163", "Denton", "Blackburn", "(015406) 66385", "tincidunt@outlook.edu", "Jan 29, 1985",         "United Kingdom", "March", "YI3K 0GV", "Ap #219-2146 A, Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "164", "Preston", "Hood", "0845 46 47", "convallis.est.vitae@yahoo.edu", "Jul 29, 1986",         "United Kingdom", "Elgin", "R22 2AI", "Ap #828-7829 Suspendisse Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "165", "Nora", "Cantrell", "0500 767716", "varius.et.euismod@protonmail.net", "Feb 6, 1988",         "United Kingdom", "Carterton", "Q2 8QE", "1041 Lectus, Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "166", "Matthew", "Woodard", "070 6461 3432", "urna@outlook.net", "Jan 31, 1991",         "United Kingdom", "Bonnyrigg", "RN4P 8WW", "5258 Magna. Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "167", "Sheila", "Dickerson", "(01645) 68676", "et.lacinia@hotmail.ca", "Jul 26, 1998",         "United Kingdom", "Peterhead", "WM3E 9RO", "Ap #541-5450 Ullamcorper. Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "168", "Donna", "Rivers", "07553 472381", "elit.erat@aol.org", "Jun 9, 1990",         "United Kingdom", "Weston-super-Mare", "H8G 8FL", "690-204 Mauris, St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "169", "Linda", "Gaines", "(011370) 15148", "faucibus@outlook.edu", "Oct 15, 1992",         "United Kingdom", "Newbury", "I5 4TY", "P.O. Box 600, 6215 Nulla Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "170", "William", "Benjamin", "0800 1111", "porttitor@icloud.ca", "May 15, 1987",         "United Kingdom", "Coldstream", "KY0 0DY", "662-8112 Praesent Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "171", "Gary", "Robbins", "0500 856738", "dolor.dolor@google.edu", "Nov 8, 1995",         "United Kingdom", "Stoke-on-Trent", "N41 3PZ", "P.O. Box 262, 1554 Vel, Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "172", "Yoko", "Calhoun", "055 0680 3951", "dui.nec@outlook.org", "Oct 28, 1998",         "United Kingdom", "Lochgilphead", "GV7Y 7OL", "166-9231 Nulla. St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "173", "Bertha", "Sloan", "070 7845 5485", "et.eros@aol.couk", "Mar 24, 1996",         "United Kingdom", "Dunstable", "VB7 5NO", "P.O. Box 257, 1885 Tincidunt, Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "174", "Amal", "Kennedy", "(0121) 837 5655", "tellus@aol.com", "Dec 26, 1986",         "United Kingdom", "Kircudbright", "JP9Q 1AK", "Ap #224-4191 Et Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "175", "Brent", "Bates", "0500 221383", "ipsum.primis.in@aol.ca", "Apr 8, 1996",         "United Kingdom", "Brodick", "WJ1Q 2LP", "P.O. Box 249, 1044 Erat Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "176", "Lucas", "Stevenson", "0800 1111", "quis.pede.praesent@google.net", "Sep 9, 1998",         "United Kingdom", "Dover", "VU8 7QH", "832-6324 Nunc Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "177", "Lisandra", "Carpenter", "07624 223711", "nunc@google.net", "Aug 20, 2000",         "United Kingdom", "Keith", "XA5V 0RZ", "Ap #681-4983 Nec, Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "178", "Guinevere", "Kemp", "070 1590 7780", "suscipit@google.net", "Jun 18, 1987",         "United Kingdom", "Kingussie", "XX8 1SH", "Ap #801-3785 Lacus. St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "179", "Stuart", "Small", "(016977) 2504", "sodales.elit.erat@icloud.net", "Apr 21, 1983",         "United Kingdom", "Basingstoke", "AG9B 3SE", "P.O. Box 484, 610 Et Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "180", "Amelia", "Valenzuela", "(016977) 9972", "ac.nulla@google.couk", "Feb 27, 1986",         "United Kingdom", "Stockport", "BK0M 3FQ", "2729 Feugiat. Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "181", "Kermit", "O'brien", "076 8212 1580", "cursus@google.com", "Jan 15, 1995",         "United Kingdom", "St. Andrews", "D5 2TG", "Ap #659-5780 Elit. Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "182", "Dane", "Shepard", "0975 985 5842", "vehicula@hotmail.net", "Oct 13, 1999",         "United Kingdom", "Selkirk", "T8Q 7XU", "P.O. Box 148, 5146 Placerat. Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "183", "Germane", "Whitehead", "(016977) 7528", "malesuada.malesuada.integer@aol.net", "Oct 20, 1982",         "United Kingdom", "Alva", "GC6Y 2EW", "895-5715 Ipsum. Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "184", "Ulla", "Ramirez", "055 1225 6227", "phasellus.elit@icloud.couk", "Oct 30, 1998",         "United Kingdom", "Sromness", "ED8P 8YK", "9746 Aliquet St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "185", "Molly", "Gilliam", "0800 120 8023", "donec@outlook.couk", "Dec 21, 1993",         "United Kingdom", "Banchory", "U8H 7PH", "P.O. Box 202, 5638 Mi Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "186", "Dale", "Gonzales", "056 1962 2173", "velit.in.aliquet@protonmail.org", "Oct 14, 1989",         "United Kingdom", "Dorchester", "A3X 1PW", "289-2745 Aliquet Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "187", "David", "Vance", "0500 351083", "vulputate.velit.eu@protonmail.org", "Aug 6, 1996",         "United Kingdom", "Tregaron", "TS6A 1YW", "P.O. Box 921, 3511 Tempus, Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "188", "Keane", "Mckinney", "0345 629 4218", "at.arcu@google.net", "Jul 6, 1993",         "United Kingdom", "Leominster", "QJ73 6UB", "102-637 Ac Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "189", "Walter", "Lamb", "(016977) 7335", "ut.erat@hotmail.edu", "Apr 23, 1998",         "United Kingdom", "Biggleswade", "OA9M 7PV", "592-7699 In Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "190", "Shellie", "Valenzuela", "0500 899570", "dictum.phasellus.in@google.couk", "Jun 27, 1998",         "United Kingdom", "Fort William", "K5G 6GF", "2506 Natoque St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "191", "Deirdre", "Todd", "056 3122 8029", "purus.mauris.a@icloud.org", "Dec 16, 1984",         "United Kingdom", "Millport", "PR67 4CE", "3423 A, Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "192", "Phoebe", "Roth", "076 5361 4786", "arcu.eu@google.org", "Feb 2, 1981",         "United Kingdom", "Buckie", "R6W 3JZ", "9091 At Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "193", "Minerva", "Wilkins", "07581 368219", "aliquam.adipiscing@yahoo.edu", "Aug 31, 2000",         "United Kingdom", "Shaftesbury", "N9R 8TC", "437-5979 Et Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "194", "Porter", "Francis", "0500 257479", "quis.accumsan@aol.couk", "Jul 20, 1991",         "United Kingdom", "Newton Abbot", "O4 2AI", "132-7918 Elementum, Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "195", "Rosalyn", "Blake", "(015905) 28451", "integer@protonmail.net", "Apr 25, 1984",         "United Kingdom", "Swindon", "P4 6UA", "Ap #694-5578 Viverra. Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "196", "Blaze", "Duke", "0800 060 8337", "quis@hotmail.ca", "Feb 12, 1992",         "United Kingdom", "March", "V5 2UL", "416-2357 Vel, Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "197", "Carly", "Mathews", "(024) 5216 7655", "mauris@protonmail.edu", "May 23, 1996",         "United Kingdom", "Bathgate", "KH0E 3HR", "8486 Nunc Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "198", "Keely", "Fox", "0800 1111", "id.mollis@google.net", "Jul 1, 1989",         "United Kingdom", "Blairgowrie", "N4 5WB", "8716 Mi St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "199", "Lewis", "Melendez", "(016977) 5758", "non@yahoo.net", "Jul 8, 1990",         "United Kingdom", "March", "JM6 4QS", "Ap #615-7530 Nunc Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "200", "Nero", "Mills", "056 4507 5712", "adipiscing@protonmail.org", "Aug 8, 1984",         "United Kingdom", "Newtown", "KK80 6UC", "Ap #809-8475 Donec Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "201", "Iola", "Powers", "018-139-4717", "ante.blandit@outlook.edu", "Mar 20, 2000",         "Canada", "Rigolet", "V6T 6M7", "154-5415 Auctor St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "202", "Maxwell", "Holden", "045-402-7693", "donec@hotmail.edu", "Dec 2, 1986",         "Canada", "Murdochville", "S7E 6E0", "Ap #880-6372 Ultrices. St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "203", "Jarrod", "Fields", "010-741-8105", "sit.amet@google.couk", "Jan 6, 1982",         "Canada", "Baddeck", "K3X 6Z5", "441-8969 Rhoncus Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "204", "Emerson", "Sharp", "068-138-9383", "ante.iaculis@outlook.ca", "Oct 15, 1994",         "Canada", "Maple Creek", "Y2C 9E6", "517-6759 Ut, Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "205", "Sonya", "Mckee", "041-151-9737", "magna.phasellus.dolor@google.ca", "May 7, 1983",         "Canada", "Dieppe", "E7S 4P8", "Ap #916-8051 A St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "206", "Harper", "Hart", "030-656-1670", "fringilla.donec@outlook.net", "Nov 17, 2000",         "Canada", "Québec City", "B4K 0J6", "8588 Massa. Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "207", "Yvonne", "Hatfield", "003-854-1445", "magna.et.ipsum@google.edu", "Sep 22, 1981",         "Canada", "Rae-Edzo", "20Y 8L2", "Ap #636-8055 Egestas St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "208", "Burke", "Graham", "064-568-4454", "vel@yahoo.org", "Feb 23, 1993",         "Canada", "Annapolis Royal", "S4Y 8V5", "Ap #983-6042 Amet Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "209", "Athena", "Malone", "027-280-8275", "pellentesque.tincidunt@yahoo.ca", "Dec 14, 1991",         "Canada", "Cambridge Bay", "93Z 5S5", "Ap #388-8542 Est St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "210", "Slade", "Poole", "084-771-1363", "amet@icloud.com", "Feb 16, 2001",         "Canada", "Ottawa", "A1S 9W6", "601-6142 Etiam St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "211", "Larissa", "Carpenter", "066-617-3711", "congue@aol.org", "Jan 21, 1998",         "Canada", "Cumberland", "S5Y 2L8", "7285 Sed St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "212", "Zeph", "Schmidt", "056-157-7412", "vestibulum.lorem@hotmail.ca", "Apr 10, 1986",         "Canada", "Fort Smith", "V3G 8B3", "4756 Tempor Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "213", "Blake", "Strickland", "067-339-3024", "ac.libero.nec@yahoo.com", "Apr 15, 1983",         "Canada", "Mission", "R0V 9R2", "P.O. Box 207, 6843 Imperdiet Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "214", "Cleo", "George", "026-867-1198", "pellentesque.habitant@outlook.net", "Dec 24, 1998",         "Canada", "Kakisa", "R6W 8G7", "Ap #266-9424 Orci St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "215", "Keegan", "Watson", "058-771-3718", "interdum.enim.non@protonmail.edu", "May 2, 1996",         "Canada", "Oxford County", "S7H 0G4", "270-2964 Aliquet Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "216", "Tana", "Stout", "035-569-5523", "et.magnis.dis@aol.net", "Jun 28, 1983",         "Canada", "Municipal District", "D6Y 8V7", "7884 Vulputate Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "217", "Avye", "Key", "016-727-3427", "non.dui@yahoo.net", "Mar 16, 1987",         "Canada", "Marystown", "37N 1N0", "P.O. Box 712, 8627 Mi Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "218", "Sonia", "Dejesus", "091-540-1865", "ipsum.porta@google.edu", "Jun 13, 1997",         "Canada", "Fredericton", "H6H 1C1", "231-8704 Tempor Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "219", "Ivan", "Saunders", "036-230-9218", "egestas.blandit.nam@icloud.org", "Jul 7, 1985",         "Canada", "Houston", "b5M 0E6", "350-1489 Sit Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "220", "Martha", "Roth", "077-482-6236", "semper.rutrum@yahoo.edu", "Apr 5, 1994",         "Canada", "Gander", "A3X 8E4", "Ap #179-4366 Pellentesque St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "221", "Sasha", "Emerson", "024-226-4281", "tempor.augue.ac@icloud.couk", "Aug 24, 1981",         "Canada", "Watson Lake", "H3X 9N3", "885-8605 Egestas Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "222", "Theodore", "Barry", "098-447-1583", "at.pede.cras@google.ca", "Feb 16, 1983",         "Canada", "Ucluelet", "B2C 5H2", "786-2757 Diam Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "223", "Linus", "Willis", "056-347-2535", "ultrices.posuere@yahoo.couk", "Mar 23, 1992",         "Canada", "Lourdes", "B0R 4L1", "6491 Cursus St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "224", "Raymond", "Oneil", "001-668-7183", "lorem@outlook.ca", "Jan 21, 1987",         "Canada", "Watson Lake", "E9K 1S7", "172 Enim. St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "225", "Ursa", "Kelly", "007-454-7455", "vitae.diam@icloud.ca", "Aug 21, 1996",         "Canada", "West Vancouver", "T0G 8G4", "540-895 Bibendum. Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "226", "Willa", "Rowland", "011-259-1714", "sociosqu.ad.litora@outlook.net", "Feb 19, 2001",         "Canada", "Paulatuk", "S4T 5M8", "Ap #728-8176 A, St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "227", "Idola", "Bowen", "039-398-2123", "gravida.molestie.arcu@outlook.org", "Jan 18, 1991",         "Canada", "Dieppe", "S1Y 5T7", "Ap #685-1370 Curabitur Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "228", "Leonard", "Davenport", "033-159-5147", "venenatis@yahoo.net", "Oct 30, 1989",         "Canada", "Beauport", "27C 8H7", "P.O. Box 293, 261 Donec Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "229", "Wade", "Russell", "002-612-8695", "ipsum@yahoo.org", "Oct 13, 1987",         "Canada", "Guysborough", "66A 5X8", "579-6807 Tellus Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "230", "Dean", "Donovan", "064-828-4927", "dolor.elit@outlook.org", "Jan 31, 1989",         "Canada", "Cornwall", "b3C 9X8", "346-6657 Diam Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "231", "Zoe", "Morrow", "039-828-3280", "lacinia@google.com", "Oct 25, 1987",         "Canada", "Town of Yarmouth", "S1A 9G5", "Ap #672-8013 Natoque St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "232", "Elijah", "Stone", "035-145-1918", "in@yahoo.net", "Jan 24, 1988",         "Canada", "Shawinigan", "74W 5N4", "Ap #210-4430 Donec Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "233", "Griffith", "Golden", "056-674-6383", "nunc@yahoo.org", "Dec 4, 1989",         "Canada", "Municipal District", "53S 8R5", "190-7471 Dolor. Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "234", "Camilla", "Roach", "011-421-2427", "tristique.senectus@hotmail.edu", "Feb 27, 1993",         "Canada", "Brandon", "R2E 1C9", "Ap #858-5803 Praesent Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "235", "Medge", "Nieves", "044-518-5071", "ac@icloud.couk", "Jun 11, 1993",         "Canada", "Ponoka", "H7R 2T8", "561-787 Pellentesque Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "236", "Gemma", "Calderon", "049-527-1060", "in.faucibus.morbi@aol.edu", "Nov 12, 1989",         "Canada", "Champlain", "S4J 1P5", "983-9057 Integer Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "237", "Drake", "Walsh", "048-338-9721", "libero.integer@google.edu", "Jan 22, 1984",         "Canada", "Flin Flon", "f8T 7B4", "P.O. Box 511, 7500 Interdum Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "238", "Chester", "Haynes", "059-783-3104", "ut@protonmail.edu", "Sep 13, 1988",         "Canada", "Cochrane", "74M 8T1", "P.O. Box 284, 9364 Ultrices St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "239", "Melissa", "Cameron", "012-127-5563", "quisque.varius@protonmail.ca", "Feb 21, 1992",         "Canada", "Beausejour", "B0K 2P6", "Ap #147-7582 Ante St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "240", "Jada", "Porter", "074-247-8256", "condimentum.donec@aol.ca", "Sep 8, 1987",         "Canada", "North Vancouver", "R5L 6C1", "P.O. Box 557, 8889 Erat Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "241", "Xandra", "Spencer", "016-322-6574", "cursus.in@outlook.net", "Jun 22, 1989",         "Canada", "Fraser-Fort George", "P1B 8C8", "P.O. Box 848, 3751 Ante, Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "242", "Neville", "Donovan", "027-122-5812", "ac@protonmail.edu", "May 21, 1988",         "Canada", "Cape Breton Island", "R8H 1V7", "326-1559 Nunc. Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "243", "Alan", "Vazquez", "084-548-5311", "sapien.gravida.non@protonmail.couk", "Jun 17, 1996",         "Canada", "Fort Good Hope", "41T 4T0", "697-3023 Donec Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "244", "Andrew", "Strong", "037-676-0570", "nulla.at@google.ca", "May 17, 1997",         "Canada", "Watson Lake", "Z1B 9R8", "P.O. Box 961, 5209 Ridiculus Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "245", "Iola", "Griffith", "081-781-2806", "magna@protonmail.couk", "May 5, 1995",         "Canada", "Penticton", "A2E 1B5", "P.O. Box 912, 8949 Quis Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "246", "Lewis", "Lynn", "061-978-2835", "consectetuer.adipiscing@outlook.edu", "Jun 13, 1979",         "Canada", "Neuville", "20N 5E1", "Ap #549-4391 Dapibus St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "247", "Olga", "Case", "083-633-4683", "turpis@yahoo.edu", "Jul 4, 1991",         "Canada", "Lions Bay", "N1J 8P7", "P.O. Box 140, 3589 Vestibulum. Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "248", "Allen", "Calhoun", "024-836-3222", "ipsum.non@outlook.ca", "Nov 1, 1987",         "Canada", "Cambridge Bay", "N7J 8S7", "Ap #698-8629 Nulla Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "249", "Rhea", "Harvey", "052-042-5654", "proin@protonmail.org", "Jul 2, 1997",         "Canada", "Weyburn", "j7L 2S9", "910-7903 Habitant Avenue");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "250", "Hilda", "Levy", "088-867-5267", "et.libero@yahoo.org", "Dec 21, 1994",         "Canada", "Baddeck", "B4R 5C5", "P.O. Box 306, 6953 At Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "251", "Zane", "Collier", "098-548-1455", "in.aliquet.lobortis@icloud.com", "Aug 25, 1980",         "Canada", "Beaconsfield", "H4Y 6Y2", "P.O. Box 309, 103 Neque Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "252", "Zephania", "Collins", "031-817-1549", "urna.vivamus@icloud.ca", "Jun 29, 1994",         "Canada", "Arviat", "Y8X 0E8", "237-5532 Donec St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "253", "Keane", "Parks", "048-303-4775", "consectetuer.adipiscing@google.edu", "Oct 2, 1986",         "Canada", "Town of Yarmouth", "T2R 4Z7", "793-2776 Ornare St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "254", "John", "Cotton", "085-253-4901", "diam@yahoo.org", "Sep 26, 1983",         "Canada", "Colwood", "53K 8S9", "Ap #324-6329 Ipsum Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "255", "Blaze", "Daniel", "087-870-8309", "felis@protonmail.org", "Oct 11, 1998",         "Canada", "Swan Hills", "Y1N 5X1", "811-6644 Id, Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "256", "Lane", "Paul", "044-254-6877", "nec.euismod@aol.edu", "Aug 10, 1983",         "Canada", "Saskatoon", "T3J 3X5", "P.O. Box 850, 1002 Purus. Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "257", "Heather", "Burks", "053-588-8671", "primis.in@protonmail.com", "Oct 13, 1994",         "Canada", "Dieppe", "86W 9G5", "Ap #966-2226 Congue, Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "258", "Stone", "Robbins", "076-226-5738", "tempus.eu.ligula@google.edu", "Jun 26, 1980",         "Canada", "Caledon", "R4R 6Y3", "Ap #169-3524 Quam Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "259", "Slade", "Downs", "034-228-4880", "nunc@protonmail.net", "May 28, 1994",         "Canada", "Minitonas", "T2Y 5Z1", "Ap #219-2963 Tristique Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "260", "Grace", "Rowe", "071-756-4297", "convallis.convallis@hotmail.edu", "Mar 25, 1987",         "Canada", "Abbotsford", "Y7S 3W6", "Ap #417-5793 Tincidunt Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "261", "Violet", "Weber", "019-661-3744", "aliquet.metus@hotmail.couk", "Sep 23, 1984",         "Canada", "Ucluelet", "W4C 3H8", "102-5355 Aliquet. Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "262", "Brett", "Kirby", "076-166-2169", "auctor.nunc.nulla@outlook.org", "Dec 12, 1988",         "Canada", "Banff", "S6V 7V5", "Ap #431-3047 Adipiscing Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "263", "Ima", "Hendricks", "065-953-8795", "diam.proin@icloud.net", "Nov 6, 1990",         "Canada", "Whitehorse", "78V 0B5", "Ap #750-483 Lorem, Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "264", "Keiko", "Guerra", "034-741-6314", "blandit@outlook.ca", "Dec 12, 1993",         "Canada", "Bathurst", "T7C 9N8", "Ap #243-4259 Lectus Street");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "265", "Chloe", "Keith", "022-178-1548", "arcu.eu@protonmail.org", "Jan 10, 1999",         "Canada", "Oliver", "B5T 7L6", "P.O. Box 289, 3192 Cursus St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "266", "Aiko", "Chaney", "026-660-1876", "ante.ipsum.primis@protonmail.ca", "Oct 16, 1986",         "Canada", "Vancouver", "R8S 1E1", "821-3499 Sapien. Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "267", "Ocean", "Nelson", "079-481-2745", "aenean@yahoo.com", "Dec 26, 1991",         "Canada", "Charlottetown", "85X 3P4", "Ap #732-8357 Pede, Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "268", "Clark", "Olson", "029-086-1867", "nunc@icloud.net", "Mar 15, 1987",         "Canada", "Montague", "S3Y 1W6", "1315 Est Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "269", "Haley", "Fitzpatrick", "055-871-6664", "in.aliquet@outlook.org", "Jan 10, 1996",         "Canada", "Pangnirtung", "R0Y 1E3", "P.O. Box 914, 451 Nam Rd.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "270", "Elton", "Roberson", "096-325-5107", "tristique.pharetra@google.net", "Oct 12, 1990",         "Canada", "McCallum", "R0V 4P6", "2857 Natoque Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "271", "Leandra", "Cherry", "089-285-7016", "lobortis.quis@hotmail.ca", "Sep 2, 1991",         "Canada", "Gander", "H6S 6M9", "554-9293 Sollicitudin Av.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "272", "Hedwig", "Gilbert", "064-204-8788", "sem.eget@icloud.edu", "Apr 16, 1991",         "Canada", "Tuktoyaktuk", "Q4C 3G7", "P.O. Box 496, 5145 Sapien Road");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "273", "Hilary", "Ferguson", "060-710-1604", "sapien.molestie.orci@google.edu", "Nov 3, 1981",         "Canada", "Pangnirtung", "12T 5G4", "Ap #736-4628 Cras St.");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "274", "Jameson", "Hunt", "024-732-2321", "fringilla@protonmail.com", "Jan 29, 1982",         "Canada", "Township of Minden Hills", "B6V 6N4", "224-4927 Praesent Ave");
INSERT INTO user (id, name, surname, phone, email, birth_date, country, city, postal_code, address) VALUES (        "275", "Kenyon", "Hartman", "082-871-7248", "convallis.ante.lectus@yahoo.com", "Aug 3, 1982",         "Canada", "Richmond", "R8H 2K2", "8564 Facilisi. St.");
*/
SET foreign_key_checks = 1;

#Modificar el nom de la taula USER per data_user
ALTER TABLE user RENAME data_user;

#Modificar el nom de la columna email per personal_email
ALTER TABLE data_user RENAME COLUMN email TO personal_email;

#Exercici 2
#Crear una vista anomenada "InformeTecnico" que contingui la següent informació:
#ID de la transacció
#Nom de l'usuari/ària
#Cognom de l'usuari/ària
#IBAN de la targeta de crèdit usada.
#Nom de la companyia de la transacció realitzada.
#Assegura't d'incloure informació rellevant de totes dues taules i utilitza àlies per a canviar de nom columnes segons sigui necessari.
#Mostra els resultats de la vista, ordena els resultats de manera descendent en funció de la variable ID de transaction.

#CREATE VIEW InformeTecnico AS
SELECT t.id AS id_transaction, du.name, du.surname, c.company_name, cd.iban
FROM transaction AS t
LEFT JOIN data_user AS du
	ON du.id = t.user_id
    LEFT JOIN company AS c
		ON c.id = t.company_id
			LEFT JOIN credit_card AS cd
				ON cd.id = t.credit_card_id
ORDER BY t.id DESC;

SELECT * 
FROM InformeTecnico;
