--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

SET SESSION AUTHORIZATION 'happex';

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: codes; Type: TABLE; Schema: public; Owner: happex
--

CREATE TABLE public.codes (
    name text NOT NULL,
    alpha2 text,
    alpha3 text,
    numcode integer,
    iso3316 text
);


ALTER TABLE public.codes OWNER TO happex;

--
-- Name: happy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.happy (
    country character varying NOT NULL,
    year integer NOT NULL,
    lifeladder numeric,
    loggdppercapita numeric,
    socialsupport numeric,
    lifeexpect numeric,
    choices numeric,
    generosity numeric,
    perceptions numeric,
    paffect numeric,
    naffect numeric,
    confidence numeric,
    democraticquality numeric,
    deliveryquality numeric,
    sdladdercy numeric,
    sdmeanladdercy numeric,
    gini numeric,
    giniavg numeric,
    giniincome numeric,
    trustedgallup numeric,
    trustwvs84 numeric,
    trustwvs93 numeric,
    trustwvs98 numeric,
    trustwvs04 numeric,
    trustwvs09 numeric,
    trustwvs14 numeric
);


ALTER TABLE public.happy OWNER TO postgres;

--
-- Name: score; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.score (
    country character varying NOT NULL,
    score numeric,
    whiskerhigh numeric,
    whiskerlow numeric,
    dystopia numeric,
    gdp numeric,
    social numeric,
    healthy numeric,
    choices numeric,
    generosity numeric,
    corruption numeric
);


ALTER TABLE public.score OWNER TO postgres;

--
-- Data for Name: codes; Type: TABLE DATA; Schema: public; Owner: happex
--

COPY public.codes (name, alpha2, alpha3, numcode, iso3316) FROM stdin;
Afghanistan	AF	AFG	4	ISO 3166-2:AF
Åland Islands	AX	ALA	248	ISO 3166-2:AX
Albania	AL	ALB	8	ISO 3166-2:AL
Algeria	DZ	DZA	12	ISO 3166-2:DZ
American Samoa	AS	ASM	16	ISO 3166-2:AS
Andorra	AD	AND	20	ISO 3166-2:AD
Angola	AO	AGO	24	ISO 3166-2:AO
Anguilla	AI	AIA	660	ISO 3166-2:AI
Antarctica	AQ	ATA	10	ISO 3166-2:AQ
Antigua and Barbuda	AG	ATG	28	ISO 3166-2:AG
Argentina	AR	ARG	32	ISO 3166-2:AR
Armenia	AM	ARM	51	ISO 3166-2:AM
Aruba	AW	ABW	533	ISO 3166-2:AW
Australia	AU	AUS	36	ISO 3166-2:AU
Austria	AT	AUT	40	ISO 3166-2:AT
Azerbaijan	AZ	AZE	31	ISO 3166-2:AZ
Bahamas	BS	BHS	44	ISO 3166-2:BS
Bahrain	BH	BHR	48	ISO 3166-2:BH
Bangladesh	BD	BGD	50	ISO 3166-2:BD
Barbados	BB	BRB	52	ISO 3166-2:BB
Belarus	BY	BLR	112	ISO 3166-2:BY
Belgium	BE	BEL	56	ISO 3166-2:BE
Belize	BZ	BLZ	84	ISO 3166-2:BZ
Benin	BJ	BEN	204	ISO 3166-2:BJ
Bermuda	BM	BMU	60	ISO 3166-2:BM
Bhutan	BT	BTN	64	ISO 3166-2:BT
Bonaire, Sint Eustatius and Saba	BQ	BES	535	ISO 3166-2:BQ
Bosnia and Herzegovina	BA	BIH	70	ISO 3166-2:BA
Botswana	BW	BWA	72	ISO 3166-2:BW
Bouvet Island	BV	BVT	74	ISO 3166-2:BV
Brazil	BR	BRA	76	ISO 3166-2:BR
British Indian Ocean Territory	IO	IOT	86	ISO 3166-2:IO
Brunei Darussalam	BN	BRN	96	ISO 3166-2:BN
Bulgaria	BG	BGR	100	ISO 3166-2:BG
Burkina Faso	BF	BFA	854	ISO 3166-2:BF
Burundi	BI	BDI	108	ISO 3166-2:BI
Cabo Verde	CV	CPV	132	ISO 3166-2:CV
Cambodia	KH	KHM	116	ISO 3166-2:KH
Cameroon	CM	CMR	120	ISO 3166-2:CM
Canada	CA	CAN	124	ISO 3166-2:CA
Cayman Islands	KY	CYM	136	ISO 3166-2:KY
Central African Republic	CF	CAF	140	ISO 3166-2:CF
Chad	TD	TCD	148	ISO 3166-2:TD
Chile	CL	CHL	152	ISO 3166-2:CL
China	CN	CHN	156	ISO 3166-2:CN
Christmas Island	CX	CXR	162	ISO 3166-2:CX
Cocos (Keeling) Islands	CC	CCK	166	ISO 3166-2:CC
Colombia	CO	COL	170	ISO 3166-2:CO
Comoros	KM	COM	174	ISO 3166-2:KM
Cook Islands	CK	COK	184	ISO 3166-2:CK
Costa Rica	CR	CRI	188	ISO 3166-2:CR
Croatia	HR	HRV	191	ISO 3166-2:HR
Cuba	CU	CUB	192	ISO 3166-2:CU
Curaçao	CW	CUW	531	ISO 3166-2:CW
Cyprus	CY	CYP	196	ISO 3166-2:CY
Denmark	DK	DNK	208	ISO 3166-2:DK
Djibouti	DJ	DJI	262	ISO 3166-2:DJ
Dominica	DM	DMA	212	ISO 3166-2:DM
Dominican Republic	DO	DOM	214	ISO 3166-2:DO
Ecuador	EC	ECU	218	ISO 3166-2:EC
Egypt	EG	EGY	818	ISO 3166-2:EG
El Salvador	SV	SLV	222	ISO 3166-2:SV
Equatorial Guinea	GQ	GNQ	226	ISO 3166-2:GQ
Eritrea	ER	ERI	232	ISO 3166-2:ER
Estonia	EE	EST	233	ISO 3166-2:EE
Ethiopia	ET	ETH	231	ISO 3166-2:ET
Falkland Islands (Malvinas)	FK	FLK	238	ISO 3166-2:FK
Faroe Islands	FO	FRO	234	ISO 3166-2:FO
Fiji	FJ	FJI	242	ISO 3166-2:FJ
Finland	FI	FIN	246	ISO 3166-2:FI
France	FR	FRA	250	ISO 3166-2:FR
French Guiana	GF	GUF	254	ISO 3166-2:GF
French Polynesia	PF	PYF	258	ISO 3166-2:PF
French Southern Territories	TF	ATF	260	ISO 3166-2:TF
Gabon	GA	GAB	266	ISO 3166-2:GA
Gambia	GM	GMB	270	ISO 3166-2:GM
Georgia	GE	GEO	268	ISO 3166-2:GE
Germany	DE	DEU	276	ISO 3166-2:DE
Ghana	GH	GHA	288	ISO 3166-2:GH
Gibraltar	GI	GIB	292	ISO 3166-2:GI
Greece	GR	GRC	300	ISO 3166-2:GR
Greenland	GL	GRL	304	ISO 3166-2:GL
Grenada	GD	GRD	308	ISO 3166-2:GD
Guadeloupe	GP	GLP	312	ISO 3166-2:GP
Guam	GU	GUM	316	ISO 3166-2:GU
Guatemala	GT	GTM	320	ISO 3166-2:GT
Guernsey	GG	GGY	831	ISO 3166-2:GG
Guinea	GN	GIN	324	ISO 3166-2:GN
Guinea-Bissau	GW	GNB	624	ISO 3166-2:GW
Guyana	GY	GUY	328	ISO 3166-2:GY
Haiti	HT	HTI	332	ISO 3166-2:HT
Heard Island and McDonald Islands	HM	HMD	334	ISO 3166-2:HM
Holy See	VA	VAT	336	ISO 3166-2:VA
Honduras	HN	HND	340	ISO 3166-2:HN
Hungary	HU	HUN	348	ISO 3166-2:HU
Iceland	IS	ISL	352	ISO 3166-2:IS
India	IN	IND	356	ISO 3166-2:IN
Indonesia	ID	IDN	360	ISO 3166-2:ID
Iraq	IQ	IRQ	368	ISO 3166-2:IQ
Ireland	IE	IRL	372	ISO 3166-2:IE
Isle of Man	IM	IMN	833	ISO 3166-2:IM
Israel	IL	ISR	376	ISO 3166-2:IL
Italy	IT	ITA	380	ISO 3166-2:IT
Jamaica	JM	JAM	388	ISO 3166-2:JM
Japan	JP	JPN	392	ISO 3166-2:JP
Jersey	JE	JEY	832	ISO 3166-2:JE
Jordan	JO	JOR	400	ISO 3166-2:JO
Congo (Brazzaville)	CG	COG	178	ISO 3166-2:CG
Congo (Kinshasa)	CD	COD	180	ISO 3166-2:CD
Czech Republic	CZ	CZE	203	ISO 3166-2:CZ
Hong Kong S.A.R. of China	HK	HKG	344	ISO 3166-2:HK
Iran	IR	IRN	364	ISO 3166-2:IR
Ivory Coast	CI	CIV	384	ISO 3166-2:CI
Swaziland	SZ	SWZ	748	ISO 3166-2:SZ
Kazakhstan	KZ	KAZ	398	ISO 3166-2:KZ
Kenya	KE	KEN	404	ISO 3166-2:KE
Kiribati	KI	KIR	296	ISO 3166-2:KI
Korea (Democratic People's Republic of)	KP	PRK	408	ISO 3166-2:KP
Kuwait	KW	KWT	414	ISO 3166-2:KW
Kyrgyzstan	KG	KGZ	417	ISO 3166-2:KG
Latvia	LV	LVA	428	ISO 3166-2:LV
Lebanon	LB	LBN	422	ISO 3166-2:LB
Lesotho	LS	LSO	426	ISO 3166-2:LS
Liberia	LR	LBR	430	ISO 3166-2:LR
Libya	LY	LBY	434	ISO 3166-2:LY
Liechtenstein	LI	LIE	438	ISO 3166-2:LI
Lithuania	LT	LTU	440	ISO 3166-2:LT
Luxembourg	LU	LUX	442	ISO 3166-2:LU
Macao	MO	MAC	446	ISO 3166-2:MO
Madagascar	MG	MDG	450	ISO 3166-2:MG
Malawi	MW	MWI	454	ISO 3166-2:MW
Malaysia	MY	MYS	458	ISO 3166-2:MY
Maldives	MV	MDV	462	ISO 3166-2:MV
Mali	ML	MLI	466	ISO 3166-2:ML
Malta	MT	MLT	470	ISO 3166-2:MT
Marshall Islands	MH	MHL	584	ISO 3166-2:MH
Martinique	MQ	MTQ	474	ISO 3166-2:MQ
Mauritania	MR	MRT	478	ISO 3166-2:MR
Mauritius	MU	MUS	480	ISO 3166-2:MU
Mayotte	YT	MYT	175	ISO 3166-2:YT
Mexico	MX	MEX	484	ISO 3166-2:MX
Micronesia (Federated States of)	FM	FSM	583	ISO 3166-2:FM
Monaco	MC	MCO	492	ISO 3166-2:MC
Mongolia	MN	MNG	496	ISO 3166-2:MN
Montenegro	ME	MNE	499	ISO 3166-2:ME
Montserrat	MS	MSR	500	ISO 3166-2:MS
Morocco	MA	MAR	504	ISO 3166-2:MA
Mozambique	MZ	MOZ	508	ISO 3166-2:MZ
Myanmar	MM	MMR	104	ISO 3166-2:MM
Namibia	NA	NAM	516	ISO 3166-2:NA
Nauru	NR	NRU	520	ISO 3166-2:NR
Nepal	NP	NPL	524	ISO 3166-2:NP
Netherlands	NL	NLD	528	ISO 3166-2:NL
New Caledonia	NC	NCL	540	ISO 3166-2:NC
New Zealand	NZ	NZL	554	ISO 3166-2:NZ
Nicaragua	NI	NIC	558	ISO 3166-2:NI
Niger	NE	NER	562	ISO 3166-2:NE
Nigeria	NG	NGA	566	ISO 3166-2:NG
Niue	NU	NIU	570	ISO 3166-2:NU
Norfolk Island	NF	NFK	574	ISO 3166-2:NF
Northern Mariana Islands	MP	MNP	580	ISO 3166-2:MP
Norway	NO	NOR	578	ISO 3166-2:NO
Oman	OM	OMN	512	ISO 3166-2:OM
Pakistan	PK	PAK	586	ISO 3166-2:PK
Palau	PW	PLW	585	ISO 3166-2:PW
Panama	PA	PAN	591	ISO 3166-2:PA
Papua New Guinea	PG	PNG	598	ISO 3166-2:PG
Paraguay	PY	PRY	600	ISO 3166-2:PY
Peru	PE	PER	604	ISO 3166-2:PE
Philippines	PH	PHL	608	ISO 3166-2:PH
Pitcairn	PN	PCN	612	ISO 3166-2:PN
Poland	PL	POL	616	ISO 3166-2:PL
Portugal	PT	PRT	620	ISO 3166-2:PT
Puerto Rico	PR	PRI	630	ISO 3166-2:PR
Qatar	QA	QAT	634	ISO 3166-2:QA
Réunion	RE	REU	638	ISO 3166-2:RE
Romania	RO	ROU	642	ISO 3166-2:RO
Rwanda	RW	RWA	646	ISO 3166-2:RW
Saint Barthélemy	BL	BLM	652	ISO 3166-2:BL
Saint Helena, Ascension and Tristan da Cunha	SH	SHN	654	ISO 3166-2:SH
Saint Kitts and Nevis	KN	KNA	659	ISO 3166-2:KN
Saint Lucia	LC	LCA	662	ISO 3166-2:LC
Saint Martin (French part)	MF	MAF	663	ISO 3166-2:MF
Saint Pierre and Miquelon	PM	SPM	666	ISO 3166-2:PM
Saint Vincent and the Grenadines	VC	VCT	670	ISO 3166-2:VC
Samoa	WS	WSM	882	ISO 3166-2:WS
San Marino	SM	SMR	674	ISO 3166-2:SM
Sao Tome and Principe	ST	STP	678	ISO 3166-2:ST
Saudi Arabia	SA	SAU	682	ISO 3166-2:SA
Senegal	SN	SEN	686	ISO 3166-2:SN
Serbia	RS	SRB	688	ISO 3166-2:RS
Seychelles	SC	SYC	690	ISO 3166-2:SC
Sierra Leone	SL	SLE	694	ISO 3166-2:SL
Singapore	SG	SGP	702	ISO 3166-2:SG
Sint Maarten (Dutch part)	SX	SXM	534	ISO 3166-2:SX
Slovakia	SK	SVK	703	ISO 3166-2:SK
Slovenia	SI	SVN	705	ISO 3166-2:SI
Solomon Islands	SB	SLB	90	ISO 3166-2:SB
Somalia	SO	SOM	706	ISO 3166-2:SO
South Africa	ZA	ZAF	710	ISO 3166-2:ZA
South Georgia and the South Sandwich Islands	GS	SGS	239	ISO 3166-2:GS
South Sudan	SS	SSD	728	ISO 3166-2:SS
Spain	ES	ESP	724	ISO 3166-2:ES
Sri Lanka	LK	LKA	144	ISO 3166-2:LK
Sudan	SD	SDN	729	ISO 3166-2:SD
Suriname	SR	SUR	740	ISO 3166-2:SR
Svalbard and Jan Mayen	SJ	SJM	744	ISO 3166-2:SJ
Sweden	SE	SWE	752	ISO 3166-2:SE
Switzerland	CH	CHE	756	ISO 3166-2:CH
Tajikistan	TJ	TJK	762	ISO 3166-2:TJ
Thailand	TH	THA	764	ISO 3166-2:TH
Timor-Leste	TL	TLS	626	ISO 3166-2:TL
Togo	TG	TGO	768	ISO 3166-2:TG
Tokelau	TK	TKL	772	ISO 3166-2:TK
Tonga	TO	TON	776	ISO 3166-2:TO
Trinidad and Tobago	TT	TTO	780	ISO 3166-2:TT
Tunisia	TN	TUN	788	ISO 3166-2:TN
Turkey	TR	TUR	792	ISO 3166-2:TR
Turkmenistan	TM	TKM	795	ISO 3166-2:TM
Laos	LA	LAO	418	ISO 3166-2:LA
Macedonia	MK	MKD	807	ISO 3166-2:MK
Moldova	MD	MDA	498	ISO 3166-2:MD
Palestinian Territories	PS	PSE	275	ISO 3166-2:PS
South Korea	KR	KOR	410	ISO 3166-2:KR
Syria	SY	SYR	760	ISO 3166-2:SY
Taiwan Province of China	TW	TWN	158	ISO 3166-2:TW
Tanzania	TZ	TZA	834	ISO 3166-2:TZ
Turks and Caicos Islands	TC	TCA	796	ISO 3166-2:TC
Tuvalu	TV	TUV	798	ISO 3166-2:TV
Uganda	UG	UGA	800	ISO 3166-2:UG
Ukraine	UA	UKR	804	ISO 3166-2:UA
United Arab Emirates	AE	ARE	784	ISO 3166-2:AE
United States Minor Outlying Islands	UM	UMI	581	ISO 3166-2:UM
Uruguay	UY	URY	858	ISO 3166-2:UY
Uzbekistan	UZ	UZB	860	ISO 3166-2:UZ
Vanuatu	VU	VUT	548	ISO 3166-2:VU
Virgin Islands (British)	VG	VGB	92	ISO 3166-2:VG
Virgin Islands (U.S.)	VI	VIR	850	ISO 3166-2:VI
Wallis and Futuna	WF	WLF	876	ISO 3166-2:WF
Western Sahara	EH	ESH	732	ISO 3166-2:EH
Yemen	YE	YEM	887	ISO 3166-2:YE
Zambia	ZM	ZMB	894	ISO 3166-2:ZM
Zimbabwe	ZW	ZWE	716	ISO 3166-2:ZW
Russia	RU	RUS	643	ISO 3166-2:RU
United States	US	USA	840	ISO 3166-2:US
Bolivia	BO	BOL	68	ISO 3166-2:BO
Kosovo	-1	KOS	\N	-99
North Cyprus	-1	CYN	\N	-99
United Kingdom	GB	GBR	826	ISO 3166-2:GB
Venezuela	VE	VEN	862	ISO 3166-2:VE
Vietnam	VN	VNM	704	ISO 3166-2:VN
\.


--
-- Data for Name: happy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.happy (country, year, lifeladder, loggdppercapita, socialsupport, lifeexpect, choices, generosity, perceptions, paffect, naffect, confidence, democraticquality, deliveryquality, sdladdercy, sdmeanladdercy, gini, giniavg, giniincome, trustedgallup, trustwvs84, trustwvs93, trustwvs98, trustwvs04, trustwvs09, trustwvs14) FROM stdin;
Afghanistan	2008	3.72	7.17	0.45	50.80	0.72	0.18	0.88	0.52	0.26	0.61	-1.93	-1.66	1.77	0.48	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Afghanistan	2009	4.40	7.33	0.55	51.20	0.68	0.20	0.85	0.58	0.24	0.61	-2.04	-1.64	1.72	0.39	\N	\N	0.44	0.29	\N	\N	\N	\N	\N	\N
Afghanistan	2010	4.76	7.39	0.54	51.60	0.60	0.13	0.71	0.62	0.28	0.30	-1.99	-1.62	1.88	0.39	\N	\N	0.33	0.28	\N	\N	\N	\N	\N	\N
Afghanistan	2011	3.83	7.42	0.52	51.92	0.50	0.17	0.73	0.61	0.27	0.31	-1.92	-1.62	1.79	0.47	\N	\N	0.34	\N	\N	\N	\N	\N	\N	\N
Afghanistan	2012	3.78	7.52	0.52	52.24	0.53	0.24	0.78	0.71	0.27	0.44	-1.84	-1.40	1.80	0.48	\N	\N	0.34	\N	\N	\N	\N	\N	\N	\N
Afghanistan	2013	3.57	7.52	0.48	52.56	0.58	0.07	0.82	0.62	0.27	0.48	-1.88	-1.40	1.22	0.34	\N	\N	0.30	\N	\N	\N	\N	\N	\N	\N
Afghanistan	2014	3.13	7.52	0.53	52.88	0.51	0.11	0.87	0.53	0.37	0.41	-1.77	-1.31	1.40	0.45	\N	\N	0.41	\N	\N	\N	\N	\N	\N	\N
Afghanistan	2015	3.98	7.50	0.53	53.20	0.39	0.09	0.88	0.55	0.34	0.26	-1.84	-1.29	2.16	0.54	\N	\N	0.60	\N	\N	\N	\N	\N	\N	\N
Afghanistan	2016	4.22	7.50	0.56	53.00	0.52	0.05	0.79	0.56	0.35	0.32	-1.86	-1.39	1.80	0.43	\N	\N	0.42	\N	\N	\N	\N	\N	\N	\N
Afghanistan	2017	2.66	7.50	0.49	52.80	0.43	-0.11	0.95	0.50	0.37	0.26	-1.89	-1.44	1.45	0.55	\N	\N	0.29	\N	\N	\N	\N	\N	\N	\N
Afghanistan	2018	2.69	7.49	0.51	52.60	0.37	-0.08	0.93	0.42	0.40	0.36	\N	\N	1.41	0.52	\N	\N	0.29	\N	\N	\N	\N	\N	\N	\N
Albania	2007	4.63	9.08	0.82	65.80	0.53	-0.01	0.87	0.55	0.25	0.30	-0.05	-0.42	1.76	0.38	\N	0.30	\N	\N	\N	\N	0.24	0.23	\N	\N
Albania	2009	5.49	9.16	0.83	66.20	0.53	-0.16	0.86	0.64	0.28	\N	0.05	-0.26	1.92	0.35	\N	0.30	0.62	0.11	\N	\N	0.24	0.23	\N	\N
Albania	2010	5.27	9.20	0.73	66.40	0.57	-0.18	0.73	0.65	0.30	\N	-0.03	-0.25	1.86	0.35	\N	0.30	0.54	0.20	\N	\N	0.24	0.23	\N	\N
Albania	2011	5.9	9.23	0.76	66.68	0.49	-0.21	0.88	0.63	0.26	\N	-0.11	-0.28	1.85	0.31	\N	0.30	0.41	0.07	\N	\N	0.24	0.23	\N	\N
Albania	2012	5.51	9.25	0.78	66.96	0.60	-0.17	0.85	0.61	0.27	0.36	-0.06	-0.33	1.92	0.35	0.29	0.30	0.57	\N	\N	\N	0.24	0.23	\N	\N
Albania	2013	4.55	9.26	0.76	67.24	0.63	-0.13	0.86	0.63	0.34	0.34	0.07	-0.33	2.32	0.51	\N	0.30	0.63	\N	\N	\N	0.24	0.23	\N	\N
Albania	2014	4.81	9.28	0.63	67.52	0.73	-0.03	0.88	0.68	0.33	0.50	0.31	-0.19	2.66	0.55	\N	0.30	0.42	\N	\N	\N	0.24	0.23	\N	\N
Albania	2015	4.61	9.30	0.64	67.80	0.70	-0.08	0.88	0.69	0.35	0.51	0.25	-0.15	2.73	0.59	\N	0.30	0.42	\N	\N	\N	0.24	0.23	\N	\N
Albania	2016	4.51	9.34	0.64	68.10	0.73	-0.02	0.90	0.68	0.32	0.40	0.26	-0.13	2.65	0.59	\N	0.30	0.42	\N	\N	\N	0.24	0.23	\N	\N
Albania	2017	4.64	9.38	0.64	68.40	0.75	-0.03	0.88	0.67	0.33	0.46	0.30	-0.13	2.68	0.58	\N	0.30	0.41	\N	\N	\N	0.24	0.23	\N	\N
Albania	2018	5.00	9.41	0.68	68.70	0.82	0.01	0.90	0.71	0.32	0.44	\N	\N	2.64	0.53	\N	0.30	0.46	\N	\N	\N	0.24	0.23	\N	\N
Algeria	2010	5.46	9.46	\N	64.50	0.59	-0.23	0.62	\N	\N	\N	-1.14	-0.74	1.63	0.30	\N	0.28	0.49	\N	\N	\N	\N	0.11	\N	0.18
Algeria	2011	5.32	9.47	0.81	64.66	0.53	-0.20	0.64	0.55	0.25	\N	-1.18	-0.78	1.66	0.31	0.28	0.28	0.43	\N	\N	\N	\N	0.11	\N	0.18
Algeria	2012	5.60	9.49	0.84	64.82	0.59	-0.20	0.69	0.60	0.23	\N	-1.12	-0.77	1.94	0.35	\N	0.28	0.42	\N	\N	\N	\N	0.11	\N	0.18
Algeria	2014	6.35	9.51	0.82	65.14	\N	\N	\N	0.63	0.18	\N	-1.00	-0.78	1.63	0.26	\N	0.28	0.48	\N	\N	\N	\N	0.11	\N	0.18
Algeria	2016	5.34	9.54	0.75	65.50	\N	\N	\N	0.66	0.38	\N	-0.98	-0.82	2.11	0.40	\N	0.28	0.60	\N	\N	\N	\N	0.11	\N	0.18
Algeria	2017	5.25	9.54	0.81	65.70	0.44	-0.19	0.70	0.64	0.29	\N	-0.93	-0.82	2.04	0.39	\N	0.28	0.53	\N	\N	\N	\N	0.11	\N	0.18
Algeria	2018	5.04	9.56	0.80	65.90	0.58	-0.17	0.76	0.59	0.29	\N	\N	\N	1.97	0.39	\N	0.28	0.67	\N	\N	\N	\N	0.11	\N	0.18
Angola	2011	5.59	8.68	0.72	52.50	0.58	0.07	0.91	0.66	0.36	0.23	-0.75	-1.22	2.21	0.40	\N	0.47	\N	\N	\N	\N	\N	\N	\N	\N
Angola	2012	4.36	8.70	0.75	53.20	0.46	-0.12	0.91	0.56	0.30	0.24	-0.73	-1.12	2.15	0.49	\N	0.47	\N	\N	\N	\N	\N	\N	\N	\N
Angola	2013	3.94	8.73	0.72	53.90	0.41	-0.09	0.82	0.66	0.37	0.55	-0.75	-1.21	2.33	0.59	\N	0.47	0.59	\N	\N	\N	\N	\N	\N	\N
Angola	2014	3.79	8.74	0.75	54.60	0.37	-0.16	0.83	0.58	0.37	0.57	-0.74	-1.17	2.20	0.58	\N	0.47	0.44	\N	\N	\N	\N	\N	\N	\N
Argentina	2006	6.31	9.72	0.94	66.82	0.73	-0.15	0.85	0.82	0.33	0.52	0.20	-0.40	1.98	0.31	0.47	0.46	\N	\N	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2007	6.07	9.79	0.86	66.94	0.65	-0.14	0.88	0.83	0.28	0.41	0.27	-0.40	2.04	0.34	0.46	0.46	\N	\N	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2008	5.96	9.82	0.89	67.06	0.68	-0.13	0.86	0.82	0.32	0.29	0.14	-0.50	2.15	0.36	0.45	0.46	\N	\N	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2009	6.42	9.75	0.92	67.18	0.64	-0.13	0.88	0.86	0.24	0.27	0.02	-0.57	2.07	0.32	0.44	0.46	0.37	0.17	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2010	6.44	9.84	0.93	67.30	0.73	-0.12	0.85	0.85	0.21	0.35	0.14	-0.47	2.11	0.33	0.43	0.46	0.37	0.23	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2011	6.78	9.88	0.89	67.48	0.82	-0.17	0.75	0.84	0.23	0.61	0.25	-0.44	1.99	0.29	0.42	0.46	0.35	\N	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2012	6.47	9.86	0.90	67.66	0.75	-0.14	0.82	0.86	0.27	0.42	0.20	-0.57	2.10	0.32	0.41	0.46	0.32	\N	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2013	6.58	9.88	0.91	67.84	0.74	-0.13	0.82	0.84	0.25	0.43	0.17	-0.59	1.99	0.30	0.41	0.46	0.36	\N	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2014	6.67	9.84	0.92	68.02	0.75	-0.16	0.85	0.86	0.24	0.41	0.17	-0.67	2.13	0.32	0.41	0.46	0.31	\N	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2015	6.70	9.86	0.93	68.20	0.88	-0.17	0.85	0.86	0.31	0.38	0.21	-0.58	1.95	0.29	\N	0.46	0.35	\N	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2016	6.43	9.83	0.88	68.40	0.85	-0.19	0.85	0.84	0.31	0.42	0.35	-0.24	2.13	0.33	0.42	0.46	0.33	\N	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2017	6.04	9.85	0.91	68.60	0.83	-0.18	0.84	0.81	0.29	0.31	0.35	-0.16	2.41	0.40	\N	0.46	0.39	\N	0.27	0.22	0.17	0.15	0.17	0.19
Argentina	2018	5.79	9.81	0.90	68.80	0.85	-0.21	0.86	0.82	0.32	0.26	\N	\N	2.47	0.43	\N	0.46	0.41	\N	0.27	0.22	0.17	0.15	0.17	0.19
Armenia	2006	4.29	8.72	0.68	64.80	0.52	-0.22	0.85	0.49	0.47	0.34	-0.50	-0.30	1.99	0.46	0.30	0.32	\N	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2007	4.88	8.86	0.76	64.90	0.61	-0.24	0.82	0.51	0.41	0.39	-0.30	-0.34	1.71	0.35	0.31	0.32	\N	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2008	4.65	8.93	0.71	65.00	0.46	-0.20	0.88	0.52	0.38	0.46	-0.43	-0.22	1.95	0.42	0.29	0.32	\N	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2009	4.18	8.78	0.68	65.10	0.44	-0.20	0.88	0.54	0.41	0.37	-0.32	-0.21	2.18	0.52	0.28	0.32	0.43	0.16	\N	\N	0.23	\N	\N	0.11
Armenia	2010	4.37	8.81	0.66	65.20	0.46	-0.16	0.89	0.51	0.43	0.36	-0.39	-0.26	2.09	0.48	0.30	0.32	0.39	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2011	4.26	8.86	0.71	65.36	0.46	-0.21	0.87	0.47	0.46	0.34	-0.38	-0.24	1.95	0.46	0.29	0.32	0.39	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2012	4.32	8.92	0.68	65.52	0.50	-0.20	0.89	0.52	0.46	0.29	-0.21	-0.17	2.26	0.52	0.30	0.32	0.42	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2013	4.28	8.95	0.72	65.68	0.50	-0.18	0.90	0.56	0.45	0.26	-0.24	-0.14	2.13	0.50	0.31	0.32	0.46	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2014	4.45	8.98	0.74	65.84	0.51	-0.21	0.92	0.58	0.40	0.21	-0.43	-0.22	2.14	0.48	0.32	0.32	0.39	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2015	4.35	9.01	0.72	66.00	0.55	-0.19	0.90	0.59	0.44	0.17	-0.39	-0.21	2.24	0.51	0.32	0.32	0.38	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2016	4.33	9.01	0.71	66.30	0.61	-0.16	0.92	0.59	0.44	0.18	-0.62	-0.15	2.13	0.49	0.33	0.32	0.38	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2017	4.29	9.08	0.70	66.60	0.61	-0.13	0.86	0.63	0.44	0.25	-0.63	-0.13	2.33	0.54	\N	0.32	0.48	\N	\N	\N	0.23	\N	\N	0.11
Armenia	2018	5.06	9.12	0.81	66.90	0.81	-0.15	0.68	0.58	0.45	0.67	\N	\N	2.10	0.42	\N	0.32	0.41	\N	\N	\N	0.23	\N	\N	0.11
Australia	2005	7.34	10.57	0.97	71.40	0.93	\N	0.39	0.84	0.24	0.53	1.20	1.76	1.53	0.21	\N	0.34	\N	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2007	7.29	10.61	0.97	71.72	0.89	0.34	0.51	0.83	0.22	0.53	1.15	1.82	1.76	0.24	\N	0.34	\N	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2008	7.25	10.63	0.95	71.88	0.92	0.30	0.43	0.83	0.22	0.64	1.16	1.84	1.69	0.23	0.35	0.34	\N	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2010	7.45	10.63	0.95	72.20	0.93	0.31	0.37	0.83	0.22	0.61	1.15	1.82	1.74	0.23	0.35	0.34	0.41	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2011	7.41	10.64	0.97	72.30	0.94	0.36	0.38	0.82	0.20	0.53	1.19	1.84	1.78	0.24	\N	0.34	0.43	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2012	7.20	10.66	0.94	72.40	0.94	0.27	0.37	0.81	0.21	0.42	1.25	1.79	1.76	0.24	\N	0.34	0.41	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2013	7.36	10.67	0.93	72.50	0.93	0.26	0.43	0.82	0.18	0.46	1.23	1.75	1.74	0.24	\N	0.34	0.38	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2014	7.29	10.68	0.92	72.60	0.92	0.31	0.44	0.78	0.25	0.46	1.20	1.81	1.80	0.25	\N	0.34	0.45	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2015	7.31	10.69	0.95	72.70	0.92	0.32	0.36	0.79	0.21	0.48	1.12	1.77	1.69	0.23	\N	0.34	0.42	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2016	7.25	10.70	0.94	73.00	0.92	0.23	0.40	0.79	0.24	0.45	1.20	1.76	1.70	0.23	\N	0.34	0.52	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2017	7.26	10.71	0.95	73.30	0.91	0.31	0.41	0.78	0.23	0.45	1.14	1.74	1.75	0.24	\N	0.34	0.43	\N	0.48	\N	0.39	\N	0.46	0.52
Australia	2018	7.18	10.72	0.94	73.60	0.92	0.14	0.40	0.76	0.19	0.47	\N	\N	1.75	0.24	\N	0.34	0.43	\N	0.48	\N	0.39	\N	0.46	0.52
Austria	2006	7.12	10.66	0.94	70.76	0.94	0.30	0.49	0.82	0.17	0.50	1.22	1.83	1.76	0.25	0.30	0.30	\N	\N	\N	\N	\N	\N	\N	\N
Austria	2008	7.18	10.70	0.93	71.08	0.88	0.29	0.61	0.83	0.17	0.26	1.35	1.79	1.69	0.24	0.30	0.30	\N	\N	\N	\N	\N	\N	\N	\N
Austria	2010	7.30	10.68	0.91	71.40	0.90	0.13	0.55	0.81	0.16	0.49	1.29	1.67	1.75	0.24	0.30	0.30	0.37	0.30	\N	\N	\N	\N	\N	\N
Austria	2011	7.47	10.70	0.94	71.54	0.94	0.13	0.70	0.79	0.15	0.41	1.30	1.56	1.85	0.25	0.31	0.30	0.35	\N	\N	\N	\N	\N	\N	\N
Austria	2012	7.40	10.70	0.95	71.68	0.92	0.12	0.77	0.82	0.16	0.38	1.39	1.59	1.72	0.23	0.31	0.30	0.32	\N	\N	\N	\N	\N	\N	\N
Austria	2013	7.50	10.70	0.95	71.82	0.92	0.17	0.68	0.79	0.16	0.42	1.41	1.62	1.86	0.25	0.31	0.30	0.36	\N	\N	\N	\N	\N	\N	\N
Austria	2014	6.95	10.70	0.90	71.96	0.89	0.12	0.57	0.78	0.17	0.41	1.33	1.62	1.84	0.26	0.31	0.30	0.34	\N	\N	\N	\N	\N	\N	\N
Austria	2015	7.08	10.70	0.93	72.10	0.90	0.10	0.56	0.80	0.16	0.45	1.26	1.56	1.76	0.25	0.31	0.30	0.32	\N	\N	\N	\N	\N	\N	\N
Austria	2016	7.05	10.70	0.93	72.40	0.89	0.08	0.52	0.76	0.20	0.43	1.12	1.58	1.70	0.24	\N	0.30	0.29	\N	\N	\N	\N	\N	\N	\N
Austria	2017	7.29	10.72	0.91	72.70	0.89	0.13	0.52	0.75	0.18	0.44	1.19	1.56	1.56	0.21	\N	0.30	0.32	\N	\N	\N	\N	\N	\N	\N
Austria	2018	7.40	10.74	0.91	73.00	0.90	0.05	0.52	0.75	0.23	0.49	\N	\N	1.55	0.21	\N	0.30	0.30	\N	\N	\N	\N	\N	\N	\N
Azerbaijan	2006	4.73	9.28	0.85	61.88	0.77	-0.25	0.77	0.51	0.28	0.75	-1.19	-0.79	1.56	0.33	\N	0.21	\N	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2007	4.57	9.49	0.75	62.26	0.52	-0.23	0.87	0.52	0.28	0.71	-0.93	-0.81	1.61	0.35	\N	0.21	\N	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2008	4.82	9.57	0.68	62.64	0.60	-0.05	0.72	0.58	0.23	0.79	-0.83	-0.78	1.89	0.39	\N	0.21	\N	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2009	4.57	9.64	0.74	63.02	0.50	-0.11	0.75	0.54	0.23	0.77	-0.77	-0.76	1.89	0.41	\N	0.21	0.33	0.27	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2010	4.22	9.68	0.69	63.40	0.50	-0.14	0.86	0.53	0.27	0.70	-0.77	-0.83	1.89	0.45	\N	0.21	0.42	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2011	4.68	9.66	0.73	63.64	0.54	-0.13	0.80	0.54	0.26	0.74	-0.92	-0.80	1.88	0.40	\N	0.21	0.33	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2012	4.91	9.67	0.76	63.88	0.60	-0.16	0.76	0.55	0.27	0.71	-1.01	-0.80	1.89	0.39	\N	0.21	0.30	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2013	5.48	9.72	0.77	64.12	0.67	-0.19	0.70	0.62	0.24	0.75	-0.91	-0.64	1.44	0.26	\N	0.21	0.27	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2014	5.25	9.72	0.80	64.36	0.73	-0.23	0.65	0.60	0.22	0.78	-1.02	-0.58	1.47	0.28	\N	0.21	0.25	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2015	5.15	9.72	0.79	64.60	0.76	-0.22	0.62	0.61	0.21	0.79	-1.14	-0.53	1.70	0.33	\N	0.21	0.29	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2016	5.30	9.68	0.78	64.90	0.71	-0.22	0.61	0.60	0.19	0.73	-1.18	-0.45	1.61	0.30	\N	0.21	0.29	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2017	5.15	9.67	0.79	65.20	0.73	-0.25	0.65	0.59	0.20	0.77	-1.16	-0.46	1.67	0.32	\N	0.21	0.31	\N	\N	\N	0.19	\N	\N	0.15
Azerbaijan	2018	5.17	9.68	0.78	65.50	0.77	-0.25	0.56	0.59	0.19	0.83	\N	\N	1.86	0.36	\N	0.21	0.26	\N	\N	\N	0.19	\N	\N	0.15
Bahrain	2009	5.70	10.61	0.90	65.94	0.90	0.03	0.51	0.76	0.42	\N	-0.46	0.47	2.37	0.41	\N	\N	0.35	0.11	\N	\N	\N	\N	\N	0.34
Bahrain	2010	5.94	10.61	0.88	66.30	0.86	-0.01	0.71	0.68	0.42	\N	-0.73	0.45	1.58	0.27	\N	\N	0.33	\N	\N	\N	\N	\N	\N	0.34
Bahrain	2011	4.82	10.60	0.91	66.58	0.87	-0.06	0.58	0.54	0.51	\N	-1.08	0.45	1.81	0.37	\N	\N	0.35	\N	\N	\N	\N	\N	\N	0.34
Bahrain	2012	5.03	10.62	0.91	66.86	0.68	\N	0.44	0.59	0.38	\N	-1.22	0.47	1.90	0.38	\N	\N	0.33	\N	\N	\N	\N	\N	\N	0.34
Bahrain	2013	6.69	10.66	0.88	67.14	0.81	\N	0.52	0.77	0.31	\N	-1.33	0.49	1.81	0.27	\N	\N	0.42	\N	\N	\N	\N	\N	\N	0.34
Bahrain	2014	6.17	10.69	\N	67.42	\N	\N	\N	\N	\N	\N	-1.11	0.49	2.42	0.39	\N	\N	0.46	\N	\N	\N	\N	\N	\N	0.34
Bahrain	2015	6.01	10.69	0.85	67.70	0.85	0.10	\N	0.72	0.30	\N	-1.19	0.49	2.18	0.36	\N	\N	0.48	\N	\N	\N	\N	\N	\N	0.34
Bahrain	2016	6.17	10.68	0.86	68.10	0.89	0.08	\N	0.79	0.28	\N	-1.08	0.34	2.26	0.37	\N	\N	0.48	\N	\N	\N	\N	\N	\N	0.34
Bahrain	2017	6.23	10.68	0.88	68.50	0.91	0.13	\N	0.81	0.29	\N	-1.17	0.23	2.22	0.36	\N	\N	0.45	\N	\N	\N	\N	\N	\N	0.34
Bangladesh	2006	4.32	7.62	0.67	59.02	0.61	0.07	0.79	0.60	0.32	0.61	-0.98	-1.04	1.76	0.41	\N	0.33	\N	\N	\N	\N	0.20	0.23	\N	\N
Bangladesh	2007	4.61	7.67	0.51	59.44	0.60	0.05	0.81	0.63	0.31	0.73	-1.06	-0.88	1.80	0.39	\N	0.33	\N	\N	\N	\N	0.20	0.23	\N	\N
Bangladesh	2008	5.05	7.72	0.47	59.86	0.61	-0.04	0.80	0.73	0.23	0.76	-0.97	-0.86	1.76	0.35	\N	0.33	\N	\N	\N	\N	0.20	0.23	\N	\N
Bangladesh	2009	5.08	7.76	0.53	60.28	0.63	-0.07	0.78	0.67	0.22	0.83	-0.92	-0.88	1.69	0.33	\N	0.33	0.42	0.08	\N	\N	0.20	0.23	\N	\N
Bangladesh	2010	4.86	7.80	0.55	60.70	0.66	-0.01	0.77	0.63	0.29	0.65	-0.85	-0.86	1.93	0.40	0.32	0.33	0.45	0.15	\N	\N	0.20	0.23	\N	\N
Bangladesh	2011	4.99	7.85	0.61	61.12	0.84	-0.06	0.76	0.68	0.23	0.79	-0.86	-0.85	1.86	0.37	\N	0.33	0.43	\N	\N	\N	0.20	0.23	\N	\N
Bangladesh	2012	4.72	7.90	0.58	61.54	0.67	-0.03	0.76	0.71	0.18	0.71	-0.89	-0.88	1.93	0.41	\N	0.33	0.43	\N	\N	\N	0.20	0.23	\N	\N
Bangladesh	2013	4.66	7.95	0.53	61.96	0.74	-0.01	0.74	0.62	0.25	0.74	-1.02	-0.87	2.03	0.44	\N	0.33	0.42	\N	\N	\N	0.20	0.23	\N	\N
Bangladesh	2014	4.64	8.00	0.58	62.38	0.74	-0.09	0.79	\N	0.23	0.72	-0.68	-0.84	1.90	0.41	\N	0.33	0.39	\N	\N	\N	0.20	0.23	\N	\N
Bangladesh	2015	4.63	8.05	0.60	62.80	0.81	-0.06	0.72	0.63	0.23	0.76	-0.86	-0.80	2.16	0.47	\N	0.33	0.47	\N	\N	\N	0.20	0.23	\N	\N
Bangladesh	2016	4.56	8.11	0.65	63.30	0.87	-0.08	0.69	0.56	0.24	0.85	-0.92	-0.75	1.98	0.44	0.32	0.33	0.44	\N	\N	\N	0.20	0.23	\N	\N
Bangladesh	2017	4.31	8.17	0.71	63.80	0.90	0.02	0.64	0.57	0.21	0.88	-0.93	-0.76	1.87	0.43	\N	0.33	0.53	\N	\N	\N	0.20	0.23	\N	\N
Bangladesh	2018	4.50	8.22	0.71	64.30	0.90	-0.04	0.70	0.54	0.36	0.83	\N	\N	2.16	0.48	\N	0.33	0.37	\N	\N	\N	0.20	0.23	\N	\N
Belarus	2006	5.66	9.43	0.92	61.10	0.71	-0.25	0.71	0.61	0.27	0.59	-0.80	-1.17	1.77	0.31	0.28	0.28	\N	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2007	5.62	9.51	0.86	61.40	0.67	-0.23	0.69	0.60	0.23	0.54	-0.68	-1.10	1.79	0.32	0.30	0.28	\N	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2008	5.46	9.61	0.90	61.70	0.64	-0.23	0.70	\N	0.25	0.53	-0.54	-1.01	1.80	0.33	0.28	0.28	\N	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2009	5.56	9.62	0.91	62.00	0.68	-0.21	0.68	0.57	0.22	0.55	-0.53	-0.98	1.94	0.35	0.28	0.28	0.34	0.36	\N	0.25	0.23	\N	\N	0.33
Belarus	2010	5.53	9.69	0.92	62.30	0.70	-0.17	0.71	0.57	0.21	0.59	-0.83	-1.00	1.85	0.33	0.29	0.28	0.35	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2011	5.23	9.75	0.91	62.88	0.66	-0.18	0.67	0.52	0.25	\N	-0.87	-1.01	1.98	0.38	0.27	0.28	0.29	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2012	5.75	9.77	0.90	63.46	0.65	-0.23	0.66	0.52	0.18	\N	-0.75	-0.86	2.04	0.35	0.27	0.28	0.28	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2013	5.88	9.78	0.92	64.04	0.72	-0.19	0.65	0.61	0.21	0.51	-0.77	-0.83	1.78	0.30	0.27	0.28	0.27	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2014	5.81	9.80	0.88	64.62	0.65	-0.06	0.68	0.62	0.21	0.51	-0.63	-0.66	1.88	0.32	0.27	0.28	0.26	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2015	5.72	9.75	0.92	65.20	0.62	-0.10	0.67	0.58	0.18	0.52	-0.68	-0.65	2.00	0.35	0.27	0.28	0.33	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2016	5.18	9.73	0.93	65.50	0.66	-0.13	0.66	0.55	0.18	0.45	-0.60	-0.60	1.78	0.34	0.27	0.28	0.32	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2017	5.55	9.75	0.90	65.80	0.62	-0.13	0.65	0.54	0.23	0.45	-0.66	-0.54	1.66	0.30	\N	0.28	0.28	\N	\N	0.25	0.23	\N	\N	0.33
Belarus	2018	5.23	9.78	0.90	66.10	0.64	-0.18	0.72	0.45	0.24	0.42	\N	\N	1.69	0.32	\N	0.28	0.29	\N	\N	0.25	0.23	\N	\N	0.33
Belgium	2005	7.26	10.59	0.93	69.90	0.92	\N	0.60	0.80	0.26	0.55	1.11	1.41	1.50	0.21	0.29	0.28	\N	\N	\N	\N	\N	\N	\N	\N
Belgium	2007	7.22	10.64	0.92	70.26	0.90	0.07	0.72	0.81	0.22	0.60	1.06	1.43	1.47	0.20	0.29	0.28	\N	\N	\N	\N	\N	\N	\N	\N
Belgium	2008	7.12	10.64	0.92	70.44	0.89	0.00	0.65	0.81	0.24	0.46	0.97	1.38	1.53	0.21	0.28	0.28	\N	\N	\N	\N	\N	\N	\N	\N
Belgium	2010	6.85	10.62	0.93	70.80	0.81	0.02	0.70	0.83	0.24	0.34	1.09	1.45	1.60	0.23	0.28	0.28	0.39	0.31	\N	\N	\N	\N	\N	\N
Belgium	2011	7.11	10.63	0.94	70.92	0.88	-0.02	0.71	0.83	0.23	0.29	1.14	1.47	1.63	0.23	0.28	0.28	0.45	\N	\N	\N	\N	\N	\N	\N
Belgium	2012	6.94	10.62	0.93	71.04	0.86	-0.05	0.76	0.82	0.24	0.44	1.14	1.47	1.83	0.26	0.28	0.28	0.33	\N	\N	\N	\N	\N	\N	\N
Belgium	2013	7.10	10.62	0.91	71.16	0.89	0.01	0.57	0.80	0.22	0.55	1.16	1.50	1.50	0.21	0.28	0.28	0.33	\N	\N	\N	\N	\N	\N	\N
Belgium	2014	6.86	10.63	0.94	71.28	0.86	0.00	0.51	0.80	0.25	0.47	1.03	1.41	1.68	0.25	0.28	0.28	0.40	\N	\N	\N	\N	\N	\N	\N
Belgium	2015	6.90	10.64	0.89	71.40	0.87	0.06	0.47	0.81	0.24	0.46	0.99	1.44	1.51	0.22	0.28	0.28	0.40	\N	\N	\N	\N	\N	\N	\N
Belgium	2016	6.95	10.65	0.93	71.60	0.87	-0.06	0.50	0.76	0.26	0.42	0.91	1.42	1.50	0.22	\N	0.28	0.35	\N	\N	\N	\N	\N	\N	\N
Belgium	2017	6.93	10.66	0.92	71.80	0.86	0.05	0.54	0.79	0.23	0.45	0.90	1.32	1.51	0.22	\N	0.28	0.35	\N	\N	\N	\N	\N	\N	\N
Belgium	2018	6.89	10.67	0.93	72.00	0.81	-0.13	0.63	0.75	0.25	0.44	\N	\N	1.55	0.22	\N	0.28	0.30	\N	\N	\N	\N	\N	\N	\N
Belize	2007	6.45	8.97	0.87	61.60	0.71	0.02	0.77	0.76	0.25	0.26	0.36	-0.33	2.04	0.32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Belize	2014	5.96	8.99	0.76	62.22	0.87	0.00	0.78	0.75	0.28	0.38	0.28	-0.52	2.46	0.41	\N	\N	0.45	\N	\N	\N	\N	\N	\N	\N
Benin	2006	3.33	7.47	0.44	50.10	0.58	0.01	0.79	0.59	0.31	0.54	0.45	-0.54	1.52	0.46	\N	0.43	\N	\N	\N	\N	\N	\N	\N	\N
Benin	2008	3.67	7.52	0.38	50.90	0.71	0.02	0.83	0.58	0.30	0.60	0.36	-0.50	1.73	0.47	\N	0.43	\N	\N	\N	\N	\N	\N	\N	\N
Benin	2011	3.87	7.51	0.48	51.98	0.77	-0.12	0.85	0.63	0.22	0.78	0.24	-0.54	1.69	0.44	0.43	0.43	0.36	\N	\N	\N	\N	\N	\N	\N
Benin	2012	3.19	7.53	0.52	52.26	0.77	-0.09	0.81	0.58	0.23	0.58	0.24	-0.58	1.64	0.51	\N	0.43	0.50	\N	\N	\N	\N	\N	\N	\N
Benin	2013	3.48	7.57	0.58	52.54	0.78	-0.06	0.86	0.70	0.22	0.55	0.23	-0.55	1.59	0.46	\N	0.43	0.47	\N	\N	\N	\N	\N	\N	\N
Benin	2014	3.35	7.60	0.51	52.82	0.78	-0.07	0.85	0.59	0.27	0.57	0.15	-0.55	1.69	0.50	\N	0.43	0.51	\N	\N	\N	\N	\N	\N	\N
Benin	2015	3.62	7.59	0.43	53.10	0.73	0.00	0.85	0.59	0.37	0.51	0.14	-0.57	2.05	0.57	0.48	0.43	0.53	\N	\N	\N	\N	\N	\N	\N
Benin	2016	4.01	7.61	0.49	53.50	0.78	-0.04	0.84	0.61	0.46	0.64	0.21	-0.55	2.19	0.55	\N	0.43	0.46	\N	\N	\N	\N	\N	\N	\N
Benin	2017	4.85	7.63	0.44	53.90	0.73	-0.04	0.77	0.61	0.46	0.62	0.21	-0.57	3.00	0.62	\N	0.43	0.58	\N	\N	\N	\N	\N	\N	\N
Benin	2018	5.82	7.66	0.50	54.30	0.71	0.02	0.75	0.65	0.47	0.64	\N	\N	3.31	0.57	\N	0.43	0.61	\N	\N	\N	\N	\N	\N	\N
Bhutan	2013	5.57	8.86	0.82	59.60	0.81	0.36	0.80	0.78	0.22	0.98	0.31	0.13	1.28	0.23	\N	0.39	0.36	\N	\N	\N	\N	\N	\N	\N
Bhutan	2014	4.94	8.90	0.88	59.90	0.83	0.28	0.65	0.86	0.32	0.96	0.48	0.23	0.99	0.20	\N	0.39	0.47	\N	\N	\N	\N	\N	\N	\N
Bhutan	2015	5.08	8.95	0.85	60.20	0.83	0.29	0.63	0.81	0.31	0.95	0.47	0.31	1.47	0.29	\N	0.39	0.42	\N	\N	\N	\N	\N	\N	\N
Bolivia	2006	5.37	8.48	0.83	59.00	0.77	-0.04	0.79	0.74	0.43	0.54	-0.36	-0.72	1.82	0.34	0.57	0.52	\N	\N	\N	\N	\N	\N	\N	\N
Bolivia	2007	5.63	8.51	0.80	59.50	0.78	0.01	0.82	0.77	0.39	0.51	-0.40	-0.70	1.94	0.34	0.55	0.52	\N	\N	\N	\N	\N	\N	\N	\N
Bolivia	2008	5.30	8.55	0.79	60.00	0.73	-0.09	0.80	0.78	0.39	0.44	-0.35	-0.75	1.88	0.35	0.51	0.52	\N	\N	\N	\N	\N	\N	\N	\N
Bolivia	2009	6.09	8.57	0.83	60.50	0.78	-0.03	0.76	0.80	0.37	0.47	-0.25	-0.81	1.98	0.32	0.49	0.52	0.42	0.14	\N	\N	\N	\N	\N	\N
Bolivia	2010	5.78	8.60	0.81	61.00	0.70	-0.06	0.78	0.77	0.35	0.38	-0.23	-0.70	1.76	0.30	\N	0.52	0.41	0.10	\N	\N	\N	\N	\N	\N
Bolivia	2011	5.78	8.63	0.82	61.34	0.78	-0.03	0.82	0.76	0.36	0.33	-0.24	-0.69	1.73	0.30	0.46	0.52	0.37	\N	\N	\N	\N	\N	\N	\N
Bolivia	2012	6.02	8.66	0.78	61.68	0.86	-0.01	0.84	0.78	0.41	0.44	-0.27	-0.73	2.17	0.36	0.47	0.52	0.42	\N	\N	\N	\N	\N	\N	\N
Bolivia	2013	5.77	8.71	0.80	62.02	0.85	-0.06	0.81	0.76	0.41	0.43	-0.20	-0.70	1.98	0.34	0.48	0.52	0.37	\N	\N	\N	\N	\N	\N	\N
Bolivia	2014	5.86	8.75	0.82	62.36	0.88	0.02	0.83	0.81	0.40	0.47	-0.18	-0.79	1.84	0.31	0.48	0.52	0.41	\N	\N	\N	\N	\N	\N	\N
Bolivia	2015	5.83	8.78	0.83	62.70	0.88	-0.02	0.86	0.79	0.39	0.49	-0.14	-0.84	1.86	0.32	0.47	0.52	0.36	\N	\N	\N	\N	\N	\N	\N
Bolivia	2016	5.77	8.81	0.80	63.00	0.88	-0.04	0.85	0.78	0.38	0.40	-0.14	-0.86	2.05	0.36	0.45	0.52	0.43	\N	\N	\N	\N	\N	\N	\N
Bolivia	2017	5.65	8.84	0.78	63.30	0.88	-0.12	0.82	0.70	0.43	0.43	-0.16	-0.79	2.25	0.40	\N	0.52	0.41	\N	\N	\N	\N	\N	\N	\N
Bolivia	2018	5.92	8.86	0.83	63.60	0.86	-0.09	0.79	0.74	0.39	0.40	\N	\N	2.20	0.37	\N	0.52	0.45	\N	\N	\N	\N	\N	\N	\N
Bosnia and Herzegovina	2007	4.90	9.14	0.77	66.04	0.34	0.01	0.93	0.61	0.30	0.40	-0.25	-0.49	2.29	0.47	0.33	0.33	\N	\N	\N	\N	0.25	0.16	\N	\N
Bosnia and Herzegovina	2009	4.96	9.17	0.74	66.48	0.26	-0.03	0.96	0.57	0.39	\N	-0.33	-0.39	2.11	0.43	\N	0.33	0.42	0.17	\N	\N	0.25	0.16	\N	\N
Bosnia and Herzegovina	2010	4.67	9.18	0.77	66.70	0.36	-0.13	0.93	0.52	0.41	\N	-0.39	-0.38	1.97	0.42	\N	0.33	0.40	0.15	\N	\N	0.25	0.16	\N	\N
Bosnia and Herzegovina	2011	4.99	9.20	0.73	66.74	0.33	-0.04	0.92	0.60	0.33	\N	-0.49	-0.36	2.05	0.41	0.33	0.33	0.39	0.18	\N	\N	0.25	0.16	\N	\N
Bosnia and Herzegovina	2012	4.77	9.20	0.78	66.78	0.42	-0.01	0.95	0.55	0.34	0.19	-0.32	-0.25	2.41	0.51	\N	0.33	0.41	\N	\N	\N	0.25	0.16	\N	\N
Bosnia and Herzegovina	2013	5.12	9.24	0.77	66.82	0.39	0.04	0.97	0.54	0.31	0.11	-0.26	-0.22	2.22	0.43	\N	0.33	0.38	\N	\N	\N	0.25	0.16	\N	\N
Bosnia and Herzegovina	2014	5.25	9.26	0.79	66.86	0.41	0.23	0.98	0.53	0.26	0.10	-0.05	-0.26	2.24	0.43	\N	0.33	0.44	\N	\N	\N	0.25	0.16	\N	\N
Bosnia and Herzegovina	2015	5.12	9.30	0.66	66.90	0.63	-0.05	0.96	0.53	0.29	0.19	-0.25	-0.35	2.43	0.47	0.33	0.33	0.45	\N	\N	\N	0.25	0.16	\N	\N
Bosnia and Herzegovina	2016	5.18	9.34	0.81	67.20	0.63	0.13	0.96	0.64	0.30	0.21	-0.27	-0.31	2.22	0.43	\N	0.33	0.40	\N	\N	\N	0.25	0.16	\N	\N
Bosnia and Herzegovina	2017	5.09	9.37	0.78	67.50	0.56	0.09	0.92	0.60	0.27	0.13	-0.29	-0.34	2.28	0.45	\N	0.33	0.49	\N	\N	\N	0.25	0.16	\N	\N
Bosnia and Herzegovina	2018	5.89	9.40	0.84	67.80	0.66	0.12	0.91	0.64	0.28	0.25	\N	\N	1.99	0.34	\N	0.33	0.39	\N	\N	\N	0.25	0.16	\N	\N
Botswana	2006	4.74	9.42	0.88	46.82	0.82	-0.20	0.72	0.69	0.23	0.81	0.76	0.66	2.09	0.44	\N	0.63	\N	\N	\N	\N	\N	\N	\N	\N
Botswana	2008	5.45	9.53	0.83	49.86	0.86	-0.17	0.81	0.73	0.22	0.88	0.77	0.70	2.40	0.44	\N	0.63	\N	\N	\N	\N	\N	\N	\N	\N
Botswana	2010	3.55	9.50	0.87	52.90	0.83	-0.15	0.81	0.69	0.17	0.74	0.72	0.65	1.94	0.55	\N	0.63	0.61	0.09	\N	\N	\N	\N	\N	\N
Botswana	2011	3.52	9.54	0.86	53.68	0.81	-0.26	0.82	0.74	0.16	0.79	0.75	0.65	1.96	0.56	\N	0.63	0.61	\N	\N	\N	\N	\N	\N	\N
Botswana	2012	4.84	9.56	0.84	54.46	0.80	-0.21	0.81	0.77	0.17	0.66	0.82	0.67	1.99	0.41	\N	0.63	0.58	\N	\N	\N	\N	\N	\N	\N
Botswana	2013	4.13	9.65	0.86	55.24	0.77	-0.16	0.75	0.70	0.24	0.65	0.80	0.63	2.12	0.51	\N	0.63	0.61	\N	\N	\N	\N	\N	\N	\N
Botswana	2014	4.03	9.67	0.86	56.02	0.79	-0.11	0.74	0.67	0.25	0.71	0.72	0.61	2.36	0.59	\N	0.63	0.62	\N	\N	\N	\N	\N	\N	\N
Botswana	2015	3.76	9.64	0.82	56.80	0.86	-0.12	0.86	0.75	0.26	0.82	0.74	0.60	2.29	0.61	\N	0.63	0.65	\N	\N	\N	\N	\N	\N	\N
Botswana	2016	3.50	9.66	0.77	57.50	0.85	-0.26	0.73	0.69	0.25	0.80	0.69	0.63	2.69	0.77	\N	0.63	0.66	\N	\N	\N	\N	\N	\N	\N
Botswana	2017	3.50	9.67	0.77	58.20	0.82	-0.25	0.73	0.66	0.28	0.77	0.71	0.55	2.67	0.76	\N	0.63	0.64	\N	\N	\N	\N	\N	\N	\N
Botswana	2018	3.46	9.68	0.79	58.90	0.82	-0.26	0.81	0.73	0.27	0.72	\N	\N	2.64	0.76	\N	0.63	0.62	\N	\N	\N	\N	\N	\N	\N
Brazil	2005	6.64	9.42	0.88	63.30	0.88	\N	0.74	0.82	0.30	0.34	0.10	-0.16	2.44	0.37	0.56	0.55	\N	\N	\N	0.07	\N	\N	0.09	0.07
Brazil	2007	6.32	9.49	0.89	63.78	0.78	-0.03	0.73	0.86	0.30	0.38	0.09	-0.17	2.25	0.36	0.55	0.55	\N	\N	\N	0.07	\N	\N	0.09	0.07
Brazil	2008	6.69	9.53	0.88	64.02	0.78	-0.09	0.69	0.82	0.27	0.51	0.13	-0.09	2.27	0.34	0.54	0.55	\N	\N	\N	0.07	\N	\N	0.09	0.07
Brazil	2009	7.00	9.52	0.91	64.26	0.77	-0.07	0.72	0.83	0.27	0.43	0.34	-0.06	2.24	0.32	0.54	0.55	0.43	0.13	\N	0.07	\N	\N	0.09	0.07
Brazil	2010	6.84	9.58	0.91	64.50	0.81	-0.06	0.66	0.82	0.25	0.51	0.29	0.05	2.26	0.33	\N	0.55	0.43	0.15	\N	0.07	\N	\N	0.09	0.07
Brazil	2011	7.04	9.61	0.92	64.76	0.83	-0.08	0.66	0.81	0.27	0.50	0.19	0.06	2.04	0.29	0.53	0.55	0.41	\N	\N	0.07	\N	\N	0.09	0.07
Brazil	2012	6.66	9.62	0.89	65.02	0.85	\N	0.62	0.75	0.35	0.46	0.26	-0.04	2.40	0.36	0.53	0.55	0.52	\N	\N	0.07	\N	\N	0.09	0.07
Brazil	2013	7.14	9.64	0.91	65.28	0.78	-0.10	0.71	0.82	0.28	0.39	0.08	-0.05	2.19	0.31	0.53	0.55	0.40	\N	\N	0.07	\N	\N	0.09	0.07
Brazil	2014	6.98	9.64	0.90	65.54	0.71	-0.13	0.71	0.79	0.27	0.36	0.20	-0.15	2.11	0.30	0.52	0.55	0.39	\N	\N	0.07	\N	\N	0.09	0.07
Brazil	2015	6.55	9.60	0.91	65.80	0.80	-0.03	0.77	0.76	0.32	0.20	0.06	-0.23	2.26	0.34	0.51	0.55	0.37	\N	\N	0.07	\N	\N	0.09	0.07
Brazil	2016	6.37	9.55	0.91	66.00	0.81	-0.11	0.78	0.76	0.30	0.26	0.04	-0.23	2.52	0.39	\N	0.55	0.45	\N	\N	0.07	\N	\N	0.09	0.07
Brazil	2017	6.33	9.55	0.90	66.20	0.76	-0.18	0.79	0.72	0.31	0.17	0.02	-0.30	2.53	0.40	\N	0.55	0.39	\N	\N	0.07	\N	\N	0.09	0.07
Brazil	2018	6.19	9.56	0.88	66.40	0.75	-0.13	0.76	0.75	0.35	0.17	\N	\N	2.64	0.43	\N	0.55	0.42	\N	\N	0.07	\N	\N	0.09	0.07
Bulgaria	2007	3.84	9.58	0.83	65.10	0.57	-0.14	0.98	0.59	0.23	0.28	0.52	0.10	1.95	0.51	0.36	0.35	\N	\N	\N	\N	0.24	\N	0.20	\N
Bulgaria	2010	3.91	9.63	0.84	65.70	0.54	-0.15	0.94	0.55	0.24	0.37	0.45	0.13	1.97	0.50	0.36	0.35	0.38	0.22	\N	\N	0.24	\N	0.20	\N
Bulgaria	2011	3.88	9.66	0.86	65.80	0.66	-0.23	0.95	0.53	0.27	0.27	0.38	0.08	1.99	0.51	0.34	0.35	0.37	\N	\N	\N	0.24	\N	0.20	\N
Bulgaria	2012	4.22	9.67	0.84	65.90	0.64	-0.17	0.94	0.57	0.24	0.34	0.39	0.10	2.17	0.51	0.36	0.35	0.39	\N	\N	\N	0.24	\N	0.20	\N
Bulgaria	2013	3.99	9.68	0.83	66.00	0.60	-0.19	0.96	0.62	0.28	0.17	0.25	0.08	2.12	0.53	0.37	0.35	0.37	\N	\N	\N	0.24	\N	0.20	\N
Bulgaria	2014	4.44	9.70	0.89	66.10	0.58	-0.06	0.95	0.63	0.24	0.14	0.22	0.09	2.00	0.45	0.37	0.35	0.39	\N	\N	\N	0.24	\N	0.20	\N
Bulgaria	2015	4.87	9.74	0.91	66.20	0.64	-0.20	0.94	0.64	0.21	0.25	0.22	0.10	2.20	0.45	\N	0.35	0.36	\N	\N	\N	0.24	\N	0.20	\N
Bulgaria	2016	4.84	9.79	0.93	66.40	0.70	-0.17	0.94	0.62	0.17	0.22	0.24	0.18	1.92	0.40	\N	0.35	0.35	\N	\N	\N	0.24	\N	0.20	\N
Bulgaria	2017	5.10	9.83	0.94	66.60	0.69	-0.16	0.91	0.61	0.19	0.33	0.38	0.17	1.85	0.36	\N	0.35	0.34	\N	\N	\N	0.24	\N	0.20	\N
Bulgaria	2018	5.10	9.87	0.92	66.80	0.72	-0.18	0.95	0.64	0.19	0.22	\N	\N	2.04	0.40	\N	0.35	0.34	\N	\N	\N	0.24	\N	0.20	\N
Burkina Faso	2006	3.80	7.17	0.80	46.66	0.59	0.04	0.80	0.72	0.27	0.35	-0.09	-0.46	1.57	0.41	\N	0.39	\N	\N	\N	\N	\N	\N	0.14	\N
Burkina Faso	2007	4.02	7.20	0.77	47.42	0.58	-0.05	0.83	0.65	0.28	0.42	0.00	-0.44	1.28	0.32	\N	0.39	\N	\N	\N	\N	\N	\N	0.14	\N
Burkina Faso	2008	3.85	7.24	0.73	48.18	0.61	-0.09	0.89	0.52	0.30	0.46	-0.08	-0.33	1.42	0.37	\N	0.39	\N	\N	\N	\N	\N	\N	0.14	\N
Burkina Faso	2010	4.04	7.26	0.77	49.70	0.59	-0.03	0.77	0.59	0.22	0.55	-0.19	-0.32	1.40	0.35	\N	0.39	0.50	0.26	\N	\N	\N	\N	0.14	\N
Burkina Faso	2011	4.79	7.29	0.71	50.24	0.72	-0.10	0.71	0.58	0.20	0.63	-0.42	-0.37	1.61	0.34	\N	0.39	0.45	\N	\N	\N	\N	\N	0.14	\N
Burkina Faso	2012	3.96	7.33	0.74	50.78	0.62	-0.06	0.73	0.54	0.30	0.62	-0.44	-0.41	1.76	0.44	\N	0.39	0.55	\N	\N	\N	\N	\N	0.14	\N
Burkina Faso	2013	3.33	7.35	0.75	51.32	0.74	-0.01	0.76	0.63	0.29	0.63	-0.51	-0.47	1.68	0.50	\N	0.39	0.56	\N	\N	\N	\N	\N	0.14	\N
Burkina Faso	2014	3.48	7.37	0.74	51.86	0.71	0.01	0.80	0.61	0.26	0.54	-0.57	-0.47	2.15	0.62	0.35	0.39	0.69	\N	\N	\N	\N	\N	0.14	\N
Burkina Faso	2015	4.42	7.38	0.71	52.40	0.66	0.01	0.69	0.58	0.36	0.67	-0.36	-0.44	2.01	0.45	\N	0.39	0.63	\N	\N	\N	\N	\N	0.14	\N
Burkina Faso	2016	4.21	7.40	0.76	52.90	0.64	0.01	0.72	0.62	0.34	0.66	-0.43	-0.39	1.97	0.47	\N	0.39	0.56	\N	\N	\N	\N	\N	0.14	\N
Burkina Faso	2017	4.65	7.44	0.78	53.40	0.61	-0.05	0.73	0.59	0.35	0.54	-0.43	-0.39	2.20	0.47	\N	0.39	0.55	\N	\N	\N	\N	\N	0.14	\N
Burkina Faso	2018	4.93	7.47	0.66	53.90	0.72	0.00	0.76	0.71	0.34	0.62	\N	\N	2.65	0.54	\N	0.39	0.61	\N	\N	\N	\N	\N	0.14	\N
Burundi	2008	3.56	6.63	0.29	49.02	0.26	-0.02	0.86	0.44	0.25	0.57	-1.16	-1.12	1.54	0.43	\N	0.36	\N	\N	\N	\N	\N	\N	\N	\N
Burundi	2009	3.79	6.63	0.33	49.66	0.43	-0.02	0.72	0.64	0.16	0.75	-0.98	-1.12	1.50	0.39	\N	0.36	0.49	0.38	\N	\N	\N	\N	\N	\N
Burundi	2011	3.71	6.65	0.42	50.68	0.49	-0.06	0.68	0.69	0.19	0.85	-1.37	-1.10	1.75	0.47	\N	0.36	0.65	\N	\N	\N	\N	\N	\N	\N
Burundi	2014	2.90	6.69	0.56	51.82	0.43	-0.05	0.81	0.66	0.25	\N	-0.91	-1.02	2.22	0.76	\N	0.36	0.71	\N	\N	\N	\N	\N	\N	\N
Burundi	2018	3.78	6.54	0.48	53.40	0.65	-0.02	0.60	0.67	0.36	\N	\N	\N	2.82	0.75	\N	0.36	0.68	\N	\N	\N	\N	\N	\N	\N
Cambodia	2006	3.57	7.67	0.79	55.30	\N	0.25	0.83	0.72	0.34	0.74	-0.64	-1.02	1.68	0.47	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cambodia	2007	4.16	7.75	0.68	56.10	0.82	0.11	0.88	\N	0.32	0.64	-0.65	-0.92	1.24	0.30	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cambodia	2008	4.46	7.80	0.62	56.90	0.91	0.04	0.89	0.74	0.34	0.74	-0.64	-0.95	1.43	0.32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cambodia	2009	4.11	7.79	0.82	57.70	0.94	0.15	0.96	0.80	0.19	0.90	-0.74	-0.93	1.31	0.32	\N	\N	0.39	0.12	\N	\N	\N	\N	\N	\N
Cambodia	2010	4.14	7.83	0.70	58.50	0.94	0.35	0.90	0.77	0.42	0.90	-0.71	-0.94	1.48	0.36	\N	\N	0.48	0.09	\N	\N	\N	\N	\N	\N
Cambodia	2011	4.16	7.89	0.72	58.88	0.93	0.42	0.78	0.80	0.31	0.90	-0.61	-0.93	1.33	0.32	\N	\N	0.53	\N	\N	\N	\N	\N	\N	\N
Cambodia	2012	3.90	7.94	0.61	59.26	0.96	0.25	0.89	0.82	0.35	0.83	-0.53	-0.80	1.70	0.44	\N	\N	0.66	\N	\N	\N	\N	\N	\N	\N
Cambodia	2013	3.67	7.99	0.65	59.64	0.94	0.16	0.81	0.79	0.44	0.78	-0.56	-0.83	2.04	0.55	\N	\N	0.68	\N	\N	\N	\N	\N	\N	\N
Cambodia	2014	3.88	8.05	0.69	60.02	0.94	0.24	0.84	0.78	0.48	0.70	-0.54	-0.80	2.57	0.66	\N	\N	0.54	\N	\N	\N	\N	\N	\N	\N
Cambodia	2015	4.16	8.10	0.73	60.40	0.96	0.21	0.83	0.81	0.40	0.73	-0.53	-0.83	2.49	0.60	\N	\N	0.52	\N	\N	\N	\N	\N	\N	\N
Cambodia	2016	4.46	8.15	0.75	60.80	0.96	0.07	0.84	0.84	0.40	0.74	-0.45	-0.87	2.56	0.57	\N	\N	0.55	\N	\N	\N	\N	\N	\N	\N
Cambodia	2017	4.59	8.20	0.77	61.20	0.96	0.09	0.82	0.80	0.41	0.75	-0.49	-0.88	2.73	0.60	\N	\N	0.55	\N	\N	\N	\N	\N	\N	\N
Cambodia	2018	5.12	8.25	0.79	61.60	0.96	0.03	\N	0.84	0.41	\N	\N	\N	2.91	0.57	\N	\N	0.60	\N	\N	\N	\N	\N	\N	\N
Cameroon	2006	3.85	7.95	0.69	45.98	0.65	-0.01	0.91	0.61	0.27	0.43	-0.63	-1.01	1.86	0.48	\N	0.44	\N	\N	\N	\N	\N	\N	\N	\N
Cameroon	2007	4.35	7.98	0.72	46.56	0.64	-0.03	0.91	0.63	0.25	0.41	-0.69	-0.97	1.64	0.38	0.43	0.44	\N	\N	\N	\N	\N	\N	\N	\N
Cameroon	2008	4.29	7.98	0.70	47.14	0.58	-0.07	0.95	0.60	0.31	0.31	-0.81	-0.94	1.77	0.41	\N	0.44	\N	\N	\N	\N	\N	\N	\N	\N
Cameroon	2009	4.74	7.98	0.73	47.72	0.70	-0.02	0.93	0.59	0.25	0.37	-0.76	-0.93	1.86	0.39	\N	0.44	0.45	0.13	\N	\N	\N	\N	\N	\N
Cameroon	2010	4.55	7.98	0.76	48.30	0.79	0.00	0.87	0.61	0.27	0.51	-0.90	-0.94	1.60	0.35	\N	0.44	0.49	\N	\N	\N	\N	\N	\N	\N
Cameroon	2011	4.43	8.00	0.74	48.70	0.82	-0.03	0.87	0.60	0.27	0.65	-0.85	-0.98	1.94	0.44	\N	0.44	0.49	\N	\N	\N	\N	\N	\N	\N
Cameroon	2012	4.24	8.01	0.74	49.10	0.77	-0.04	0.90	0.62	0.28	0.53	-0.81	-1.03	2.24	0.53	\N	0.44	0.49	\N	\N	\N	\N	\N	\N	\N
Cameroon	2013	4.27	8.04	0.76	49.50	0.79	-0.03	0.87	0.68	0.27	0.61	-0.78	-1.03	2.06	0.48	\N	0.44	0.56	\N	\N	\N	\N	\N	\N	\N
Cameroon	2014	4.24	8.07	0.78	49.90	0.79	-0.07	0.86	0.62	0.22	0.61	-1.00	-0.93	2.11	0.50	0.47	0.44	0.59	\N	\N	\N	\N	\N	\N	\N
Cameroon	2015	5.04	8.10	0.65	50.30	0.79	0.05	0.87	0.65	0.35	0.61	-0.97	-0.94	2.52	0.50	\N	0.44	0.56	\N	\N	\N	\N	\N	\N	\N
Cameroon	2016	4.82	8.12	0.66	51.10	0.71	-0.01	0.88	0.66	0.37	0.62	-1.05	-0.93	2.36	0.49	\N	0.44	0.56	\N	\N	\N	\N	\N	\N	\N
Cameroon	2017	5.07	8.12	0.69	51.90	0.77	-0.03	0.84	0.63	0.38	0.58	-1.07	-0.96	2.82	0.55	\N	0.44	0.57	\N	\N	\N	\N	\N	\N	\N
Cameroon	2018	5.25	8.13	0.68	52.70	0.82	0.03	0.88	0.64	0.36	0.65	\N	\N	2.92	0.56	\N	0.44	0.52	\N	\N	\N	\N	\N	\N	\N
Canada	2005	7.42	10.61	0.96	71.30	0.96	0.24	0.50	0.84	0.23	0.44	1.17	1.75	1.64	0.22	\N	0.34	\N	\N	\N	\N	\N	0.39	0.42	\N
Canada	2007	7.48	10.64	\N	71.66	0.93	0.24	0.41	0.87	0.26	0.64	1.20	1.80	1.82	0.24	0.34	0.34	\N	\N	\N	\N	\N	0.39	0.42	\N
Canada	2008	7.49	10.64	0.94	71.84	0.93	0.25	0.37	0.89	0.20	0.59	1.22	1.81	1.62	0.22	\N	0.34	\N	\N	\N	\N	\N	0.39	0.42	\N
Canada	2009	7.49	10.59	0.94	72.02	0.92	0.24	0.41	0.87	0.25	0.61	1.26	1.83	1.61	0.22	\N	0.34	0.66	0.42	\N	\N	\N	0.39	0.42	\N
Canada	2010	7.65	10.61	0.95	72.20	0.93	0.22	0.41	0.88	0.23	0.55	1.14	1.84	1.75	0.23	0.34	0.34	0.71	\N	\N	\N	\N	0.39	0.42	\N
Canada	2011	7.43	10.64	0.92	72.36	0.95	0.25	0.43	0.88	0.25	0.55	1.23	1.80	1.82	0.25	\N	0.34	0.96	\N	\N	\N	\N	0.39	0.42	\N
Canada	2012	7.42	10.64	0.95	72.52	0.92	0.28	0.47	0.86	0.23	0.52	1.28	1.79	1.77	0.24	\N	0.34	0.88	\N	\N	\N	\N	0.39	0.42	\N
Canada	2013	7.59	10.65	0.94	72.68	0.92	0.31	0.41	0.85	0.26	0.51	1.26	1.79	1.66	0.22	0.34	0.34	0.55	\N	\N	\N	\N	0.39	0.42	\N
Canada	2014	7.30	10.67	0.92	72.84	0.94	0.26	0.44	0.83	0.26	0.52	1.29	1.83	1.76	0.24	\N	0.34	0.68	\N	\N	\N	\N	0.39	0.42	\N
Canada	2015	7.41	10.67	0.94	73.00	0.93	0.25	0.43	0.85	0.29	0.64	1.37	1.80	1.61	0.22	\N	0.34	0.67	\N	\N	\N	\N	0.39	0.42	\N
Canada	2016	7.24	10.67	0.92	73.20	0.91	0.20	0.39	0.82	0.24	0.62	1.35	1.84	1.78	0.25	\N	0.34	0.61	\N	\N	\N	\N	0.39	0.42	\N
Canada	2017	7.41	10.69	0.93	73.40	0.95	0.16	0.36	0.86	0.22	0.65	1.30	1.87	1.60	0.22	\N	0.34	0.60	\N	\N	\N	\N	0.39	0.42	\N
Canada	2018	7.18	10.70	0.92	73.60	0.95	0.10	0.37	0.82	0.26	0.61	\N	\N	1.76	0.25	\N	0.34	0.47	\N	\N	\N	\N	0.39	0.42	\N
Central African Republic	2007	4.16	6.75	0.53	40.90	0.66	0.09	0.78	0.57	0.33	0.62	-1.47	-1.40	1.66	0.40	\N	0.50	\N	\N	\N	\N	\N	\N	\N	\N
Central African Republic	2010	3.57	6.78	0.48	42.70	0.69	-0.02	0.85	0.52	0.26	0.75	-1.56	-1.19	1.50	0.42	\N	0.50	0.55	0.37	\N	\N	\N	\N	\N	\N
Central African Republic	2011	3.68	6.81	0.39	43.08	0.78	0.00	0.83	0.52	0.28	0.78	-1.44	-1.18	1.71	0.46	\N	0.50	0.54	\N	\N	\N	\N	\N	\N	\N
Central African Republic	2016	2.69	6.47	0.29	44.90	0.62	0.05	0.86	0.58	0.49	0.75	-1.44	-1.58	2.25	0.84	\N	0.50	0.66	\N	\N	\N	\N	\N	\N	\N
Central African Republic	2017	3.48	6.49	0.32	45.20	0.65	0.09	0.89	0.61	0.60	0.65	-1.52	-1.54	2.81	0.81	\N	0.50	0.72	\N	\N	\N	\N	\N	\N	\N
Chad	2006	3.43	7.46	0.72	43.18	0.31	0.02	0.96	0.58	0.26	0.16	-1.63	-1.37	1.71	0.50	\N	0.42	\N	\N	\N	\N	\N	\N	\N	\N
Chad	2007	4.14	7.46	0.48	43.66	0.29	-0.02	0.87	0.61	0.25	0.23	-1.66	-1.42	1.57	0.38	\N	0.42	\N	\N	\N	\N	\N	\N	\N	\N
Chad	2008	4.63	7.46	0.57	44.14	0.53	0.05	0.94	0.57	0.23	0.35	-1.71	-1.47	1.35	0.29	\N	0.42	\N	\N	\N	\N	\N	\N	\N	\N
Chad	2009	3.64	7.47	0.65	44.62	0.40	0.01	0.93	0.56	0.22	0.25	-1.56	-1.36	1.30	0.36	\N	0.42	0.50	0.22	\N	\N	\N	\N	\N	\N
Chad	2010	3.74	7.56	0.73	45.10	0.50	0.01	0.86	0.54	0.29	0.32	-1.44	-1.35	1.34	0.36	\N	0.42	0.53	\N	\N	\N	\N	\N	\N	\N
Chad	2011	4.39	7.53	0.82	45.42	0.54	0.02	0.88	0.59	0.29	0.39	-1.33	-1.30	1.74	0.40	0.43	0.42	0.50	\N	\N	\N	\N	\N	\N	\N
Chad	2012	4.03	7.58	0.67	45.74	0.56	-0.05	0.88	0.53	0.32	0.30	-1.19	-1.34	1.58	0.39	\N	0.42	0.55	\N	\N	\N	\N	\N	\N	\N
Chad	2013	3.51	7.60	0.71	46.06	0.49	-0.06	0.88	0.46	0.31	0.31	-1.23	-1.28	1.64	0.47	\N	0.42	0.49	\N	\N	\N	\N	\N	\N	\N
Chad	2014	3.46	7.64	0.73	46.38	0.57	-0.08	0.88	0.54	0.33	0.37	-1.45	-1.28	1.61	0.47	\N	0.42	0.50	\N	\N	\N	\N	\N	\N	\N
Chad	2015	4.32	7.63	0.75	46.70	0.47	-0.04	0.89	0.61	0.36	0.45	-1.15	-1.30	2.34	0.54	\N	0.42	0.60	\N	\N	\N	\N	\N	\N	\N
Chad	2016	4.03	7.54	0.62	47.20	0.53	0.04	0.82	0.58	0.47	0.51	-1.33	-1.39	2.44	0.60	\N	0.42	0.50	\N	\N	\N	\N	\N	\N	\N
Chad	2017	4.56	7.48	0.66	47.70	0.61	0.00	0.79	0.63	0.54	0.47	-1.36	-1.35	2.88	0.63	\N	0.42	0.56	\N	\N	\N	\N	\N	\N	\N
Chad	2018	4.49	7.47	0.58	48.20	0.65	0.01	0.76	0.55	0.54	0.58	\N	\N	3.11	0.69	\N	0.42	0.61	\N	\N	\N	\N	\N	\N	\N
Chile	2006	6.06	9.79	0.84	68.66	0.74	0.16	0.63	0.80	0.35	0.58	0.85	1.31	2.21	0.37	0.48	0.49	\N	\N	\N	0.22	0.21	0.22	0.12	0.13
Chile	2007	5.70	9.83	0.81	68.72	0.66	0.24	0.72	0.77	0.34	0.43	0.76	1.37	2.17	0.38	\N	0.49	\N	\N	\N	0.22	0.21	0.22	0.12	0.13
Chile	2008	5.79	9.85	0.80	68.78	0.64	0.08	0.74	0.76	0.33	0.41	0.72	1.34	2.39	0.41	\N	0.49	\N	\N	\N	0.22	0.21	0.22	0.12	0.13
Chile	2009	6.49	9.83	0.83	68.84	0.75	0.14	0.73	0.81	0.30	0.58	0.81	1.35	2.21	0.34	0.49	0.49	0.46	0.16	\N	0.22	0.21	0.22	0.12	0.13
Chile	2010	6.64	9.88	0.86	68.90	0.79	0.10	0.70	0.81	0.30	0.48	0.89	1.39	2.18	0.33	\N	0.49	0.45	0.15	\N	0.22	0.21	0.22	0.12	0.13
Chile	2011	6.53	9.93	0.82	69.04	0.70	0.10	0.75	0.80	0.32	0.32	0.76	1.40	2.07	0.32	0.48	0.49	0.50	\N	\N	0.22	0.21	0.22	0.12	0.13
Chile	2012	6.60	9.97	0.86	69.18	0.73	0.19	0.78	0.82	0.29	0.34	0.70	1.44	2.12	0.32	\N	0.49	0.47	\N	\N	0.22	0.21	0.22	0.12	0.13
Chile	2013	6.74	10.00	0.86	69.32	0.74	0.08	0.74	0.86	0.29	0.31	0.74	1.42	2.10	0.31	0.47	0.49	0.47	\N	\N	0.22	0.21	0.22	0.12	0.13
Chile	2014	6.84	10.01	0.86	69.46	0.73	0.21	0.76	0.87	0.28	0.40	0.75	1.39	2.06	0.30	\N	0.49	0.43	\N	\N	0.22	0.21	0.22	0.12	0.13
Chile	2015	6.53	10.02	0.83	69.60	0.77	0.03	0.81	0.80	0.33	0.30	0.72	1.26	1.94	0.30	0.48	0.49	0.39	\N	\N	0.22	0.21	0.22	0.12	0.13
Chile	2016	6.58	10.03	0.84	69.70	0.65	0.09	0.86	0.87	0.28	0.20	0.70	1.16	1.99	0.30	\N	0.49	0.48	\N	\N	0.22	0.21	0.22	0.12	0.13
Chile	2017	6.32	10.03	0.88	69.80	0.79	-0.03	0.84	0.84	0.29	0.27	0.69	1.06	2.16	0.34	\N	0.49	0.57	\N	\N	0.22	0.21	0.22	0.12	0.13
Chile	2018	6.44	10.07	0.89	69.90	0.79	-0.07	0.82	0.83	0.28	0.33	\N	\N	2.15	0.33	\N	0.49	0.43	\N	\N	0.22	0.21	0.22	0.12	0.13
China	2006	4.56	8.77	0.75	66.88	\N	\N	\N	0.81	0.17	\N	-1.14	-0.32	1.97	0.43	\N	0.43	\N	\N	\N	0.59	0.50	0.54	0.50	0.61
China	2007	4.86	8.89	0.81	67.06	\N	-0.19	\N	0.82	0.16	\N	-1.11	-0.28	1.78	0.37	\N	0.43	\N	\N	\N	0.59	0.50	0.54	0.50	0.61
China	2008	4.85	8.98	0.75	67.24	0.85	-0.11	\N	0.82	0.15	\N	-1.10	-0.24	1.80	0.37	0.43	0.43	\N	\N	\N	0.59	0.50	0.54	0.50	0.61
China	2009	4.45	9.07	0.80	67.42	0.77	-0.18	\N	0.79	0.16	\N	-1.08	-0.26	1.83	0.41	\N	0.43	0.57	0.57	\N	0.59	0.50	0.54	0.50	0.61
China	2010	4.65	9.16	0.77	67.60	0.80	-0.15	\N	0.77	0.16	\N	-1.17	-0.28	1.88	0.40	\N	0.43	0.48	0.60	\N	0.59	0.50	0.54	0.50	0.61
China	2011	5.04	9.25	0.79	67.76	0.82	-0.20	\N	0.82	0.13	\N	-1.12	-0.28	1.88	0.37	\N	0.43	0.49	\N	\N	0.59	0.50	0.54	0.50	0.61
China	2012	5.09	9.32	0.79	67.92	0.81	-0.20	\N	0.82	0.16	\N	-1.09	-0.30	2.08	0.41	0.42	0.43	0.56	\N	\N	0.59	0.50	0.54	0.50	0.61
China	2013	5.24	9.39	0.78	68.08	0.80	-0.17	\N	0.84	0.14	\N	-1.09	-0.29	1.88	0.36	\N	0.43	0.49	\N	\N	0.59	0.50	0.54	0.50	0.61
China	2014	5.20	9.45	0.82	68.24	\N	-0.23	\N	0.85	0.11	\N	-1.07	-0.18	1.78	0.34	\N	0.43	0.46	\N	\N	0.59	0.50	0.54	0.50	0.61
China	2015	5.30	9.52	0.79	68.40	\N	-0.26	\N	0.81	0.17	\N	-1.11	-0.14	2.07	0.39	\N	0.43	0.46	\N	\N	0.59	0.50	0.54	0.50	0.61
China	2016	5.32	9.58	0.74	68.70	\N	-0.24	\N	0.83	0.15	\N	-1.03	-0.12	2.00	0.37	\N	0.43	0.54	\N	\N	0.59	0.50	0.54	0.50	0.61
China	2017	5.10	9.64	0.77	69.00	0.88	-0.19	\N	0.82	0.21	\N	-0.88	-0.06	2.27	0.45	\N	0.43	0.63	\N	\N	0.59	0.50	0.54	0.50	0.61
China	2018	5.13	9.69	0.79	69.30	0.90	-0.17	\N	0.86	0.19	\N	\N	\N	2.26	0.44	\N	0.43	0.54	\N	\N	0.59	0.50	0.54	0.50	0.61
Colombia	2006	6.02	9.19	0.91	65.22	0.80	-0.02	0.81	0.80	0.33	0.48	-1.04	-0.17	2.40	0.40	\N	0.54	\N	\N	\N	\N	0.11	\N	0.14	0.04
Colombia	2007	6.14	9.24	0.89	65.34	0.79	-0.04	0.86	0.81	0.29	0.51	-0.98	-0.11	2.45	0.40	\N	0.54	\N	\N	\N	\N	0.11	\N	0.14	0.04
Colombia	2008	6.17	9.26	0.88	65.46	0.80	-0.05	0.76	0.80	0.31	0.64	-1.01	-0.10	2.40	0.39	0.55	0.54	\N	\N	\N	\N	0.11	\N	0.14	0.04
Colombia	2009	6.27	9.27	0.89	65.58	0.76	-0.06	0.84	0.84	0.27	0.44	-0.99	-0.20	2.47	0.39	0.55	0.54	0.47	0.13	\N	\N	0.11	\N	0.14	0.04
Colombia	2010	6.41	9.30	0.89	65.70	0.82	-0.05	0.81	0.83	0.26	0.55	-0.83	-0.12	2.56	0.40	0.55	0.54	0.47	0.14	\N	\N	0.11	\N	0.14	0.04
Colombia	2011	6.46	9.35	0.90	65.92	0.81	-0.08	0.85	0.83	0.29	0.45	-0.67	-0.04	2.37	0.37	0.54	0.54	0.46	\N	\N	\N	0.11	\N	0.14	0.04
Colombia	2012	6.37	9.38	0.91	66.14	0.83	-0.01	0.87	0.85	0.29	0.36	-0.73	-0.08	2.53	0.40	0.53	0.54	0.51	\N	\N	\N	0.11	\N	0.14	0.04
Colombia	2013	6.61	9.42	0.90	66.36	0.84	-0.08	0.90	0.85	0.28	0.29	-0.69	-0.08	2.40	0.36	0.53	0.54	0.47	\N	\N	\N	0.11	\N	0.14	0.04
Colombia	2014	6.45	9.45	0.91	66.58	0.80	-0.09	0.89	0.85	0.28	0.30	-0.58	-0.07	2.30	0.36	0.53	0.54	0.47	\N	\N	\N	0.11	\N	0.14	0.04
Colombia	2015	6.39	9.47	0.89	66.80	0.79	-0.10	0.84	0.84	0.29	0.27	-0.53	-0.03	2.25	0.35	0.51	0.54	0.48	\N	\N	\N	0.11	\N	0.14	0.04
Colombia	2016	6.23	9.48	0.88	67.10	0.83	-0.11	0.90	0.79	0.29	0.26	-0.38	-0.04	2.57	0.41	0.51	0.54	0.56	\N	\N	\N	0.11	\N	0.14	0.04
Colombia	2017	6.16	9.49	0.91	67.40	0.84	-0.16	0.88	0.84	0.30	0.22	-0.34	-0.11	2.54	0.41	\N	0.54	0.54	\N	\N	\N	0.11	\N	0.14	0.04
Colombia	2018	5.98	9.51	0.87	67.70	0.85	-0.16	0.85	0.83	0.30	0.27	\N	\N	2.68	0.45	\N	0.54	0.51	\N	\N	\N	0.11	\N	0.14	0.04
Comoros	2009	3.48	7.26	0.63	54.36	0.51	-0.03	0.84	0.67	0.17	0.32	-0.55	-1.32	1.47	0.42	\N	0.51	0.42	0.36	\N	\N	\N	\N	\N	\N
Comoros	2010	3.81	7.25	0.72	54.70	0.53	0.05	0.74	0.73	0.18	0.40	-0.49	-1.25	1.66	0.44	\N	0.51	0.42	\N	\N	\N	\N	\N	\N	\N
Comoros	2011	3.84	7.25	0.72	55.02	0.50	-0.03	0.73	0.67	0.17	0.44	-0.46	-1.23	1.35	0.35	\N	0.51	0.40	\N	\N	\N	\N	\N	\N	\N
Comoros	2012	3.96	7.26	0.72	55.34	0.53	-0.07	0.65	0.61	0.21	0.46	-0.46	-1.19	1.39	0.35	\N	0.51	0.43	\N	\N	\N	\N	\N	\N	\N
Comoros	2018	3.97	7.26	0.62	57.20	0.56	0.14	0.79	0.75	0.34	0.32	\N	\N	2.88	0.73	\N	0.51	0.60	\N	\N	\N	\N	\N	\N	\N
Congo (Brazzaville)	2008	3.82	8.46	0.55	52.20	0.53	-0.13	\N	0.57	0.30	0.32	-0.94	-1.21	2.00	0.52	\N	0.48	\N	\N	\N	\N	\N	\N	\N	\N
Congo (Brazzaville)	2011	4.51	8.56	0.64	54.58	0.74	-0.14	0.83	0.62	0.29	0.47	-0.73	-1.20	1.96	0.43	0.49	0.48	0.47	\N	\N	\N	\N	\N	\N	\N
Congo (Brazzaville)	2012	3.92	8.57	0.62	54.96	0.77	-0.15	0.80	0.56	0.32	0.54	-0.82	-1.22	2.12	0.54	\N	0.48	0.60	\N	\N	\N	\N	\N	\N	\N
Congo (Brazzaville)	2013	3.95	8.58	0.68	55.34	0.73	-0.11	0.75	0.61	0.29	0.56	-0.80	-1.19	2.91	0.74	\N	0.48	0.54	\N	\N	\N	\N	\N	\N	\N
Congo (Brazzaville)	2014	4.06	8.62	0.69	55.72	0.66	-0.15	0.81	0.60	0.40	0.48	-0.73	-1.15	2.44	0.60	\N	0.48	0.63	\N	\N	\N	\N	\N	\N	\N
Congo (Brazzaville)	2015	4.69	8.62	0.64	56.10	0.85	-0.14	0.84	0.61	0.26	0.50	-0.77	-1.12	2.95	0.63	\N	0.48	0.67	\N	\N	\N	\N	\N	\N	\N
Congo (Brazzaville)	2016	4.12	8.57	0.62	56.70	0.79	-0.11	0.79	0.61	0.30	0.48	-0.84	-1.14	2.68	0.65	\N	0.48	0.48	\N	\N	\N	\N	\N	\N	\N
Congo (Brazzaville)	2017	4.88	8.49	0.66	57.30	0.78	-0.16	0.76	0.60	0.38	0.47	-0.82	-1.24	2.91	0.60	\N	0.48	0.48	\N	\N	\N	\N	\N	\N	\N
Congo (Brazzaville)	2018	5.49	8.47	0.62	57.90	0.70	-0.12	0.74	0.59	0.45	0.47	\N	\N	3.35	0.61	\N	0.48	0.60	\N	\N	\N	\N	\N	\N	\N
Congo (Kinshasa)	2009	3.98	6.46	0.73	49.34	0.56	0.00	0.82	0.49	0.28	0.54	-1.71	-1.56	1.70	0.43	\N	0.42	0.46	0.39	\N	\N	\N	\N	\N	\N
Congo (Kinshasa)	2011	4.52	6.53	0.74	50.34	0.63	-0.01	0.86	0.62	0.21	0.35	-1.85	-1.56	1.59	0.35	\N	0.42	0.51	\N	\N	\N	\N	\N	\N	\N
Congo (Kinshasa)	2012	4.64	6.56	0.77	50.78	0.56	-0.02	0.81	0.63	0.23	0.44	-1.78	-1.53	1.28	0.28	0.42	0.42	0.42	\N	\N	\N	\N	\N	\N	\N
Congo (Kinshasa)	2013	4.50	6.61	0.83	51.22	0.48	0.03	0.91	0.59	0.19	0.20	-1.83	-1.40	1.71	0.38	\N	0.42	0.50	\N	\N	\N	\N	\N	\N	\N
Congo (Kinshasa)	2014	4.41	6.67	0.82	51.66	0.56	0.03	0.81	0.56	0.30	0.31	-1.73	-1.42	1.57	0.36	\N	0.42	0.51	\N	\N	\N	\N	\N	\N	\N
Congo (Kinshasa)	2015	3.90	6.70	0.77	52.10	0.57	-0.03	0.87	0.59	0.30	0.27	-1.73	-1.46	1.78	0.46	\N	0.42	0.46	\N	\N	\N	\N	\N	\N	\N
Congo (Kinshasa)	2016	4.52	6.69	0.86	52.50	0.64	-0.01	0.87	0.65	0.22	0.28	-1.81	-1.45	1.63	0.36	\N	0.42	0.46	\N	\N	\N	\N	\N	\N	\N
Congo (Kinshasa)	2017	4.31	6.69	0.67	52.90	0.70	0.09	0.81	0.55	0.40	0.48	-1.87	-1.55	2.64	0.61	\N	0.42	0.63	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2006	7.08	9.36	0.94	69.94	0.88	0.06	0.80	0.87	0.24	0.38	0.83	0.34	2.09	0.29	0.49	0.49	\N	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2007	7.43	9.43	0.92	69.88	0.92	0.10	0.82	0.88	0.24	0.45	0.76	0.38	2.17	0.29	0.49	0.49	\N	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2008	6.85	9.46	0.92	69.82	0.91	0.10	0.82	0.84	0.23	0.36	0.66	0.44	1.98	0.29	0.49	0.49	\N	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2009	7.61	9.44	0.90	69.76	0.89	0.07	0.79	0.88	0.22	0.52	0.80	0.52	1.93	0.25	0.51	0.49	0.43	0.12	\N	\N	\N	\N	\N	\N
Costa Rica	2010	7.27	9.47	0.92	69.70	0.88	0.05	0.76	0.89	0.22	0.53	0.87	0.50	1.94	0.27	0.48	0.49	0.43	0.14	\N	\N	\N	\N	\N	\N
Costa Rica	2011	7.23	9.50	0.89	69.90	0.93	-0.03	0.84	0.88	0.27	0.32	0.78	0.47	2.20	0.30	0.49	0.49	0.52	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2012	7.27	9.54	0.90	70.10	0.93	0.05	0.79	0.90	0.26	0.28	0.86	0.55	2.14	0.29	0.49	0.49	0.51	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2013	7.16	9.55	0.90	70.30	0.90	0.02	0.81	0.85	0.28	0.26	0.88	0.56	2.03	0.28	0.49	0.49	0.49	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2014	7.25	9.57	0.91	70.50	0.93	0.01	0.79	0.84	0.29	0.40	0.86	0.56	2.19	0.30	0.49	0.49	0.55	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2015	6.85	9.60	0.88	70.70	0.91	-0.06	0.76	0.85	0.29	0.26	0.92	0.54	2.26	0.33	0.48	0.49	0.48	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2016	7.14	9.63	0.90	70.90	0.87	-0.03	0.78	0.87	0.28	0.28	0.89	0.49	2.14	0.30	0.49	0.49	0.50	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2017	7.23	9.65	0.92	71.10	0.94	-0.07	0.74	0.87	0.28	0.41	0.82	0.40	2.08	0.29	\N	0.49	0.47	\N	\N	\N	\N	\N	\N	\N
Costa Rica	2018	7.14	9.67	0.88	71.30	0.94	-0.10	0.78	0.87	0.33	0.48	\N	\N	2.15	0.30	\N	0.49	0.79	\N	\N	\N	\N	\N	\N	\N
Croatia	2007	5.82	9.98	0.91	67.12	0.66	-0.09	0.93	0.59	0.34	0.39	0.56	0.29	2.12	0.37	\N	0.32	\N	\N	\N	\N	0.23	\N	\N	\N
Croatia	2009	5.43	9.92	0.86	67.64	0.55	-0.27	0.96	0.64	0.27	\N	0.55	0.32	1.94	0.36	0.33	0.32	0.33	0.24	\N	\N	0.23	\N	\N	\N
Croatia	2010	5.60	9.91	0.80	67.90	0.56	-0.24	0.97	0.61	0.26	\N	0.54	0.36	1.99	0.36	0.32	0.32	0.34	0.22	\N	\N	0.23	\N	\N	\N
Croatia	2011	5.39	9.94	0.79	68.00	0.52	-0.20	0.98	0.60	0.27	\N	0.57	0.35	2.01	0.37	0.32	0.32	0.33	0.16	\N	\N	0.23	\N	\N	\N
Croatia	2012	6.03	9.92	0.78	68.10	0.54	-0.24	0.92	0.62	0.27	0.31	0.57	0.36	2.06	0.34	0.33	0.32	0.32	\N	\N	\N	0.23	\N	\N	\N
Croatia	2013	5.89	9.92	0.75	68.20	0.63	-0.21	0.94	0.59	0.28	0.26	0.58	0.40	1.99	0.34	0.32	0.32	0.34	\N	\N	\N	0.23	\N	\N	\N
Croatia	2014	5.38	9.92	0.65	68.30	0.52	0.13	0.92	0.60	0.29	0.16	0.57	0.41	1.94	0.36	0.32	0.32	0.35	\N	\N	\N	0.23	\N	\N	\N
Croatia	2015	5.21	9.95	0.77	68.40	0.69	-0.10	0.85	0.61	0.29	0.36	0.57	0.33	1.79	0.34	0.31	0.32	0.32	\N	\N	\N	0.23	\N	\N	\N
Croatia	2016	5.42	9.99	0.80	69.00	0.67	-0.07	0.88	0.61	0.34	0.30	0.59	0.37	1.93	0.36	\N	0.32	0.36	\N	\N	\N	0.23	\N	\N	\N
Croatia	2017	5.34	10.03	0.77	69.60	0.72	-0.11	0.89	0.66	0.32	0.21	0.63	0.38	1.57	0.29	\N	0.32	0.34	\N	\N	\N	0.23	\N	\N	\N
Croatia	2018	5.54	10.07	0.91	70.20	0.69	-0.15	0.93	0.58	0.29	0.25	\N	\N	1.70	0.31	\N	0.32	0.32	\N	\N	\N	0.23	\N	\N	\N
Cuba	2006	5.42	9.68	0.97	68.44	0.28	\N	\N	0.65	0.28	0.51	-0.71	-0.54	2.13	0.39	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Cyprus	2006	6.24	10.45	0.88	71.44	0.84	0.01	0.71	0.83	0.25	0.66	0.80	1.19	2.03	0.33	0.31	0.33	\N	\N	\N	\N	\N	\N	0.10	0.08
Cyprus	2009	6.83	10.45	0.81	72.16	0.77	0.05	0.80	0.75	0.33	0.56	0.73	1.23	2.03	0.30	0.32	0.33	0.40	0.11	\N	\N	\N	\N	0.10	0.08
Cyprus	2010	6.39	10.43	0.82	72.40	0.76	0.07	0.83	0.79	0.30	0.45	0.74	1.29	2.21	0.35	0.32	0.33	0.42	\N	\N	\N	\N	\N	0.10	0.08
Cyprus	2011	6.69	10.41	0.84	72.54	0.75	0.17	0.84	0.76	0.27	0.40	0.83	1.18	2.20	0.33	0.33	0.33	0.53	\N	\N	\N	\N	\N	0.10	0.08
Cyprus	2012	6.18	10.36	0.77	72.68	0.72	0.09	0.87	0.76	0.37	0.34	0.83	1.22	2.21	0.36	0.34	0.33	0.40	\N	\N	\N	\N	\N	0.10	0.08
Cyprus	2013	5.44	10.30	0.74	72.82	0.66	0.10	0.87	0.75	0.42	0.27	0.77	1.14	2.63	0.48	0.37	0.33	0.39	\N	\N	\N	\N	\N	0.10	0.08
Cyprus	2014	5.63	10.30	0.77	72.96	0.72	0.05	0.87	0.74	0.40	0.24	0.79	1.10	2.48	0.44	0.36	0.33	0.45	\N	\N	\N	\N	\N	0.10	0.08
Cyprus	2015	5.44	10.33	0.77	73.10	0.63	0.11	0.89	0.75	0.38	0.20	0.79	1.04	2.40	0.44	0.34	0.33	0.42	\N	\N	\N	\N	\N	0.10	0.08
Cyprus	2016	5.79	10.35	0.79	73.30	0.76	-0.03	0.90	0.74	0.34	0.33	0.83	0.89	2.42	0.42	\N	0.33	0.40	\N	\N	\N	\N	\N	0.10	0.08
Cyprus	2017	6.06	10.39	0.82	73.50	0.81	0.04	0.85	0.78	0.30	0.31	0.83	0.90	2.37	0.39	\N	0.33	0.41	\N	\N	\N	\N	\N	0.10	0.08
Cyprus	2018	6.28	\N	0.83	73.70	0.79	\N	0.85	0.75	0.30	0.35	\N	\N	2.13	0.34	\N	0.33	0.45	\N	\N	\N	\N	\N	0.10	0.08
Czech Republic	2005	6.44	10.16	0.92	67.00	0.87	\N	0.90	0.72	0.26	0.28	0.92	0.85	2.06	0.32	0.27	0.26	\N	\N	\N	0.30	0.29	\N	\N	\N
Czech Republic	2007	6.50	10.27	0.90	67.44	0.80	-0.07	0.93	0.74	0.28	0.27	1.01	0.78	1.99	0.31	0.26	0.26	\N	\N	\N	0.30	0.29	\N	\N	\N
Czech Republic	2010	6.25	10.25	0.93	68.10	0.78	-0.04	0.93	0.64	0.24	0.33	1.00	0.87	1.88	0.30	0.27	0.26	0.27	0.27	\N	0.30	0.29	\N	\N	\N
Czech Republic	2011	6.33	10.27	0.91	68.24	0.79	-0.11	0.95	0.60	0.25	0.21	1.07	0.88	1.93	0.31	0.26	0.26	0.27	\N	\N	0.30	0.29	\N	\N	\N
Czech Republic	2012	6.33	10.26	0.91	68.38	0.74	-0.16	0.96	0.61	0.26	0.17	1.01	0.83	2.03	0.32	0.26	0.26	0.29	\N	\N	0.30	0.29	\N	\N	\N
Czech Republic	2013	6.70	10.25	0.89	68.52	0.73	-0.16	0.92	0.72	0.25	0.24	1.03	0.81	2.00	0.30	0.27	0.26	0.29	\N	\N	0.30	0.29	\N	\N	\N
Czech Republic	2014	6.48	10.28	0.88	68.66	0.80	-0.17	0.90	0.68	0.24	0.34	1.01	0.89	2.03	0.31	0.26	0.26	0.24	\N	\N	0.30	0.29	\N	\N	\N
Czech Republic	2015	6.61	10.33	0.91	68.80	0.81	-0.15	0.89	0.75	0.21	0.44	1.01	0.93	1.80	0.27	0.26	0.26	0.27	\N	\N	0.30	0.29	\N	\N	\N
Czech Republic	2016	6.74	10.35	0.93	69.30	0.85	-0.20	0.90	0.76	0.20	0.42	1.00	0.90	1.68	0.25	\N	0.26	0.29	\N	\N	0.30	0.29	\N	\N	\N
Czech Republic	2017	6.79	10.39	0.90	69.80	0.83	-0.18	0.87	0.74	0.23	0.34	0.99	0.99	1.70	0.25	\N	0.26	0.28	\N	\N	0.30	0.29	\N	\N	\N
Czech Republic	2018	7.03	10.42	0.93	70.30	0.79	-0.29	0.85	0.71	0.18	0.42	\N	\N	1.67	0.24	\N	0.26	0.25	\N	\N	0.30	0.29	\N	\N	\N
Denmark	2005	8.02	10.70	0.97	69.60	0.97	\N	0.24	0.86	0.15	0.67	1.41	2.00	1.34	0.17	0.25	0.27	\N	\N	\N	\N	\N	\N	\N	\N
Denmark	2007	7.83	10.74	0.95	69.92	0.93	0.24	0.21	0.83	0.19	0.59	1.30	2.18	1.50	0.19	0.26	0.27	\N	\N	\N	\N	\N	\N	\N	\N
Denmark	2008	7.97	10.73	0.95	70.08	0.97	0.27	0.25	0.76	0.16	0.67	1.30	2.12	1.41	0.18	0.25	0.27	\N	\N	\N	\N	\N	\N	\N	\N
Denmark	2009	7.68	10.68	0.94	70.24	0.95	0.26	0.21	0.75	0.23	0.63	1.27	2.12	1.58	0.21	0.27	0.27	0.50	0.64	\N	\N	\N	\N	\N	\N
Denmark	2010	7.77	10.69	0.97	70.40	0.94	0.24	0.17	0.78	0.15	0.59	1.29	2.06	1.52	0.20	0.27	0.27	0.43	0.62	\N	\N	\N	\N	\N	\N
Denmark	2011	7.79	10.70	0.96	70.62	0.93	0.29	0.22	0.77	0.17	0.47	1.33	2.08	1.50	0.19	0.27	0.27	0.62	\N	\N	\N	\N	\N	\N	\N
Denmark	2012	7.52	10.70	0.95	70.84	0.93	0.13	0.19	0.77	0.21	0.53	1.29	2.01	1.70	0.23	0.28	0.27	0.37	\N	\N	\N	\N	\N	\N	\N
Denmark	2013	7.59	10.70	0.96	71.06	0.92	0.21	0.17	0.86	0.19	0.39	1.31	2.03	1.72	0.23	0.29	0.27	0.39	\N	\N	\N	\N	\N	\N	\N
Denmark	2014	7.51	10.72	0.96	71.28	0.94	0.11	0.24	0.83	0.23	0.46	1.24	1.96	1.67	0.22	0.28	0.27	0.47	\N	\N	\N	\N	\N	\N	\N
Denmark	2015	7.51	10.72	0.96	71.50	0.94	0.22	0.19	0.83	0.22	0.58	1.23	1.96	1.62	0.22	0.28	0.27	0.54	\N	\N	\N	\N	\N	\N	\N
Denmark	2016	7.56	10.74	0.95	71.80	0.95	0.13	0.21	0.84	0.21	0.47	1.20	1.90	1.61	0.21	\N	0.27	0.50	\N	\N	\N	\N	\N	\N	\N
Denmark	2017	7.59	10.75	0.95	72.10	0.96	0.15	0.18	0.82	0.21	0.57	1.19	1.87	1.67	0.22	\N	0.27	0.63	\N	\N	\N	\N	\N	\N	\N
Denmark	2018	7.65	10.76	0.96	72.40	0.94	0.02	0.15	0.82	0.21	0.63	\N	\N	1.65	0.22	\N	0.27	0.48	\N	\N	\N	\N	\N	\N	\N
Djibouti	2008	5.01	7.83	0.69	53.26	0.77	0.14	0.58	0.75	0.12	0.67	-0.46	-0.62	1.50	0.30	\N	0.43	\N	\N	\N	\N	\N	\N	\N	\N
Djibouti	2009	4.91	7.86	0.90	53.78	0.65	0.00	0.63	0.66	0.23	0.60	-0.36	-0.64	1.38	0.28	\N	0.43	\N	0.55	\N	\N	\N	\N	\N	\N
Djibouti	2010	5.01	7.88	\N	54.30	0.76	-0.07	0.60	\N	\N	0.69	-0.51	-0.68	2.15	0.43	\N	0.43	\N	\N	\N	\N	\N	\N	\N	\N
Djibouti	2011	4.37	7.90	0.63	54.70	0.75	-0.07	0.52	0.58	0.18	0.68	-0.62	-0.68	2.38	0.54	\N	0.43	\N	\N	\N	\N	\N	\N	\N	\N
Dominican Republic	2006	5.09	9.18	0.92	62.68	0.86	0.04	0.75	0.75	0.27	0.64	0.05	-0.52	3.07	0.60	0.52	0.48	\N	\N	\N	\N	0.25	\N	\N	\N
Dominican Republic	2007	5.08	9.24	0.85	62.96	0.89	-0.01	0.77	0.77	0.26	0.48	0.06	-0.57	2.85	0.56	0.49	0.48	\N	\N	\N	\N	0.25	\N	\N	\N
Dominican Republic	2008	4.84	9.25	0.85	63.24	0.85	-0.05	0.73	0.73	0.33	0.54	0.06	-0.55	3.10	0.64	0.48	0.48	\N	\N	\N	\N	0.25	\N	\N	\N
Dominican Republic	2009	5.43	9.25	0.88	63.52	0.86	-0.05	0.81	0.79	0.28	0.41	0.04	-0.59	3.13	0.58	0.49	0.48	0.52	0.14	\N	\N	0.25	\N	\N	\N
Dominican Republic	2010	4.74	9.32	0.86	63.80	0.82	-0.08	0.78	0.79	0.28	0.45	0.01	-0.61	3.22	0.68	0.47	0.48	0.52	0.16	\N	\N	0.25	\N	\N	\N
Dominican Republic	2011	5.40	9.34	0.87	64.02	0.85	0.01	0.79	0.81	0.30	0.41	0.04	-0.59	3.00	0.56	0.47	0.48	0.69	\N	\N	\N	0.25	\N	\N	\N
Dominican Republic	2012	4.75	9.35	0.88	64.24	0.84	-0.06	0.73	0.80	0.30	0.43	0.19	-0.54	2.74	0.58	0.46	0.48	0.58	\N	\N	\N	0.25	\N	\N	\N
Dominican Republic	2013	5.02	9.38	0.88	64.46	0.89	0.02	0.75	0.79	0.30	0.57	0.16	-0.49	2.80	0.56	0.47	0.48	0.49	\N	\N	\N	0.25	\N	\N	\N
Dominican Republic	2014	5.39	9.45	0.89	64.68	0.90	-0.02	0.76	0.80	0.30	0.56	0.17	-0.42	2.99	0.56	0.44	0.48	0.53	\N	\N	\N	0.25	\N	\N	\N
Dominican Republic	2015	5.06	9.50	0.89	64.90	0.86	-0.07	0.76	0.71	0.30	0.45	0.20	-0.43	2.93	0.58	0.45	0.48	0.51	\N	\N	\N	0.25	\N	\N	\N
Dominican Republic	2016	5.24	9.56	0.89	65.20	0.87	-0.08	0.74	0.76	0.28	0.55	0.22	-0.37	3.11	0.59	0.45	0.48	0.48	\N	\N	\N	0.25	\N	\N	\N
Dominican Republic	2017	5.61	9.59	0.89	65.50	0.86	-0.12	0.76	0.74	0.27	0.46	0.16	-0.40	3.24	0.58	\N	0.48	0.48	\N	\N	\N	0.25	\N	\N	\N
Dominican Republic	2018	5.43	9.63	0.86	65.80	0.87	-0.15	0.76	0.74	0.29	0.42	\N	\N	3.40	0.62	\N	0.48	0.52	\N	\N	\N	0.25	\N	\N	\N
Ecuador	2006	5.02	9.09	0.91	66.08	0.67	-0.09	0.90	0.82	0.36	0.12	-0.55	-0.97	2.37	0.47	0.52	0.50	\N	\N	\N	\N	\N	\N	\N	0.07
Ecuador	2007	5.00	9.09	0.84	66.26	0.67	-0.07	0.83	0.83	0.29	0.47	-0.49	-0.95	2.10	0.42	0.53	0.50	\N	\N	\N	\N	\N	\N	\N	0.07
Ecuador	2008	5.30	9.14	0.83	66.44	0.64	-0.10	0.80	0.84	0.28	0.51	-0.48	-0.96	2.12	0.40	0.50	0.50	\N	\N	\N	\N	\N	\N	\N	0.07
Ecuador	2009	6.02	9.13	0.78	66.62	0.74	-0.11	0.77	0.84	0.26	0.54	-0.46	-1.04	2.23	0.37	0.48	0.50	0.43	0.17	\N	\N	\N	\N	\N	0.07
Ecuador	2010	5.84	9.14	0.84	66.80	0.72	-0.07	0.81	0.83	0.22	0.41	-0.41	-0.97	1.95	0.33	0.49	0.50	0.38	0.09	\N	\N	\N	\N	\N	0.07
Ecuador	2011	5.80	9.20	0.82	66.96	0.79	-0.16	0.70	0.86	0.27	0.59	-0.49	-0.88	2.30	0.40	0.46	0.50	0.32	\N	\N	\N	\N	\N	\N	0.07
Ecuador	2012	5.96	9.24	0.79	67.12	0.83	-0.09	0.73	0.85	0.33	0.64	-0.43	-0.81	2.13	0.36	0.46	0.50	0.37	\N	\N	\N	\N	\N	\N	0.07
Ecuador	2013	6.02	9.27	0.80	67.28	0.79	-0.19	0.65	0.85	0.27	0.62	-0.22	-0.74	2.19	0.36	0.47	0.50	0.36	\N	\N	\N	\N	\N	\N	0.07
Ecuador	2014	5.95	9.30	0.83	67.44	0.72	-0.17	0.66	0.86	0.31	0.65	-0.11	-0.82	2.22	0.37	0.45	0.50	0.37	\N	\N	\N	\N	\N	\N	0.07
Ecuador	2015	5.96	9.28	0.86	67.60	0.80	-0.12	0.67	0.85	0.32	0.52	-0.18	-0.82	2.47	0.41	0.46	0.50	0.36	\N	\N	\N	\N	\N	\N	0.07
Ecuador	2016	6.12	9.25	0.84	67.90	0.85	-0.02	0.77	0.85	0.37	0.47	-0.17	-0.72	2.43	0.40	0.45	0.50	0.39	\N	\N	\N	\N	\N	\N	0.07
Ecuador	2017	5.84	9.27	0.85	68.20	0.88	-0.17	0.73	0.83	0.31	0.64	-0.14	-0.66	2.69	0.46	\N	0.50	0.41	\N	\N	\N	\N	\N	\N	0.07
Ecuador	2018	6.13	9.27	0.85	68.50	0.87	-0.10	0.83	0.88	0.33	0.40	\N	\N	2.49	0.41	\N	0.50	0.44	\N	\N	\N	\N	\N	\N	0.07
Egypt	2005	5.17	8.99	0.85	59.70	0.82	\N	\N	0.73	0.35	\N	-0.80	-0.37	2.66	0.52	\N	0.31	\N	\N	\N	\N	\N	0.37	0.19	0.22
Egypt	2007	5.54	9.09	0.69	59.82	0.61	-0.13	\N	0.67	0.36	\N	-0.86	-0.42	2.60	0.47	\N	0.31	\N	\N	\N	\N	\N	0.37	0.19	0.22
Egypt	2008	4.63	9.14	0.74	59.88	\N	-0.09	0.91	0.68	0.30	\N	-0.86	-0.36	2.38	0.51	0.31	0.31	\N	\N	\N	\N	\N	0.37	0.19	0.22
Egypt	2009	5.07	9.17	0.74	59.94	0.61	-0.11	0.80	0.64	0.34	\N	-0.88	-0.27	1.85	0.37	\N	0.31	0.37	0.18	\N	\N	\N	0.37	0.19	0.22
Egypt	2010	4.67	9.20	0.77	60.00	0.49	-0.08	0.83	0.57	0.28	\N	-1.04	-0.34	2.11	0.45	0.32	0.31	0.41	\N	\N	\N	\N	0.37	0.19	0.22
Egypt	2011	4.17	9.19	0.75	60.16	0.59	-0.16	0.86	0.53	0.35	0.63	-1.29	-0.51	2.06	0.49	\N	0.31	0.39	0.25	\N	\N	\N	0.37	0.19	0.22
Egypt	2012	4.20	9.19	0.74	60.32	0.45	-0.14	0.88	0.53	0.40	0.60	-1.10	-0.59	2.05	0.49	0.30	0.31	0.40	0.33	\N	\N	\N	0.37	0.19	0.22
Egypt	2013	3.56	9.19	0.68	60.48	0.47	-0.15	0.91	0.55	0.48	0.29	-1.35	-0.70	2.75	0.77	\N	0.31	0.35	\N	\N	\N	\N	0.37	0.19	0.22
Egypt	2014	4.89	9.20	0.62	60.64	0.58	-0.13	0.75	0.54	0.33	0.70	-1.41	-0.72	2.21	0.45	\N	0.31	0.36	\N	\N	\N	\N	0.37	0.19	0.22
Egypt	2015	4.76	9.22	0.73	60.80	0.66	-0.10	0.68	0.61	0.34	0.77	-1.34	-0.71	2.18	0.46	0.32	0.31	0.35	\N	\N	\N	\N	0.37	0.19	0.22
Egypt	2016	4.56	9.24	0.81	61.10	0.66	-0.15	0.82	0.61	0.37	0.62	-1.32	-0.68	2.06	0.45	\N	0.31	0.36	\N	\N	\N	\N	0.37	0.19	0.22
Egypt	2017	3.93	9.26	0.64	61.40	0.59	-0.16	\N	0.54	0.41	\N	-1.33	-0.64	2.29	0.58	\N	0.31	0.38	\N	\N	\N	\N	0.37	0.19	0.22
Egypt	2018	4.01	9.29	0.76	61.70	0.68	-0.22	\N	0.49	0.29	\N	\N	\N	2.02	0.50	\N	0.31	0.32	\N	\N	\N	\N	0.37	0.19	0.22
El Salvador	2006	5.70	8.73	0.88	62.92	0.68	-0.05	0.81	0.86	0.23	0.37	-0.04	-0.26	2.19	0.38	0.46	0.46	\N	\N	\N	\N	0.14	\N	\N	\N
El Salvador	2007	5.30	8.74	0.72	63.24	0.64	-0.01	0.79	0.87	0.22	0.37	0.04	-0.26	2.19	0.41	0.45	0.46	\N	\N	\N	\N	0.14	\N	\N	\N
El Salvador	2008	5.19	8.76	0.75	63.56	0.64	-0.08	0.73	0.84	0.23	0.38	0.08	-0.25	2.12	0.41	0.47	0.46	\N	\N	\N	\N	0.14	\N	\N	\N
El Salvador	2009	6.84	8.73	0.73	63.88	0.67	-0.10	0.65	0.85	0.24	0.59	0.03	-0.18	1.93	0.28	0.46	0.46	0.37	0.16	\N	\N	0.14	\N	\N	\N
El Salvador	2010	6.74	8.75	0.76	64.20	0.67	-0.06	0.69	0.81	0.30	0.52	0.07	-0.18	2.16	0.32	0.44	0.46	0.45	0.18	\N	\N	0.14	\N	\N	\N
El Salvador	2011	4.74	8.78	0.73	64.40	0.75	-0.12	0.71	0.88	0.34	0.49	0.08	-0.15	2.58	0.54	0.42	0.46	0.40	\N	\N	\N	0.14	\N	\N	\N
El Salvador	2012	5.93	8.80	0.81	64.60	0.68	-0.15	0.79	0.83	0.37	0.31	0.10	-0.23	2.34	0.39	0.42	0.46	0.40	\N	\N	\N	0.14	\N	\N	\N
El Salvador	2013	6.33	8.82	0.83	64.80	0.72	-0.15	0.77	0.83	0.32	0.36	-0.02	-0.19	2.26	0.36	0.43	0.46	0.44	\N	\N	\N	0.14	\N	\N	\N
El Salvador	2014	5.86	8.84	0.80	65.00	0.78	-0.19	0.78	0.84	0.33	0.32	0.06	-0.14	2.58	0.44	0.42	0.46	0.46	\N	\N	\N	0.14	\N	\N	\N
El Salvador	2015	6.02	8.86	0.79	65.20	0.73	-0.15	0.80	0.83	0.33	0.31	0.07	-0.26	2.58	0.43	0.41	0.46	0.46	\N	\N	\N	0.14	\N	\N	\N
El Salvador	2016	6.14	8.88	0.79	65.50	0.80	-0.18	0.80	0.76	0.35	0.25	0.04	-0.36	2.60	0.42	0.40	0.46	0.46	\N	\N	\N	0.14	\N	\N	\N
El Salvador	2017	6.34	8.89	0.83	65.80	0.76	-0.17	0.78	0.85	0.27	0.27	-0.05	-0.47	2.48	0.39	\N	0.46	0.40	\N	\N	\N	0.14	\N	\N	\N
El Salvador	2018	6.28	8.91	0.82	66.10	0.86	-0.10	0.83	0.87	0.27	0.32	\N	\N	2.52	0.40	\N	0.46	0.44	\N	\N	\N	0.14	\N	\N	\N
Estonia	2006	5.37	10.14	0.91	64.86	0.75	-0.27	0.80	0.65	0.22	0.44	0.90	1.15	1.70	0.32	0.34	0.33	\N	\N	\N	\N	0.21	\N	\N	0.39
Estonia	2007	5.33	10.22	0.90	65.32	0.71	-0.25	0.74	0.67	0.18	0.42	0.85	1.14	1.70	0.32	0.31	0.33	\N	\N	\N	\N	0.21	\N	\N	0.39
Estonia	2008	5.45	10.16	0.90	65.78	0.64	-0.22	0.66	0.60	0.22	0.33	0.83	1.19	1.65	0.30	0.32	0.33	\N	\N	\N	\N	0.21	\N	\N	0.39
Estonia	2009	5.14	10.01	0.87	66.24	0.61	-0.23	0.79	0.60	0.24	0.22	0.83	1.14	1.90	0.37	0.31	0.33	0.36	0.34	\N	\N	0.21	\N	\N	0.39
Estonia	2011	5.49	10.11	0.91	66.96	0.74	-0.17	0.69	0.65	0.21	0.42	0.87	1.18	1.95	0.36	0.33	0.33	0.38	\N	\N	\N	0.21	\N	\N	0.39
Estonia	2012	5.36	10.15	0.89	67.22	0.70	-0.20	0.79	0.65	0.20	0.27	0.87	1.16	1.96	0.37	0.33	0.33	0.38	\N	\N	\N	0.21	\N	\N	0.39
Estonia	2013	5.37	10.18	0.90	67.48	0.75	-0.21	0.73	0.70	0.20	0.26	0.93	1.20	1.83	0.34	0.35	0.33	0.36	\N	\N	\N	0.21	\N	\N	0.39
Estonia	2014	5.56	10.21	0.92	67.74	0.77	-0.16	0.65	0.68	0.20	0.41	0.98	1.34	1.86	0.33	0.35	0.33	0.36	\N	\N	\N	0.21	\N	\N	0.39
Estonia	2015	5.63	10.22	0.92	68.00	0.81	-0.17	0.57	0.72	0.18	0.34	0.90	1.34	1.89	0.34	0.33	0.33	0.41	\N	\N	\N	0.21	\N	\N	0.39
Estonia	2016	5.65	10.24	0.94	68.20	0.84	-0.15	0.64	0.73	0.18	0.34	0.94	1.32	1.75	0.31	\N	0.33	0.34	\N	\N	\N	0.21	\N	\N	0.39
Estonia	2017	5.94	10.29	0.94	68.40	0.86	-0.10	0.67	0.81	0.16	0.41	0.94	1.32	1.85	0.31	\N	0.33	0.40	\N	\N	\N	0.21	\N	\N	0.39
Estonia	2018	6.09	10.32	0.93	68.60	0.89	-0.14	0.62	0.79	0.16	0.42	\N	\N	1.76	0.29	\N	0.33	0.37	\N	\N	\N	0.21	\N	\N	0.39
Ethiopia	2012	4.56	7.12	0.66	55.20	0.78	-0.04	\N	0.67	0.14	\N	-1.44	-0.69	1.86	0.41	\N	0.34	0.52	\N	\N	\N	\N	\N	0.23	\N
Ethiopia	2013	4.44	7.19	0.60	55.80	0.71	0.00	0.75	0.64	0.21	0.77	-1.36	-0.72	1.77	0.40	\N	0.34	0.54	\N	\N	\N	\N	\N	0.23	\N
Ethiopia	2014	4.51	7.26	0.64	56.40	0.69	0.09	0.70	0.74	0.30	0.68	-1.31	-0.60	2.05	0.45	\N	0.34	0.52	\N	\N	\N	\N	\N	0.23	\N
Ethiopia	2015	4.57	7.34	0.63	57.00	0.80	0.12	0.57	0.71	0.24	0.83	-1.40	-0.66	1.87	0.41	0.39	0.34	0.54	\N	\N	\N	\N	\N	0.23	\N
Ethiopia	2016	4.30	7.38	0.72	57.50	0.74	0.05	0.70	0.73	0.25	0.75	-1.51	-0.66	1.81	0.42	\N	0.34	0.52	\N	\N	\N	\N	\N	0.23	\N
Ethiopia	2017	4.18	7.46	0.73	58.00	0.72	0.01	0.76	0.61	0.30	0.77	-1.56	-0.68	1.83	0.44	\N	0.34	0.42	\N	\N	\N	\N	\N	0.23	\N
Ethiopia	2018	4.38	7.52	0.74	58.50	0.74	0.04	0.80	0.66	0.27	0.88	\N	\N	1.95	0.44	\N	0.34	0.44	\N	\N	\N	\N	\N	0.23	\N
Finland	2006	7.67	10.61	0.96	69.76	0.97	-0.01	0.13	0.72	0.17	0.76	1.50	2.05	1.36	0.18	0.28	0.28	\N	\N	0.57	\N	0.48	\N	0.58	\N
Finland	2008	7.67	10.66	0.95	70.08	0.93	0.02	0.22	0.77	0.14	0.72	1.45	1.98	1.42	0.19	0.28	0.28	\N	\N	0.57	\N	0.48	\N	0.58	\N
Finland	2010	7.39	10.59	0.94	70.40	0.92	0.09	0.41	0.83	0.20	0.46	1.46	2.06	1.67	0.23	0.28	0.28	0.40	0.59	0.57	\N	0.48	\N	0.58	\N
Finland	2011	7.35	10.61	0.94	70.64	0.94	0.10	0.32	0.77	0.21	0.57	1.45	2.05	1.61	0.22	0.28	0.28	0.46	\N	0.57	\N	0.48	\N	0.58	\N
Finland	2012	7.42	10.59	0.93	70.88	0.92	-0.01	0.36	0.80	0.20	0.60	1.50	2.06	1.63	0.22	0.27	0.28	0.38	\N	0.57	\N	0.48	\N	0.58	\N
Finland	2013	7.44	10.58	0.94	71.12	0.92	0.03	0.31	0.77	0.19	0.42	1.48	2.04	1.56	0.21	0.27	0.28	0.41	\N	0.57	\N	0.48	\N	0.58	\N
Finland	2014	7.38	10.57	0.95	71.36	0.93	-0.01	0.27	0.78	0.20	0.47	1.41	2.04	1.61	0.22	0.27	0.28	0.43	\N	0.57	\N	0.48	\N	0.58	\N
Finland	2015	7.45	10.57	0.95	71.60	0.93	0.11	0.22	0.75	0.19	0.56	1.29	2.00	1.57	0.21	0.27	0.28	0.46	\N	0.57	\N	0.48	\N	0.58	\N
Finland	2016	7.66	10.59	0.95	71.70	0.95	-0.03	0.25	0.80	0.18	0.49	1.27	1.98	1.48	0.19	\N	0.28	0.39	\N	0.57	\N	0.48	\N	0.58	\N
Finland	2017	7.79	10.61	0.96	71.80	0.96	-0.01	0.19	0.79	0.18	0.60	1.31	2.00	1.42	0.18	\N	0.28	0.43	\N	0.57	\N	0.48	\N	0.58	\N
Finland	2018	7.86	10.64	0.96	71.90	0.94	-0.13	0.20	0.78	0.18	0.56	\N	\N	1.43	0.18	\N	0.28	0.36	\N	0.57	\N	0.48	\N	0.58	\N
France	2005	7.09	10.51	0.94	71.30	0.89	\N	0.69	0.77	0.23	0.32	0.94	1.43	1.61	0.23	0.30	0.32	\N	\N	\N	\N	\N	\N	0.19	\N
France	2006	6.58	10.52	0.94	71.48	0.79	0.12	0.70	0.78	0.29	0.36	0.95	1.45	1.80	0.27	0.30	0.32	\N	\N	\N	\N	\N	\N	0.19	\N
France	2008	7.01	10.54	0.94	71.84	0.83	-0.04	0.67	0.75	0.28	0.45	0.93	1.45	1.59	0.23	0.33	0.32	\N	\N	\N	\N	\N	\N	0.19	\N
France	2009	6.28	10.50	0.92	72.02	0.80	-0.09	0.65	0.76	0.30	0.47	0.88	1.40	1.97	0.31	0.33	0.32	0.30	0.20	\N	\N	\N	\N	0.19	\N
France	2010	6.80	10.51	0.94	72.20	0.85	-0.11	0.62	0.79	0.26	0.40	0.94	1.43	1.76	0.26	0.34	0.32	0.36	\N	\N	\N	\N	\N	0.19	\N
France	2011	6.96	10.53	0.92	72.40	0.90	-0.11	0.63	0.78	0.28	0.38	0.89	1.37	1.68	0.24	0.33	0.32	0.45	\N	\N	\N	\N	\N	0.19	\N
France	2012	6.65	10.53	0.94	72.60	0.84	-0.15	0.61	0.75	0.25	0.44	0.90	1.35	1.79	0.27	0.33	0.32	0.33	\N	\N	\N	\N	\N	0.19	\N
France	2013	6.67	10.53	0.91	72.80	0.88	-0.13	0.70	0.80	0.20	0.40	0.83	1.35	1.92	0.29	0.33	0.32	0.34	\N	\N	\N	\N	\N	0.19	\N
France	2014	6.47	10.53	0.88	73.00	0.80	-0.12	0.66	0.81	0.22	0.26	0.76	1.32	1.85	0.29	0.32	0.32	0.43	\N	\N	\N	\N	\N	0.19	\N
France	2015	6.36	10.54	0.90	73.20	0.82	-0.14	0.64	0.79	0.22	0.33	0.66	1.32	1.85	0.29	0.33	0.32	0.33	\N	\N	\N	\N	\N	0.19	\N
France	2016	6.48	10.55	0.88	73.40	0.79	-0.10	0.62	0.77	0.27	0.28	0.52	1.32	1.80	0.28	\N	0.32	0.34	\N	\N	\N	\N	\N	0.19	\N
France	2017	6.64	10.56	0.93	73.60	0.83	-0.13	0.60	0.76	0.24	0.37	0.68	1.30	1.63	0.25	\N	0.32	0.37	\N	\N	\N	\N	\N	0.19	\N
France	2018	6.67	10.57	0.92	73.80	0.82	-0.14	0.58	0.77	0.28	0.38	\N	\N	1.60	0.24	\N	0.32	0.36	\N	\N	\N	\N	\N	0.19	\N
Gabon	2011	4.26	9.67	0.65	55.48	0.77	-0.23	0.85	0.59	0.26	0.53	-0.26	-0.67	1.94	0.46	\N	0.42	0.64	\N	\N	\N	\N	\N	\N	\N
Gabon	2012	3.97	9.69	0.74	56.16	0.57	-0.21	0.81	0.47	0.27	0.36	-0.29	-0.67	2.02	0.51	\N	0.42	0.61	\N	\N	\N	\N	\N	\N	\N
Gabon	2013	3.80	9.71	0.73	56.84	0.68	-0.16	0.78	0.51	0.29	0.41	-0.27	-0.67	1.87	0.49	\N	0.42	0.61	\N	\N	\N	\N	\N	\N	\N
Gabon	2014	3.92	9.72	0.83	57.52	0.61	-0.22	0.78	0.54	0.29	0.32	-0.36	-0.66	1.92	0.49	\N	0.42	0.57	\N	\N	\N	\N	\N	\N	\N
Gabon	2015	4.66	9.73	0.76	58.20	0.67	-0.21	0.87	0.63	0.37	0.37	-0.44	-0.70	2.08	0.45	\N	0.42	0.50	\N	\N	\N	\N	\N	\N	\N
Gabon	2016	4.83	9.73	0.78	58.70	0.70	-0.22	0.82	0.64	0.43	0.38	-0.54	-0.74	2.21	0.46	\N	0.42	0.56	\N	\N	\N	\N	\N	\N	\N
Gabon	2017	4.78	9.71	0.81	59.20	0.65	-0.25	0.87	0.63	0.45	0.29	-0.57	-0.80	2.46	0.51	0.38	0.42	0.59	\N	\N	\N	\N	\N	\N	\N
Gabon	2018	4.78	9.72	0.78	59.70	0.72	-0.22	0.82	0.64	0.42	0.31	\N	\N	2.62	0.55	\N	0.42	0.49	\N	\N	\N	\N	\N	\N	\N
Gambia	2017	4.12	7.35	0.70	54.70	0.81	0.13	0.57	0.84	0.28	0.80	-0.43	-0.55	2.48	0.60	\N	0.42	0.56	\N	\N	\N	\N	\N	\N	\N
Gambia	2018	4.92	7.38	0.68	55.00	0.72	\N	0.69	0.80	0.38	0.76	\N	\N	3.16	0.64	\N	0.42	0.59	\N	\N	\N	\N	\N	\N	\N
Georgia	2006	3.68	8.60	0.65	65.12	0.55	-0.25	0.75	0.43	0.27	0.46	-0.53	-0.20	1.93	0.52	0.37	0.38	\N	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2007	3.71	8.73	0.55	65.04	0.46	-0.25	0.70	0.43	0.24	0.33	-0.44	-0.02	1.82	0.49	0.38	0.38	\N	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2008	4.16	8.77	0.61	64.96	0.61	-0.21	0.50	0.44	0.26	0.51	-0.59	0.10	1.90	0.46	0.38	0.38	\N	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2009	3.80	8.74	0.54	64.88	0.50	-0.21	0.53	0.49	0.24	0.43	-0.58	0.11	2.01	0.53	0.38	0.38	0.50	0.16	\N	\N	0.18	\N	0.18	\N
Georgia	2010	4.10	8.81	0.54	64.80	0.56	-0.23	0.46	0.50	0.24	0.62	-0.44	0.18	1.87	0.46	0.40	0.38	0.48	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2011	4.20	8.90	0.50	64.86	0.63	-0.24	0.35	0.51	0.25	0.66	-0.41	0.30	1.96	0.47	0.40	0.38	0.47	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2012	4.25	8.97	0.53	64.92	0.66	-0.25	0.32	0.56	0.25	0.61	-0.33	0.42	1.96	0.46	0.39	0.38	0.46	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2013	4.35	9.02	0.56	64.98	0.72	-0.24	0.35	0.60	0.20	0.63	-0.15	0.45	1.88	0.43	0.38	0.38	0.44	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2014	4.29	9.08	0.56	65.04	0.72	-0.22	0.42	0.57	0.20	0.53	-0.02	0.60	2.05	0.48	0.37	0.38	0.39	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2015	4.12	9.11	0.52	65.10	0.64	-0.19	0.50	0.55	0.23	0.25	-0.10	0.57	2.05	0.50	0.36	0.38	0.40	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2016	4.45	9.14	0.53	64.90	0.61	-0.24	0.56	0.56	0.22	0.34	-0.01	0.65	1.96	0.44	0.37	0.38	0.44	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2017	4.45	9.18	0.59	64.70	0.82	-0.23	0.59	0.58	0.21	0.30	-0.05	0.67	1.78	0.40	\N	0.38	0.45	\N	\N	\N	0.18	\N	0.18	\N
Georgia	2018	4.66	9.23	0.62	64.50	0.78	-0.22	0.75	0.57	0.24	0.30	\N	\N	2.22	0.48	\N	0.38	0.42	\N	\N	\N	0.18	\N	0.18	\N
Germany	2005	6.62	10.54	0.96	70.20	0.85	\N	0.78	0.78	0.20	0.32	1.19	1.64	1.80	0.27	\N	0.31	\N	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2007	6.42	10.61	0.93	70.48	0.80	0.16	0.79	0.73	0.23	0.35	1.17	1.69	1.87	0.29	0.31	0.31	\N	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2008	6.52	10.62	0.92	70.62	0.77	\N	0.76	0.79	0.22	0.36	1.14	1.63	1.77	0.27	\N	0.31	\N	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2009	6.64	10.57	0.93	70.76	0.84	0.12	0.69	0.79	0.21	0.52	1.10	1.63	1.87	0.28	\N	0.31	0.39	0.32	\N	\N	0.32	\N	0.34	0.45
Germany	2010	6.72	10.61	0.94	70.90	0.84	0.09	0.69	0.79	0.18	0.40	1.05	1.64	1.86	0.28	0.30	0.31	0.47	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2011	6.62	10.66	0.95	70.98	0.91	0.03	0.68	0.79	0.17	0.42	1.10	1.62	1.85	0.28	0.31	0.31	0.43	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2012	6.70	10.66	0.93	71.06	0.90	0.07	0.68	0.80	0.17	0.52	1.08	1.66	1.83	0.27	\N	0.31	0.41	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2013	6.97	10.67	0.93	71.14	0.89	0.02	0.57	0.74	0.20	0.56	1.17	1.64	1.82	0.26	0.31	0.31	0.38	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2014	6.98	10.68	0.94	71.22	0.90	0.08	0.47	0.79	0.19	0.60	1.18	1.78	1.66	0.24	\N	0.31	0.45	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2015	7.04	10.69	0.93	71.30	0.89	0.17	0.41	0.76	0.20	0.63	1.06	1.77	1.65	0.23	0.32	0.31	0.39	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2016	6.87	10.70	0.91	71.60	0.87	0.14	0.45	0.74	0.19	0.55	1.02	1.75	1.78	0.26	\N	0.31	0.35	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2017	7.07	10.72	0.89	71.90	0.84	0.14	0.41	0.74	0.20	0.62	0.98	1.74	1.44	0.20	\N	0.31	0.32	\N	\N	\N	0.32	\N	0.34	0.45
Germany	2018	7.12	10.73	0.92	72.20	0.88	0.03	0.50	0.78	0.24	0.59	\N	\N	1.62	0.23	\N	0.31	0.28	\N	\N	\N	0.32	\N	0.34	0.45
Ghana	2006	4.54	7.88	0.73	52.34	0.85	0.22	0.81	0.67	0.20	0.64	0.21	0.03	1.80	0.40	\N	0.43	\N	\N	\N	\N	\N	\N	0.08	0.05
Ghana	2007	5.22	7.89	0.73	52.78	0.89	0.15	0.77	0.69	0.22	0.72	0.21	0.04	1.95	0.37	\N	0.43	\N	\N	\N	\N	\N	\N	0.08	0.05
Ghana	2008	4.97	7.95	0.62	53.22	0.84	0.13	0.86	0.72	0.17	0.67	0.20	-0.04	1.62	0.33	\N	0.43	\N	\N	\N	\N	\N	\N	0.08	0.05
Ghana	2009	4.20	7.98	0.63	53.66	0.76	0.01	0.89	0.77	0.20	0.68	0.26	0.00	1.89	0.45	\N	0.43	0.54	0.20	\N	\N	\N	\N	0.08	0.05
Ghana	2010	4.61	8.03	0.74	54.10	0.89	0.08	0.87	0.78	0.18	0.75	0.27	0.02	1.77	0.38	\N	0.43	0.56	\N	\N	\N	\N	\N	0.08	0.05
Ghana	2011	5.61	8.13	0.72	54.48	0.85	0.02	0.79	0.74	0.21	0.68	0.33	0.01	2.60	0.46	\N	0.43	0.55	\N	\N	\N	\N	\N	0.08	0.05
Ghana	2012	5.06	8.20	0.69	54.86	0.68	0.05	0.90	0.76	0.15	0.58	0.28	-0.01	2.14	0.42	0.42	0.43	\N	\N	\N	\N	\N	\N	0.08	0.05
Ghana	2013	4.97	8.24	0.68	55.24	0.79	-0.06	0.88	0.69	0.21	0.49	0.25	0.01	1.83	0.37	\N	0.43	0.54	\N	\N	\N	\N	\N	0.08	0.05
Ghana	2014	3.86	8.26	0.65	55.62	0.68	0.01	0.91	0.70	0.28	0.34	0.18	-0.11	2.44	0.63	\N	0.43	0.74	\N	\N	\N	\N	\N	0.08	0.05
Ghana	2015	3.99	8.28	0.69	56.00	0.85	-0.03	0.95	0.69	0.27	0.44	0.23	-0.08	2.15	0.54	\N	0.43	0.52	\N	\N	\N	\N	\N	0.08	0.05
Ghana	2016	4.51	8.29	0.65	56.40	0.75	0.09	0.89	0.67	0.30	0.52	0.23	-0.14	2.74	0.61	\N	0.43	0.54	\N	\N	\N	\N	\N	0.08	0.05
Ghana	2017	5.48	8.35	0.67	56.80	0.78	0.08	0.84	0.70	0.25	0.67	0.34	-0.09	2.55	0.47	\N	0.43	0.50	\N	\N	\N	\N	\N	0.08	0.05
Greece	2005	6.01	10.29	0.84	70.50	0.73	\N	0.86	0.69	0.26	0.49	0.80	0.71	2.45	0.41	0.35	0.35	\N	\N	\N	\N	\N	\N	\N	\N
Greece	2007	6.65	10.38	0.81	70.90	0.58	-0.19	0.84	0.74	0.22	0.38	0.75	0.65	1.96	0.30	0.34	0.35	\N	\N	\N	\N	\N	\N	\N	\N
Greece	2009	6.04	10.32	0.79	71.30	0.44	-0.29	0.96	0.65	0.25	0.32	0.34	0.54	1.98	0.33	0.34	0.35	0.33	0.16	\N	\N	\N	\N	\N	\N
Greece	2010	5.84	10.27	0.87	71.50	0.48	-0.30	0.95	0.63	0.29	0.24	0.39	0.44	2.28	0.39	0.34	0.35	0.32	\N	\N	\N	\N	\N	\N	\N
Greece	2011	5.37	10.17	0.85	71.56	0.53	-0.32	0.94	0.59	0.32	0.18	0.36	0.37	2.21	0.41	0.35	0.35	0.33	\N	\N	\N	\N	\N	\N	\N
Greece	2012	5.10	10.10	0.81	71.62	0.37	-0.31	0.96	0.58	0.35	0.13	0.24	0.27	2.49	0.49	0.36	0.35	0.34	\N	\N	\N	\N	\N	\N	\N
Greece	2013	4.72	10.08	0.69	71.68	0.43	-0.27	0.94	0.69	0.48	0.14	0.26	0.38	2.28	0.48	0.36	0.35	0.32	\N	\N	\N	\N	\N	\N	\N
Greece	2014	4.76	10.09	0.83	71.74	0.37	-0.29	0.93	0.69	0.39	0.19	0.24	0.24	2.41	0.51	0.36	0.35	0.31	\N	\N	\N	\N	\N	\N	\N
Greece	2015	5.62	10.09	0.83	71.80	0.53	-0.27	0.82	0.74	0.28	0.44	0.21	0.21	2.21	0.39	0.36	0.35	0.31	\N	\N	\N	\N	\N	\N	\N
Greece	2016	5.30	10.09	0.80	72.00	0.48	-0.26	0.90	0.70	0.34	0.13	0.27	0.10	2.32	0.44	\N	0.35	0.32	\N	\N	\N	\N	\N	\N	\N
Greece	2017	5.15	10.11	0.75	72.20	0.44	-0.29	0.87	0.60	0.33	0.14	0.29	0.12	2.41	0.47	\N	0.35	0.35	\N	\N	\N	\N	\N	\N	\N
Greece	2018	5.41	10.13	0.79	72.40	0.56	-0.34	0.86	0.67	0.26	0.16	\N	\N	2.08	0.38	\N	0.35	0.32	\N	\N	\N	\N	\N	\N	\N
Guatemala	2006	5.90	8.77	0.83	60.74	0.66	0.17	0.71	0.82	0.29	0.39	-0.45	-0.69	2.09	0.35	0.55	0.52	\N	\N	\N	\N	\N	\N	0.15	\N
Guatemala	2007	6.33	8.81	0.87	61.08	0.63	0.13	0.81	0.82	0.22	0.30	-0.46	-0.66	2.11	0.33	\N	0.52	\N	\N	\N	\N	\N	\N	0.15	\N
Guatemala	2008	6.41	8.82	0.87	61.42	0.63	0.20	0.80	0.83	0.23	0.32	-0.46	-0.62	2.16	0.34	\N	0.52	\N	\N	\N	\N	\N	\N	0.15	\N
Guatemala	2009	6.45	8.81	0.83	61.76	0.64	0.19	0.75	0.83	0.24	0.34	-0.59	-0.60	2.24	0.35	\N	0.52	0.43	0.16	\N	\N	\N	\N	0.15	\N
Guatemala	2010	6.29	8.81	0.86	62.10	0.70	0.16	0.79	0.85	0.24	0.34	-0.58	-0.59	2.42	0.38	\N	0.52	0.49	0.15	\N	\N	\N	\N	0.15	\N
Guatemala	2011	5.74	8.83	0.77	62.46	0.76	0.01	0.86	0.84	0.29	0.36	-0.53	-0.60	2.55	0.44	\N	0.52	0.44	\N	\N	\N	\N	\N	0.15	\N
Guatemala	2012	5.86	8.84	0.80	62.82	0.87	0.02	0.82	0.86	0.35	0.50	-0.49	-0.67	2.68	0.46	\N	0.52	0.49	\N	\N	\N	\N	\N	0.15	\N
Guatemala	2013	5.98	8.85	0.83	63.18	0.88	0.04	0.82	0.87	0.33	0.47	-0.52	-0.65	2.60	0.43	\N	0.52	0.46	\N	\N	\N	\N	\N	0.15	\N
Guatemala	2014	6.54	8.87	0.83	63.54	0.84	0.11	0.80	0.84	0.31	0.37	-0.50	-0.65	2.59	0.40	0.48	0.52	0.49	\N	\N	\N	\N	\N	0.15	\N
Guatemala	2015	6.46	8.89	0.82	63.90	0.87	0.05	0.82	0.85	0.31	0.27	-0.50	-0.65	2.94	0.46	\N	0.52	0.59	\N	\N	\N	\N	\N	0.15	\N
Guatemala	2016	6.36	8.90	0.81	64.20	0.86	0.01	0.81	0.85	0.32	0.47	-0.42	-0.64	2.70	0.42	\N	0.52	0.49	\N	\N	\N	\N	\N	0.15	\N
Guatemala	2017	6.33	8.91	0.83	64.50	0.91	-0.06	0.80	0.85	0.31	0.46	-0.43	-0.67	2.86	0.45	\N	0.52	0.50	\N	\N	\N	\N	\N	0.15	\N
Guatemala	2018	6.63	8.92	0.84	64.80	0.91	-0.01	0.77	0.87	0.26	0.46	\N	\N	2.84	0.43	\N	0.52	0.63	\N	\N	\N	\N	\N	0.15	\N
Guinea	2011	4.04	7.39	0.60	50.22	0.80	0.05	0.74	0.70	0.26	0.77	-1.14	-1.17	1.74	0.43	\N	0.39	0.45	\N	\N	\N	\N	\N	\N	\N
Guinea	2012	3.65	7.43	0.54	50.44	0.65	0.01	0.79	0.68	0.28	0.56	-1.15	-1.18	1.66	0.45	0.34	0.39	0.50	\N	\N	\N	\N	\N	\N	\N
Guinea	2013	3.90	7.45	0.57	50.66	0.69	0.10	0.82	0.60	0.35	0.52	-1.13	-1.15	1.84	0.47	\N	0.39	0.45	\N	\N	\N	\N	\N	\N	\N
Guinea	2014	3.41	7.46	0.64	50.88	0.68	0.01	0.71	0.63	0.35	0.57	-0.91	-1.18	1.78	0.52	\N	0.39	0.51	\N	\N	\N	\N	\N	\N	\N
Guinea	2015	3.50	7.47	0.58	51.10	0.67	0.01	0.76	0.67	0.27	0.61	-0.62	-1.04	1.86	0.53	\N	0.39	0.49	\N	\N	\N	\N	\N	\N	\N
Guinea	2016	3.60	7.55	0.68	52.20	0.73	-0.05	0.80	0.69	0.37	0.47	-0.58	-1.00	2.12	0.59	\N	0.39	0.52	\N	\N	\N	\N	\N	\N	\N
Guinea	2017	4.87	7.60	0.63	53.30	0.74	0.05	0.75	0.70	0.42	0.64	-0.67	-1.03	2.97	0.61	\N	0.39	0.62	\N	\N	\N	\N	\N	\N	\N
Guinea	2018	5.25	7.63	0.63	54.40	0.73	0.10	0.78	0.74	0.44	0.59	\N	\N	3.30	0.63	\N	0.39	0.60	\N	\N	\N	\N	\N	\N	\N
Guyana	2007	5.99	8.58	0.85	57.26	0.69	0.12	0.84	0.77	0.30	0.46	-0.23	-0.42	1.84	0.31	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Haiti	2006	3.75	7.36	0.69	48.46	0.45	0.40	0.85	0.61	0.33	0.36	-1.05	-1.21	1.84	0.49	\N	0.41	\N	\N	\N	\N	\N	\N	\N	\N
Haiti	2008	3.85	7.37	0.68	40.38	0.46	0.26	0.81	0.61	0.26	0.24	-0.99	-1.14	1.87	0.49	\N	0.41	\N	\N	\N	\N	\N	\N	\N	\N
Haiti	2010	3.77	7.31	0.55	32.30	0.37	0.22	0.85	0.55	0.29	0.16	-0.83	-1.30	1.56	0.41	\N	0.41	0.55	0.31	\N	\N	\N	\N	\N	\N
Haiti	2011	4.84	7.35	0.57	36.86	0.41	0.24	0.68	0.63	0.24	0.46	-0.87	-1.34	1.73	0.36	\N	0.41	0.50	\N	\N	\N	\N	\N	\N	\N
Haiti	2012	4.41	7.37	0.75	41.42	0.48	0.29	0.72	0.59	0.28	0.37	-0.78	-1.29	1.78	0.40	0.41	0.41	0.41	\N	\N	\N	\N	\N	\N	\N
Haiti	2013	4.62	7.40	0.65	45.98	0.61	0.29	0.67	0.54	0.33	0.36	-0.69	-1.23	2.29	0.50	\N	0.41	0.49	\N	\N	\N	\N	\N	\N	\N
Haiti	2014	3.89	7.41	0.55	50.54	0.51	0.28	0.71	0.59	0.33	0.33	-0.72	-1.38	2.20	0.57	\N	0.41	0.54	\N	\N	\N	\N	\N	\N	\N
Haiti	2015	3.57	7.41	0.56	55.10	0.40	0.31	0.78	0.62	0.33	0.30	-0.73	-1.40	2.35	0.66	\N	0.41	0.69	\N	\N	\N	\N	\N	\N	\N
Haiti	2016	3.35	7.41	0.58	55.30	0.30	0.29	0.84	0.55	0.37	0.15	-0.75	-1.41	2.19	0.65	\N	0.41	0.61	\N	\N	\N	\N	\N	\N	\N
Haiti	2017	3.82	7.41	0.65	55.50	0.48	0.38	0.65	0.57	0.32	0.44	-0.72	-1.42	2.16	0.56	\N	0.41	0.57	\N	\N	\N	\N	\N	\N	\N
Haiti	2018	3.61	7.42	0.54	55.70	0.59	0.42	0.72	0.58	0.36	0.37	\N	\N	3.08	0.85	\N	0.41	0.67	\N	\N	\N	\N	\N	\N	\N
Honduras	2006	5.40	8.26	0.93	64.54	0.65	0.10	0.84	0.86	0.16	0.44	-0.40	-0.73	2.74	0.51	0.58	0.55	\N	\N	\N	\N	\N	\N	\N	\N
Honduras	2007	5.10	8.29	0.82	64.78	0.68	0.24	0.83	0.76	0.20	0.34	-0.31	-0.64	2.64	0.52	0.56	0.55	\N	\N	\N	\N	\N	\N	\N	\N
Honduras	2008	5.42	8.31	0.83	65.02	0.69	0.23	0.86	0.79	0.21	0.29	-0.41	-0.70	2.70	0.50	0.56	0.55	\N	\N	\N	\N	\N	\N	\N	\N
Honduras	2009	6.03	8.27	0.82	65.26	0.66	0.13	0.86	0.80	0.26	0.29	-0.42	-0.69	2.66	0.44	0.51	0.55	0.55	0.12	\N	\N	\N	\N	\N	\N
Honduras	2010	5.87	8.29	0.80	65.50	0.65	0.11	0.82	0.80	0.26	0.30	-0.50	-0.66	2.68	0.46	0.53	0.55	0.49	0.13	\N	\N	\N	\N	\N	\N
Honduras	2011	4.96	8.31	0.77	65.72	0.78	0.10	0.88	0.82	0.31	0.29	-0.43	-0.60	2.67	0.54	0.56	0.55	0.48	\N	\N	\N	\N	\N	\N	\N
Honduras	2012	4.60	8.33	0.78	65.94	0.70	0.00	0.87	0.85	0.29	0.26	-0.41	-0.75	2.55	0.55	0.56	0.55	0.48	\N	\N	\N	\N	\N	\N	\N
Honduras	2013	4.71	8.34	0.79	66.16	0.70	-0.02	0.87	0.82	0.28	0.25	-0.46	-0.76	2.88	0.61	0.53	0.55	0.54	\N	\N	\N	\N	\N	\N	\N
Honduras	2014	5.06	8.35	0.79	66.38	0.70	0.02	0.83	0.82	0.30	0.33	-0.47	-0.73	2.74	0.54	0.50	0.55	0.48	\N	\N	\N	\N	\N	\N	\N
Honduras	2015	4.85	8.37	0.77	66.60	0.53	-0.09	0.85	0.86	0.31	0.30	-0.45	-0.68	3.07	0.63	0.50	0.55	0.60	\N	\N	\N	\N	\N	\N	\N
Honduras	2016	5.65	8.39	0.77	66.80	0.85	0.09	0.79	0.83	0.30	0.39	-0.44	-0.75	2.97	0.53	0.50	0.55	0.53	\N	\N	\N	\N	\N	\N	\N
Honduras	2017	6.02	8.42	0.84	67.00	0.90	0.08	0.78	0.84	0.25	0.50	-0.50	-0.68	2.96	0.49	\N	0.55	0.56	\N	\N	\N	\N	\N	\N	\N
Honduras	2018	5.91	8.44	0.83	67.20	0.87	0.11	0.80	0.87	0.29	0.40	\N	\N	3.13	0.53	\N	0.55	0.67	\N	\N	\N	\N	\N	\N	\N
Hong Kong S.A.R. of China	2006	5.51	10.68	0.81	74.28	0.91	0.15	0.36	0.72	0.24	0.66	0.85	1.82	1.91	0.35	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hong Kong S.A.R. of China	2008	5.14	10.75	0.84	74.28	0.92	0.29	0.27	0.72	0.24	0.68	0.79	1.80	1.85	0.36	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hong Kong S.A.R. of China	2009	5.40	10.72	0.83	74.64	0.92	0.30	0.27	0.76	0.21	0.62	0.72	1.74	1.97	0.37	\N	\N	\N	0.30	\N	\N	\N	\N	\N	\N
Hong Kong S.A.R. of China	2010	5.64	10.78	0.86	74.83	0.89	0.32	0.26	0.71	0.18	0.63	0.73	1.77	1.75	0.31	\N	\N	0.44	\N	\N	\N	\N	\N	\N	\N
Hong Kong S.A.R. of China	2011	5.47	10.82	0.85	75.23	0.89	0.22	0.24	0.73	0.20	0.58	0.76	1.71	1.94	0.35	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hong Kong S.A.R. of China	2012	5.48	10.83	0.83	75.28	0.88	0.21	0.38	0.72	0.18	0.50	0.82	1.78	1.94	0.35	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Hong Kong S.A.R. of China	2014	5.46	10.87	0.83	75.73	0.84	0.21	0.42	0.68	0.24	0.46	0.84	1.84	1.81	0.33	\N	\N	0.55	\N	\N	\N	\N	\N	\N	\N
Hong Kong S.A.R. of China	2016	5.50	10.90	0.83	75.95	0.80	0.09	0.40	0.66	0.21	0.45	0.56	1.82	1.82	0.33	\N	\N	0.51	\N	\N	\N	\N	\N	\N	\N
Hong Kong S.A.R. of China	2017	5.36	10.93	0.83	75.91	0.83	0.13	0.42	0.64	0.20	0.55	0.64	1.85	1.78	0.33	\N	\N	0.47	\N	\N	\N	\N	\N	\N	\N
Hungary	2005	5.19	10.02	0.93	64.60	0.70	\N	0.90	0.68	0.29	0.36	1.09	0.84	2.07	0.40	0.35	0.30	\N	\N	0.33	\N	0.22	\N	0.29	\N
Hungary	2007	4.95	10.06	0.93	65.00	0.54	-0.17	0.90	0.70	0.23	0.25	0.89	0.87	2.08	0.42	0.28	0.30	\N	\N	0.33	\N	0.22	\N	0.29	\N
Hungary	2009	4.89	10.01	0.90	65.40	0.46	-0.13	0.91	0.66	0.23	0.20	0.72	0.75	2.09	0.43	0.27	0.30	\N	\N	0.33	\N	0.22	\N	0.29	\N
Hungary	2010	4.73	10.02	0.90	65.60	0.51	-0.15	0.98	0.66	0.23	0.25	0.79	0.71	1.97	0.42	0.29	0.30	0.32	0.13	0.33	\N	0.22	\N	0.29	\N
Hungary	2011	4.92	10.04	0.89	65.76	0.63	-0.10	0.94	0.64	0.30	0.36	0.79	0.72	2.09	0.43	0.29	0.30	0.32	\N	0.33	\N	0.22	\N	0.29	\N
Hungary	2012	4.68	10.02	0.91	65.92	0.57	-0.14	0.93	0.65	0.32	0.21	0.71	0.65	2.09	0.45	0.31	0.30	0.31	\N	0.33	\N	0.22	\N	0.29	\N
Hungary	2013	4.91	10.05	0.88	66.08	0.67	-0.12	0.91	0.71	0.31	0.33	0.77	0.62	2.27	0.46	0.32	0.30	0.32	\N	0.33	\N	0.22	\N	0.29	\N
Hungary	2014	5.18	10.09	0.84	66.24	0.49	-0.16	0.86	0.65	0.24	0.31	0.61	0.49	1.88	0.36	0.31	0.30	0.32	\N	0.33	\N	0.22	\N	0.29	\N
Hungary	2015	5.34	10.13	0.86	66.40	0.56	-0.20	0.91	0.71	0.24	0.28	0.65	0.45	1.88	0.35	0.30	0.30	0.29	\N	0.33	\N	0.22	\N	0.29	\N
Hungary	2016	5.45	10.15	0.90	66.80	0.55	-0.19	0.92	0.67	0.24	0.30	0.53	0.39	1.85	0.34	\N	0.30	0.30	\N	0.33	\N	0.22	\N	0.29	\N
Hungary	2017	6.07	10.20	0.88	67.20	0.66	-0.15	0.89	0.74	0.18	0.38	0.59	0.45	1.79	0.30	\N	0.30	0.33	\N	0.33	\N	0.22	\N	0.29	\N
Iceland	2008	6.89	10.68	0.98	72.32	0.89	0.27	0.71	0.88	0.15	0.24	1.32	1.84	1.95	0.28	0.32	0.28	\N	\N	\N	\N	\N	\N	\N	\N
Iceland	2012	7.59	10.59	0.98	72.76	0.90	0.24	0.76	0.90	0.16	0.26	1.34	1.55	1.57	0.21	0.27	0.28	0.40	\N	\N	\N	\N	\N	\N	\N
Iceland	2013	7.50	10.63	0.97	72.84	0.92	0.30	0.71	0.87	0.16	0.46	1.36	1.55	1.57	0.21	0.25	0.28	0.33	\N	\N	\N	\N	\N	\N	\N
Iceland	2015	7.50	10.67	0.98	73.00	0.94	0.30	0.64	0.85	0.18	0.43	1.34	1.59	1.69	0.23	\N	0.28	0.39	\N	\N	\N	\N	\N	\N	\N
Iceland	2016	7.51	10.73	0.98	73.00	0.95	0.28	0.72	0.87	0.16	0.36	1.36	1.53	1.57	0.21	\N	0.28	0.34	\N	\N	\N	\N	\N	\N	\N
Iceland	2017	7.48	10.75	0.97	73.00	0.94	0.24	0.73	0.90	0.15	0.37	1.37	1.58	1.63	0.22	\N	0.28	0.33	\N	\N	\N	\N	\N	\N	\N
India	2006	5.35	8.14	0.71	55.72	0.77	\N	0.85	0.69	0.20	0.65	-0.31	-0.12	1.95	0.36	\N	0.35	\N	\N	\N	0.34	0.33	0.39	0.21	0.32
India	2007	5.03	8.22	0.57	56.14	0.73	-0.06	0.86	0.67	0.25	0.82	-0.35	-0.12	1.62	0.32	\N	0.35	\N	\N	\N	0.34	0.33	0.39	0.21	0.32
India	2008	5.15	8.24	0.68	56.56	0.76	-0.08	0.89	0.67	0.26	0.62	-0.32	-0.16	1.63	0.32	\N	0.35	\N	\N	\N	0.34	0.33	0.39	0.21	0.32
India	2009	4.52	8.31	0.65	56.98	0.68	-0.04	0.89	0.77	0.30	0.70	-0.45	-0.19	1.97	0.43	\N	0.35	0.63	0.21	\N	0.34	0.33	0.39	0.21	0.32
India	2010	4.99	8.39	0.60	57.40	0.78	0.05	0.86	0.70	0.27	0.67	-0.42	-0.21	1.94	0.39	\N	0.35	0.48	0.21	\N	0.34	0.33	0.39	0.21	0.32
India	2011	4.63	8.44	0.55	57.70	0.84	-0.05	0.91	0.65	0.23	0.58	-0.45	-0.24	1.79	0.39	0.35	0.35	0.42	\N	\N	0.34	0.33	0.39	0.21	0.32
India	2012	4.72	8.48	0.51	58.00	0.61	0.06	0.83	0.63	0.29	0.54	-0.44	-0.31	1.96	0.42	\N	0.35	0.39	\N	\N	0.34	0.33	0.39	0.21	0.32
India	2013	4.43	8.53	0.55	58.30	0.74	0.07	0.83	0.68	0.33	0.53	-0.40	-0.30	2.09	0.47	\N	0.35	0.38	\N	\N	0.34	0.33	0.39	0.21	0.32
India	2014	4.42	8.59	0.62	58.60	0.81	-0.04	0.83	0.71	0.28	0.73	-0.29	-0.29	2.34	0.53	\N	0.35	0.43	\N	\N	0.34	0.33	0.39	0.21	0.32
India	2015	4.34	8.66	0.61	58.90	0.78	-0.02	0.78	0.70	0.32	0.69	-0.26	-0.18	2.10	0.48	\N	0.35	0.41	\N	\N	0.34	0.33	0.39	0.21	0.32
India	2016	4.18	8.72	0.61	59.30	0.82	0.03	0.76	0.69	0.35	0.73	-0.26	-0.14	1.74	0.42	\N	0.35	0.39	\N	\N	0.34	0.33	0.39	0.21	0.32
India	2017	4.05	8.77	0.61	59.70	0.89	-0.05	0.78	0.68	0.32	0.84	-0.22	-0.10	1.66	0.41	\N	0.35	0.38	\N	\N	0.34	0.33	0.39	0.21	0.32
India	2018	3.82	8.83	0.64	60.10	0.89	0.07	0.81	0.66	0.36	0.75	\N	\N	2.21	0.58	\N	0.35	0.43	\N	\N	0.34	0.33	0.39	0.21	0.32
Indonesia	2006	4.95	8.87	0.77	59.84	0.71	0.34	0.92	0.82	0.27	0.60	-0.75	-0.57	1.71	0.35	\N	0.40	\N	\N	\N	\N	\N	0.46	0.41	\N
Indonesia	2007	5.10	8.92	0.70	59.98	0.60	0.30	0.96	0.81	0.24	0.52	-0.61	-0.48	1.49	0.29	\N	0.40	\N	\N	\N	\N	\N	0.46	0.41	\N
Indonesia	2008	4.82	8.96	0.68	60.12	0.60	0.15	0.97	0.77	0.24	0.66	-0.53	-0.46	1.58	0.33	\N	0.40	\N	\N	\N	\N	\N	0.46	0.41	\N
Indonesia	2009	5.47	8.99	0.78	60.26	0.78	0.18	0.91	0.86	0.19	0.81	-0.38	-0.53	1.72	0.31	\N	0.40	0.44	0.27	\N	\N	\N	0.46	0.41	\N
Indonesia	2010	5.46	9.04	0.82	60.40	0.70	0.44	0.95	0.84	0.22	0.64	-0.45	-0.51	1.60	0.29	\N	0.40	0.49	0.21	\N	\N	\N	0.46	0.41	\N
Indonesia	2011	5.17	9.09	0.82	60.62	0.88	0.43	0.96	0.86	0.27	0.74	-0.39	-0.48	1.44	0.28	\N	0.40	0.38	\N	\N	\N	\N	0.46	0.41	\N
Indonesia	2012	5.37	9.13	0.83	60.84	0.77	0.34	0.96	0.90	0.23	0.67	-0.26	-0.44	1.60	0.30	\N	0.40	0.41	\N	\N	\N	\N	0.46	0.41	\N
Indonesia	2013	5.29	9.17	0.79	61.06	0.78	0.36	0.97	0.89	0.25	0.68	-0.24	-0.38	1.64	0.31	0.40	0.40	0.40	\N	\N	\N	\N	0.46	0.41	\N
Indonesia	2014	5.60	9.21	0.90	61.28	0.72	0.40	0.97	0.85	0.24	0.65	-0.13	-0.26	1.62	0.29	\N	0.40	0.42	\N	\N	\N	\N	0.46	0.41	\N
Indonesia	2015	5.04	9.25	0.81	61.50	0.78	0.46	0.95	0.88	0.27	0.65	-0.22	-0.33	2.07	0.41	\N	0.40	0.38	\N	\N	\N	\N	0.46	0.41	\N
Indonesia	2016	5.14	9.28	0.79	61.70	0.83	0.49	0.89	0.83	0.34	0.80	-0.10	-0.21	2.55	0.50	\N	0.40	0.41	\N	\N	\N	\N	0.46	0.41	\N
Indonesia	2017	5.10	9.32	0.80	61.90	0.87	0.48	0.90	0.86	0.32	0.83	-0.19	-0.17	2.33	0.46	\N	0.40	0.45	\N	\N	\N	\N	0.46	0.41	\N
Indonesia	2018	5.34	9.36	0.81	62.10	0.88	0.50	0.87	0.86	0.30	0.84	\N	\N	2.53	0.47	\N	0.40	0.46	\N	\N	\N	\N	0.46	0.41	\N
Iran	2005	5.31	9.66	0.77	62.00	0.65	\N	0.64	0.61	0.46	0.55	-1.03	-0.78	2.00	0.38	0.44	0.41	\N	\N	\N	\N	\N	0.55	0.11	\N
Iran	2007	5.34	9.76	0.72	62.76	0.53	0.02	0.87	0.63	0.36	0.50	-1.24	-0.94	2.24	0.42	\N	0.41	\N	\N	\N	\N	\N	0.55	0.11	\N
Iran	2008	5.13	9.75	0.63	63.14	0.60	0.02	0.87	0.62	0.35	0.56	-1.26	-0.99	2.05	0.40	\N	0.41	\N	\N	\N	\N	\N	0.55	0.11	\N
Iran	2011	4.77	9.81	0.58	64.14	0.80	0.17	0.66	0.58	0.36	0.80	-1.50	-0.95	2.45	0.51	\N	0.41	0.54	\N	\N	\N	\N	0.55	0.11	\N
Iran	2012	4.61	9.72	0.60	64.38	0.76	\N	0.68	0.61	0.52	0.72	-1.46	-0.91	2.50	0.54	\N	0.41	0.43	\N	\N	\N	\N	0.55	0.11	\N
Iran	2013	5.14	9.70	0.66	64.62	0.73	0.19	0.69	0.66	0.55	0.69	-1.43	-0.96	2.53	0.49	0.37	0.41	0.43	\N	\N	\N	\N	0.55	0.11	\N
Iran	2014	4.68	9.74	0.64	64.86	0.77	0.21	0.64	0.62	0.51	0.74	-1.23	-0.89	2.66	0.57	0.39	0.41	0.47	\N	\N	\N	\N	0.55	0.11	\N
Iran	2015	4.75	9.71	0.57	65.10	0.78	0.15	0.70	0.64	0.52	0.75	-1.22	-0.76	2.52	0.53	\N	0.41	0.47	\N	\N	\N	\N	0.55	0.11	\N
Iran	2016	4.65	9.83	0.57	65.40	0.77	0.15	0.71	0.69	0.53	0.71	-1.08	-0.70	2.54	0.55	\N	0.41	0.52	\N	\N	\N	\N	0.55	0.11	\N
Iran	2017	4.72	9.86	0.71	65.70	0.73	0.19	0.71	0.69	0.44	\N	-1.11	-0.72	2.50	0.53	\N	0.41	0.85	\N	\N	\N	\N	0.55	0.11	\N
Iran	2018	4.28	9.89	0.67	66.00	0.60	0.04	0.70	0.55	0.49	0.55	\N	\N	2.38	0.56	\N	0.41	0.44	\N	\N	\N	\N	0.55	0.11	\N
Iraq	2008	4.59	9.41	0.74	58.32	0.39	-0.10	0.91	0.53	0.45	0.48	-1.79	-1.40	1.73	0.38	\N	0.29	\N	\N	\N	\N	\N	0.46	0.39	0.30
Iraq	2009	4.78	9.42	0.86	58.96	0.43	-0.23	0.85	0.52	0.40	0.49	-1.60	-1.30	1.71	0.36	\N	0.29	0.33	0.16	\N	\N	\N	0.46	0.39	0.30
Iraq	2010	5.07	9.45	0.85	59.60	0.42	-0.16	0.86	0.54	0.43	0.34	-1.62	-1.27	1.71	0.34	\N	0.29	0.28	\N	\N	\N	\N	0.46	0.39	0.30
Iraq	2011	4.73	9.49	0.75	59.36	0.35	-0.11	0.78	0.49	0.56	0.37	-1.46	-1.21	1.75	0.37	\N	0.29	0.26	\N	\N	\N	\N	0.46	0.39	0.30
Iraq	2012	4.66	9.59	0.73	59.12	0.31	-0.06	0.79	0.42	0.45	0.34	-1.51	-1.26	1.97	0.42	0.30	0.29	0.34	\N	\N	\N	\N	0.46	0.39	0.30
Iraq	2013	4.73	9.63	0.73	58.88	\N	-0.09	0.71	\N	0.55	0.50	-1.53	-1.27	3.01	0.64	\N	0.29	0.45	\N	\N	\N	\N	0.46	0.39	0.30
Iraq	2014	4.54	9.60	0.73	58.64	0.65	-0.04	0.73	0.57	0.56	0.51	-1.81	-1.26	2.98	0.66	\N	0.29	0.57	\N	\N	\N	\N	0.46	0.39	0.30
Iraq	2015	4.49	9.62	0.68	58.40	0.60	-0.02	0.76	0.49	0.58	0.44	-1.69	-1.32	3.02	0.67	\N	0.29	0.63	\N	\N	\N	\N	0.46	0.39	0.30
Iraq	2016	4.41	9.70	0.72	59.00	0.67	-0.09	0.80	0.49	0.57	0.42	-1.67	-1.35	2.95	0.67	\N	0.29	0.55	\N	\N	\N	\N	0.46	0.39	0.30
Iraq	2017	4.46	9.66	0.70	59.60	0.63	-0.04	0.76	0.51	0.59	0.42	-1.69	-1.37	2.90	0.65	\N	0.29	0.55	\N	\N	\N	\N	0.46	0.39	0.30
Ireland	2006	7.14	10.78	0.97	70.14	0.94	0.24	0.47	0.88	0.21	0.63	1.29	1.70	1.82	0.25	0.33	0.33	\N	\N	\N	\N	\N	\N	\N	\N
Ireland	2008	7.57	10.74	0.98	70.82	0.89	0.32	0.49	0.88	0.15	0.51	1.30	1.72	1.51	0.20	0.31	0.33	\N	\N	\N	\N	\N	\N	\N	\N
Ireland	2009	7.05	10.68	0.96	71.16	0.83	0.31	0.58	0.86	0.23	0.29	1.21	1.64	1.81	0.26	0.33	0.33	0.65	0.30	\N	\N	\N	\N	\N	\N
Ireland	2010	7.26	10.69	0.97	71.50	0.86	0.35	0.62	0.88	0.20	0.33	1.17	1.61	1.91	0.26	0.32	0.33	0.58	\N	\N	\N	\N	\N	\N	\N
Ireland	2011	7.01	10.72	0.98	71.60	0.95	0.38	0.59	0.87	0.19	0.53	1.13	1.59	1.89	0.27	0.33	0.33	0.50	\N	\N	\N	\N	\N	\N	\N
Ireland	2012	6.96	10.71	0.96	71.70	0.90	0.30	0.57	0.84	0.24	0.35	1.13	1.58	1.87	0.27	0.33	0.33	0.47	\N	\N	\N	\N	\N	\N	\N
Ireland	2013	6.76	10.72	0.96	71.80	0.88	0.33	0.56	0.81	0.25	0.29	1.11	1.58	1.98	0.29	0.34	0.33	0.45	\N	\N	\N	\N	\N	\N	\N
Ireland	2014	7.02	10.80	0.97	71.90	0.92	0.26	0.41	0.78	0.23	0.46	1.19	1.69	1.67	0.24	0.32	0.33	0.50	\N	\N	\N	\N	\N	\N	\N
Ireland	2015	6.83	11.02	0.95	72.00	0.89	0.23	0.41	0.80	0.23	0.57	1.12	1.69	1.77	0.26	0.32	0.33	0.39	\N	\N	\N	\N	\N	\N	\N
Ireland	2016	7.04	11.05	0.96	72.10	0.87	0.17	0.40	0.81	0.21	0.57	1.07	1.54	1.84	0.26	\N	0.33	0.37	\N	\N	\N	\N	\N	\N	\N
Ireland	2017	7.06	11.12	0.94	72.20	0.91	0.21	0.34	0.83	0.21	0.60	1.16	1.46	1.76	0.25	\N	0.33	0.37	\N	\N	\N	\N	\N	\N	\N
Ireland	2018	6.96	11.16	0.94	72.30	0.86	0.14	0.36	0.81	0.21	0.62	\N	\N	1.86	0.27	\N	0.33	0.37	\N	\N	\N	\N	\N	\N	\N
Israel	2006	7.17	10.23	0.93	71.12	0.82	\N	0.91	0.70	0.31	0.34	-0.24	1.04	1.85	0.26	\N	0.41	\N	\N	\N	\N	\N	0.23	\N	\N
Israel	2007	6.84	10.27	0.87	71.44	0.68	0.22	0.87	0.70	0.32	0.22	-0.25	1.00	2.05	0.30	0.41	0.41	\N	\N	\N	\N	\N	0.23	\N	\N
Israel	2008	7.26	10.28	0.86	71.76	0.66	0.14	0.90	0.71	0.35	0.18	-0.30	1.06	1.90	0.26	\N	0.41	\N	\N	\N	\N	\N	0.23	\N	\N
Israel	2009	7.35	10.27	0.94	72.08	0.59	0.17	0.92	0.70	0.33	0.40	-0.53	1.01	1.75	0.24	\N	0.41	0.26	0.27	\N	\N	\N	0.23	\N	\N
Israel	2010	7.36	10.30	0.88	72.40	0.56	0.15	0.90	0.68	0.36	0.45	-0.38	1.07	1.59	0.22	0.43	0.41	0.25	\N	\N	\N	\N	0.23	\N	\N
Israel	2011	7.43	10.33	0.89	72.46	0.72	0.14	0.89	0.74	0.38	0.27	-0.27	1.12	1.82	0.25	\N	0.41	0.29	\N	\N	\N	\N	0.23	\N	\N
Israel	2012	7.11	10.33	0.90	72.52	0.68	0.15	0.86	0.67	0.32	0.34	-0.22	1.07	1.74	0.24	0.41	0.41	0.28	\N	\N	\N	\N	0.23	\N	\N
Israel	2013	7.32	10.35	0.91	72.58	0.74	0.15	0.85	0.70	0.41	0.45	-0.23	1.08	1.61	0.22	\N	0.41	0.28	\N	\N	\N	\N	0.23	\N	\N
Israel	2014	7.40	10.36	0.89	72.64	0.71	0.09	0.82	0.60	0.27	0.44	-0.16	1.10	1.58	0.21	\N	0.41	0.28	\N	\N	\N	\N	0.23	\N	\N
Israel	2015	7.08	10.37	0.86	72.70	0.75	0.11	0.79	0.70	0.26	0.41	-0.18	1.19	1.78	0.25	\N	0.41	0.29	\N	\N	\N	\N	0.23	\N	\N
Israel	2016	7.16	10.39	0.89	72.90	0.77	0.15	0.80	0.63	0.26	0.44	0.00	1.23	1.67	0.23	\N	0.41	0.31	\N	\N	\N	\N	0.23	\N	\N
Israel	2017	7.33	10.41	0.92	73.10	0.77	0.14	0.79	0.67	0.28	0.39	-0.09	1.13	1.52	0.21	\N	0.41	0.25	\N	\N	\N	\N	0.23	\N	\N
Israel	2018	6.93	10.42	0.91	73.30	0.72	0.05	0.77	0.66	0.28	0.42	\N	\N	1.73	0.25	\N	0.41	0.26	\N	\N	\N	\N	0.23	\N	\N
Italy	2005	6.85	10.53	0.93	71.90	0.80	\N	0.94	0.68	0.29	0.24	0.77	0.62	1.88	0.27	0.34	0.34	\N	\N	\N	\N	\N	\N	0.28	\N
Italy	2007	6.57	10.56	0.91	72.26	0.68	0.11	0.92	0.72	0.30	0.30	0.78	0.49	1.86	0.28	0.33	0.34	\N	\N	\N	\N	\N	\N	0.28	\N
Italy	2008	6.78	10.54	0.88	72.44	0.54	0.05	0.95	0.64	0.27	0.36	0.79	0.49	1.95	0.29	0.34	0.34	\N	\N	\N	\N	\N	\N	0.28	\N
Italy	2009	6.33	10.48	0.88	72.62	0.70	0.24	0.89	0.78	0.28	0.40	0.69	0.50	2.20	0.35	0.34	0.34	0.54	0.21	\N	\N	\N	\N	0.28	\N
Italy	2010	6.35	10.50	0.87	72.80	0.74	-0.06	0.92	0.60	0.24	0.33	0.72	0.47	1.96	0.31	0.35	0.34	0.33	\N	\N	\N	\N	\N	0.28	\N
Italy	2011	6.06	10.50	0.91	72.84	0.57	-0.02	0.93	0.66	0.27	0.26	0.71	0.44	1.63	0.27	0.35	0.34	0.33	\N	\N	\N	\N	\N	0.28	\N
Italy	2012	5.84	10.47	0.87	72.88	0.57	0.11	0.91	0.67	0.39	0.28	0.71	0.41	2.19	0.38	0.35	0.34	0.37	\N	\N	\N	\N	\N	0.28	\N
Italy	2013	6.01	10.44	0.92	72.92	0.50	-0.10	0.94	0.78	0.36	0.15	0.72	0.42	1.70	0.28	0.35	0.34	0.30	\N	\N	\N	\N	\N	0.28	\N
Italy	2014	6.03	10.43	0.90	72.96	0.62	-0.07	0.92	0.72	0.36	0.31	0.73	0.34	2.01	0.33	0.35	0.34	0.47	\N	\N	\N	\N	\N	0.28	\N
Italy	2015	5.85	10.44	0.91	73.00	0.57	-0.07	0.91	0.69	0.33	0.26	0.71	0.37	1.67	0.29	0.35	0.34	0.41	\N	\N	\N	\N	\N	0.28	\N
Italy	2016	5.95	10.45	0.93	73.20	0.62	-0.08	0.90	0.69	0.34	0.24	0.70	0.41	1.87	0.31	\N	0.34	0.40	\N	\N	\N	\N	\N	0.28	\N
Italy	2017	6.20	10.47	0.92	73.40	0.63	-0.04	0.87	0.66	0.32	0.23	0.65	0.43	1.93	0.31	\N	0.34	0.35	\N	\N	\N	\N	\N	0.28	\N
Italy	2018	6.52	10.48	0.91	73.60	0.65	-0.02	0.89	0.65	0.40	0.21	\N	\N	1.52	0.23	\N	0.34	0.46	\N	\N	\N	\N	\N	0.28	\N
Ivory Coast	2009	4.20	7.90	0.67	45.78	0.76	-0.14	0.90	0.60	0.19	0.42	-1.19	-1.10	1.48	0.35	\N	0.42	0.49	0.13	\N	\N	\N	\N	\N	\N
Ivory Coast	2013	3.74	7.97	0.71	47.10	0.74	-0.02	0.69	0.74	0.31	0.57	-0.90	-0.83	2.01	0.54	\N	0.42	0.58	\N	\N	\N	\N	\N	\N	\N
Ivory Coast	2014	3.57	8.02	0.71	47.40	0.78	-0.06	0.67	0.65	0.29	0.63	-0.77	-0.61	1.60	0.45	\N	0.42	0.51	\N	\N	\N	\N	\N	\N	\N
Ivory Coast	2015	4.45	8.08	0.70	47.70	0.80	-0.04	0.74	0.66	0.35	0.64	-0.62	-0.56	2.21	0.50	0.42	0.42	0.53	\N	\N	\N	\N	\N	\N	\N
Ivory Coast	2016	4.54	8.14	0.62	48.30	0.77	-0.03	0.76	0.70	0.38	0.71	-0.60	-0.55	2.46	0.54	\N	0.42	0.55	\N	\N	\N	\N	\N	\N	\N
Ivory Coast	2017	5.04	8.19	0.66	48.90	0.73	-0.10	0.77	0.70	0.36	0.52	-0.68	-0.56	2.61	0.52	\N	0.42	0.56	\N	\N	\N	\N	\N	\N	\N
Ivory Coast	2018	5.27	8.24	0.62	49.50	0.71	-0.04	0.79	0.68	0.39	0.54	\N	\N	3.08	0.58	\N	0.42	0.52	\N	\N	\N	\N	\N	\N	\N
Jamaica	2006	6.21	9.06	0.91	64.90	0.74	0.00	0.95	0.79	0.20	0.18	0.15	-0.04	1.92	0.31	\N	0.47	\N	\N	\N	\N	\N	\N	\N	\N
Jamaica	2011	5.37	9.00	0.85	66.22	0.80	-0.06	0.91	0.84	0.24	0.36	0.21	-0.01	2.33	0.43	\N	0.47	0.61	\N	\N	\N	\N	\N	\N	\N
Jamaica	2013	5.71	8.99	0.86	66.46	0.79	-0.02	0.93	0.73	0.31	0.29	0.36	-0.09	2.76	0.48	\N	0.47	0.63	\N	\N	\N	\N	\N	\N	\N
Jamaica	2014	5.31	8.99	0.87	66.58	0.81	0.00	0.86	0.74	0.31	0.28	0.29	-0.07	2.76	0.52	\N	0.47	0.72	\N	\N	\N	\N	\N	\N	\N
Jamaica	2017	5.89	9.01	0.91	67.10	0.86	-0.13	0.88	0.77	0.24	0.35	0.47	0.08	2.40	0.41	\N	0.47	0.56	\N	\N	\N	\N	\N	\N	\N
Japan	2005	6.52	10.48	0.93	73.20	0.87	\N	0.70	0.74	0.15	0.35	1.02	1.25	1.79	0.27	\N	0.32	\N	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2007	6.24	10.51	0.94	73.44	0.80	-0.10	0.81	0.73	0.21	0.24	0.99	1.29	1.99	0.32	\N	0.32	\N	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2008	5.91	10.50	0.89	73.56	0.77	-0.15	0.82	0.78	0.19	0.22	0.92	1.31	1.93	0.33	0.32	0.32	\N	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2009	5.84	10.44	0.89	73.68	0.73	-0.22	0.74	0.78	0.17	0.25	1.00	1.31	1.86	0.32	\N	0.32	0.51	0.34	0.41	0.38	\N	0.40	0.37	0.36
Japan	2010	6.06	10.48	0.90	73.80	0.77	-0.15	0.77	0.83	0.19	0.27	0.96	1.36	1.98	0.33	\N	0.32	0.33	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2011	6.26	10.48	0.92	73.98	0.81	-0.06	0.73	0.78	0.18	0.23	1.03	1.36	1.99	0.32	\N	0.32	0.37	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2012	5.97	10.50	0.91	74.16	0.75	\N	0.69	0.78	0.17	0.17	1.02	1.39	1.90	0.32	\N	0.32	0.36	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2013	5.96	10.52	0.92	74.34	0.82	-0.16	0.65	0.79	0.17	0.36	1.06	1.46	1.91	0.32	\N	0.32	0.35	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2014	5.92	10.53	0.90	74.52	0.84	-0.15	0.62	0.74	0.19	0.38	1.00	1.56	1.89	0.32	\N	0.32	0.42	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2015	5.88	10.54	0.92	74.70	0.83	-0.17	0.65	0.77	0.18	0.35	1.03	1.52	1.81	0.31	\N	0.32	0.44	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2016	5.95	10.55	0.90	74.80	0.84	-0.07	0.70	0.76	0.19	0.36	0.99	1.55	1.90	0.32	\N	0.32	0.33	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2017	5.91	10.57	0.88	74.90	0.85	-0.22	0.66	0.74	0.18	0.41	1.06	1.52	1.95	0.33	\N	0.32	0.43	\N	0.41	0.38	\N	0.40	0.37	0.36
Japan	2018	5.79	10.58	0.89	75.00	0.77	-0.27	0.69	0.70	0.19	0.38	\N	\N	1.92	0.33	\N	0.32	0.42	\N	0.41	0.38	\N	0.40	0.37	0.36
Jordan	2005	6.29	9.08	0.92	63.50	\N	\N	0.67	0.70	0.24	0.80	-0.32	0.18	2.01	0.32	\N	0.34	\N	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2007	5.60	9.16	0.84	63.98	0.65	-0.11	0.66	0.68	0.24	0.77	-0.49	0.30	2.10	0.37	\N	0.34	\N	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2008	4.93	9.18	0.77	64.22	\N	-0.13	0.71	0.67	0.33	\N	-0.55	0.33	2.43	0.49	0.33	0.34	\N	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2009	6.00	9.18	0.90	64.46	0.77	-0.07	0.74	0.64	0.26	\N	-0.57	0.23	1.86	0.31	\N	0.34	0.35	0.10	\N	\N	\N	0.27	0.31	0.13
Jordan	2010	5.57	9.16	0.92	64.70	0.79	-0.05	\N	0.64	0.34	\N	-0.56	0.14	2.23	0.40	0.34	0.34	0.33	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2011	5.54	9.13	0.88	65.00	0.76	-0.14	\N	0.61	0.26	\N	-0.65	0.18	2.11	0.38	\N	0.34	0.34	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2012	5.13	9.10	0.83	65.30	0.69	-0.16	\N	0.56	0.35	\N	-0.63	0.16	2.10	0.41	\N	0.34	0.32	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2013	5.17	9.08	0.84	65.60	0.69	-0.12	\N	0.68	0.29	\N	-0.71	0.14	2.64	0.51	\N	0.34	0.36	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2014	5.33	9.06	0.82	65.90	0.73	-0.10	\N	0.66	0.31	\N	-0.65	0.20	2.65	0.50	\N	0.34	0.38	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2015	5.40	9.05	0.83	66.20	0.77	-0.04	\N	0.69	0.31	\N	-0.69	0.23	2.52	0.47	\N	0.34	0.36	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2016	5.27	9.03	0.82	66.40	0.77	-0.04	\N	0.64	0.31	\N	-0.60	0.19	2.68	0.51	\N	0.34	0.37	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2017	4.81	9.03	0.81	66.60	0.77	-0.15	\N	0.63	0.39	\N	-0.63	0.18	2.52	0.52	\N	0.34	0.36	\N	\N	\N	\N	0.27	0.31	0.13
Jordan	2018	4.64	9.02	0.80	66.80	0.76	-0.18	\N	\N	\N	\N	\N	\N	2.76	0.60	\N	0.34	0.39	\N	\N	\N	\N	0.27	0.31	0.13
Kazakhstan	2006	5.48	9.77	0.87	58.20	0.73	-0.28	0.86	0.67	0.19	0.73	-0.49	-0.70	1.84	0.34	0.30	0.31	\N	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2007	5.72	9.85	0.86	58.70	0.81	-0.26	0.87	0.65	0.18	0.71	-0.26	-0.72	1.76	0.31	0.30	0.31	\N	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2008	5.89	9.87	0.84	59.20	0.73	-0.23	0.90	0.68	0.16	0.69	-0.23	-0.65	1.87	0.32	0.29	0.31	\N	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2009	5.38	9.85	0.89	59.70	0.86	-0.26	0.84	0.68	0.13	0.71	-0.15	-0.57	1.73	0.32	0.28	0.31	0.36	0.34	\N	\N	\N	\N	\N	0.38
Kazakhstan	2010	5.51	9.91	0.90	60.20	0.78	-0.23	0.82	0.69	0.15	0.71	-0.30	-0.59	1.84	0.33	0.28	0.31	0.36	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2011	5.74	9.97	0.90	60.72	0.88	-0.25	0.80	0.70	0.15	0.72	-0.73	-0.55	1.80	0.31	0.28	0.31	0.37	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2012	5.76	10.00	0.89	61.24	0.84	-0.18	0.88	0.74	0.18	0.73	-0.79	-0.60	1.97	0.34	0.28	0.31	0.40	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2013	5.84	10.04	0.89	61.76	0.78	-0.24	0.82	0.67	0.16	0.66	-0.82	-0.63	1.82	0.31	0.27	0.31	0.33	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2014	5.97	10.07	0.80	62.28	0.80	-0.01	0.81	0.72	0.17	0.60	-0.57	-0.43	2.09	0.35	0.27	0.31	0.30	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2015	5.95	10.07	0.93	62.80	0.74	-0.05	0.71	0.73	0.17	0.82	-0.60	-0.35	1.96	0.33	0.27	0.31	0.31	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2016	5.53	10.06	0.93	63.40	0.78	-0.05	0.70	0.70	0.16	0.76	-0.60	-0.35	2.01	0.36	\N	0.31	0.34	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2017	5.88	10.09	0.91	64.00	0.75	-0.05	0.76	0.76	0.17	0.76	-0.61	-0.26	1.75	0.30	\N	0.31	0.34	\N	\N	\N	\N	\N	\N	0.38
Kazakhstan	2018	6.01	10.11	0.94	64.60	0.84	-0.11	0.82	0.69	0.16	0.62	\N	\N	1.88	0.31	\N	0.31	0.38	\N	\N	\N	\N	\N	\N	0.38
Kenya	2006	4.22	7.74	0.91	50.22	0.62	0.00	0.86	0.71	0.20	0.39	-0.63	-0.66	1.75	0.41	\N	0.44	\N	\N	\N	\N	\N	\N	\N	\N
Kenya	2007	4.58	7.78	0.84	51.54	0.75	0.07	0.80	0.73	0.16	0.66	-0.78	-0.67	1.59	0.35	\N	0.44	\N	\N	\N	\N	\N	\N	\N	\N
Kenya	2008	4.02	7.76	0.83	52.86	0.62	0.00	0.91	0.77	0.15	0.51	-0.84	-0.71	1.40	0.35	\N	0.44	\N	\N	\N	\N	\N	\N	\N	\N
Kenya	2009	4.27	7.76	0.79	54.18	0.58	0.11	0.91	0.77	0.18	0.24	-0.88	-0.71	1.70	0.40	\N	0.44	0.52	0.10	\N	\N	\N	\N	\N	\N
Kenya	2010	4.26	7.81	0.81	55.50	0.64	0.03	0.92	0.82	0.12	0.34	-0.69	-0.62	1.58	0.37	\N	0.44	0.58	\N	\N	\N	\N	\N	\N	\N
Kenya	2011	4.41	7.85	0.85	56.06	0.71	0.04	0.92	0.76	0.23	0.46	-0.76	-0.66	1.74	0.39	\N	0.44	0.60	\N	\N	\N	\N	\N	\N	\N
Kenya	2012	4.55	7.86	0.83	56.62	0.63	0.08	0.91	0.71	0.19	0.40	-0.81	-0.69	1.78	0.39	\N	0.44	0.56	\N	\N	\N	\N	\N	\N	\N
Kenya	2013	3.80	7.89	0.82	57.18	0.71	0.23	0.86	0.77	0.16	0.61	-0.69	-0.62	1.65	0.43	\N	0.44	0.47	\N	\N	\N	\N	\N	\N	\N
Kenya	2014	4.90	7.92	0.77	57.74	0.82	0.19	0.85	0.81	0.22	0.64	-0.71	-0.50	2.38	0.49	\N	0.44	0.66	\N	\N	\N	\N	\N	\N	\N
Kenya	2015	4.36	7.95	0.78	58.30	0.79	0.24	0.85	0.70	0.17	0.75	-0.70	-0.53	2.10	0.48	0.41	0.44	0.62	\N	\N	\N	\N	\N	\N	\N
Kenya	2016	4.40	7.98	0.71	58.90	0.75	0.31	0.83	0.74	0.23	0.58	-0.74	-0.49	2.43	0.55	\N	0.44	0.56	\N	\N	\N	\N	\N	\N	\N
Kenya	2017	4.48	8.00	0.71	59.50	0.85	0.25	0.85	0.79	0.23	0.64	-0.64	-0.48	2.53	0.57	\N	0.44	0.52	\N	\N	\N	\N	\N	\N	\N
Kenya	2018	4.66	8.03	0.71	60.10	0.82	0.31	0.84	0.76	0.24	0.68	\N	\N	2.75	0.59	\N	0.44	0.58	\N	\N	\N	\N	\N	\N	\N
Kosovo	2007	5.10	8.91	0.85	62.40	0.38	0.14	0.89	0.65	0.24	0.38	\N	-0.41	1.88	0.37	\N	0.29	\N	\N	\N	\N	\N	\N	\N	\N
Kosovo	2008	5.52	8.93	0.88	62.58	\N	0.08	0.85	\N	0.32	0.55	0.35	-0.43	1.89	0.34	\N	0.29	\N	\N	\N	\N	\N	\N	\N	\N
Kosovo	2009	5.89	8.95	0.83	62.81	0.51	0.19	0.97	0.60	0.17	\N	0.15	-0.37	1.87	0.32	0.32	0.29	0.32	0.22	\N	\N	\N	\N	\N	\N
Kosovo	2010	5.18	8.98	0.71	63.03	0.45	0.16	0.97	0.70	0.12	\N	-0.61	-0.47	2.00	0.39	0.33	0.29	0.41	0.15	\N	\N	\N	\N	\N	\N
Kosovo	2011	4.86	9.01	0.76	63.26	0.59	0.00	0.92	0.70	0.12	\N	-0.64	-0.43	2.07	0.43	0.28	0.29	0.41	0.07	\N	\N	\N	\N	\N	\N
Kosovo	2012	5.64	9.03	0.76	63.57	0.64	0.02	0.95	0.60	0.10	0.31	-0.63	-0.39	2.44	0.43	0.29	0.29	0.37	\N	\N	\N	\N	\N	\N	\N
Kosovo	2013	6.13	9.06	0.72	63.84	0.57	0.11	0.94	0.69	0.20	0.36	-0.61	-0.40	2.37	0.39	0.26	0.29	0.44	\N	\N	\N	\N	\N	\N	\N
Kosovo	2014	5.00	9.07	0.71	64.11	0.44	0.01	0.78	0.64	0.21	0.34	-0.27	-0.36	1.77	0.35	0.27	0.29	0.36	\N	\N	\N	\N	\N	\N	\N
Kosovo	2015	5.08	9.12	0.81	64.34	0.56	0.17	0.85	0.75	0.18	0.33	-0.18	-0.43	2.23	0.44	0.26	0.29	0.41	\N	\N	\N	\N	\N	\N	\N
Kosovo	2016	5.76	9.15	0.82	64.61	0.83	0.12	0.94	0.70	0.15	0.31	-0.22	-0.35	2.30	0.40	0.27	0.29	0.41	\N	\N	\N	\N	\N	\N	\N
Kosovo	2017	6.15	9.19	0.79	64.88	0.86	0.11	0.93	0.74	0.19	0.30	-0.16	-0.37	2.43	0.40	\N	0.29	0.40	\N	\N	\N	\N	\N	\N	\N
Kosovo	2018	6.39	\N	0.82	65.15	0.89	\N	0.92	0.78	0.17	0.35	\N	\N	2.56	0.40	\N	0.29	0.40	\N	\N	\N	\N	\N	\N	\N
Kuwait	2006	6.08	11.47	0.92	63.96	0.77	-0.27	0.33	0.85	0.18	0.80	-0.09	0.39	1.60	0.26	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.29
Kuwait	2009	6.59	11.31	0.93	64.44	0.82	-0.03	0.68	0.72	0.25	\N	-0.07	0.31	1.59	0.24	\N	\N	0.37	0.11	\N	\N	\N	\N	\N	0.29
Kuwait	2010	6.80	11.23	0.89	64.60	0.70	-0.07	0.49	0.72	0.20	\N	-0.04	0.31	1.48	0.22	\N	\N	0.34	\N	\N	\N	\N	\N	\N	0.29
Kuwait	2011	6.38	11.26	0.88	64.90	0.77	\N	0.56	0.79	0.18	\N	-0.12	0.19	1.50	0.23	\N	\N	0.42	\N	\N	\N	\N	\N	\N	0.29
Kuwait	2012	6.22	11.26	0.89	65.20	0.93	\N	\N	0.82	0.10	\N	-0.22	0.02	1.61	0.26	\N	\N	0.37	\N	\N	\N	\N	\N	\N	0.29
Kuwait	2013	6.48	11.21	0.86	65.50	0.75	\N	\N	0.75	0.28	\N	-0.25	0.01	2.07	0.32	\N	\N	0.43	\N	\N	\N	\N	\N	\N	0.29
Kuwait	2014	6.18	11.17	\N	65.80	\N	\N	\N	\N	\N	\N	-0.25	-0.13	2.29	0.37	\N	\N	0.52	\N	\N	\N	\N	\N	\N	0.29
Kuwait	2015	6.15	11.13	0.82	66.10	0.82	0.05	\N	0.72	0.32	\N	-0.44	-0.11	2.28	0.37	\N	\N	0.54	\N	\N	\N	\N	\N	\N	0.29
Kuwait	2016	5.95	11.14	0.85	66.30	0.84	-0.11	\N	0.69	0.31	\N	-0.34	-0.12	2.36	0.40	\N	\N	0.54	\N	\N	\N	\N	\N	\N	0.29
Kuwait	2017	6.09	11.09	0.85	66.50	0.88	-0.04	\N	0.69	0.31	\N	-0.32	-0.11	2.36	0.39	\N	\N	0.59	\N	\N	\N	\N	\N	\N	0.29
Kyrgyzstan	2006	4.64	7.79	0.84	59.98	0.68	-0.12	0.88	0.65	0.16	0.48	-1.07	-1.03	1.76	0.38	0.37	0.30	\N	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2007	4.70	7.86	0.83	60.26	0.68	-0.07	0.93	0.66	0.13	0.45	-0.98	-0.96	1.49	0.32	0.34	0.30	\N	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2008	4.74	7.93	0.79	60.54	0.72	-0.08	0.92	0.62	0.15	0.46	-0.83	-0.93	1.65	0.35	0.32	0.30	\N	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2009	5.07	7.95	0.85	60.82	0.70	-0.12	0.90	0.61	0.16	0.64	-0.82	-0.98	1.55	0.31	0.30	0.30	0.44	0.36	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2010	5.00	7.93	0.89	61.10	0.72	-0.05	0.93	0.65	0.12	0.30	-0.99	-0.84	1.55	0.31	0.30	0.30	0.38	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2011	4.92	7.98	0.89	61.52	0.75	-0.13	0.93	0.68	0.15	0.44	-0.89	-0.81	1.56	0.32	0.28	0.30	0.34	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2012	5.21	7.96	0.86	61.94	0.70	-0.06	0.89	0.69	0.18	0.51	-0.76	-0.82	1.58	0.30	0.27	0.30	0.33	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2013	5.40	8.05	0.85	62.36	0.76	-0.06	0.90	0.72	0.13	0.44	-0.73	-0.81	1.73	0.32	0.29	0.30	0.37	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2014	5.25	8.07	0.90	62.78	0.74	0.38	0.90	0.73	0.19	0.37	-0.63	-0.84	1.97	0.38	0.27	0.30	0.41	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2015	4.91	8.08	0.86	63.20	0.81	0.22	0.86	0.77	0.17	0.58	-0.64	-0.89	1.84	0.38	0.29	0.30	0.42	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2016	4.86	8.10	0.91	63.50	0.81	0.08	0.92	0.78	0.13	0.53	-0.53	-0.84	1.92	0.40	0.27	0.30	0.40	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2017	5.63	8.13	0.88	63.80	0.86	0.16	0.87	0.76	0.16	0.56	-0.44	-0.76	1.90	0.34	\N	0.30	0.38	\N	\N	\N	\N	0.17	\N	0.38
Kyrgyzstan	2018	5.30	8.15	0.90	64.10	0.94	0.29	0.91	0.76	0.20	0.50	\N	\N	1.90	0.36	\N	0.30	0.39	\N	\N	\N	\N	0.17	\N	0.38
Laos	2006	5.08	8.11	0.81	53.92	0.93	0.44	0.69	0.89	0.16	0.92	-0.91	-1.14	0.86	0.17	\N	0.35	\N	\N	\N	\N	\N	\N	\N	\N
Laos	2007	5.36	8.17	0.79	54.44	0.87	0.48	0.58	0.86	0.14	0.91	-0.95	-1.08	1.15	0.21	0.35	0.35	\N	\N	\N	\N	\N	\N	\N	\N
Laos	2008	5.04	8.22	0.81	54.96	0.89	0.42	0.64	0.83	0.20	0.92	-0.85	-1.02	1.10	0.22	\N	0.35	\N	\N	\N	\N	\N	\N	\N	\N
Laos	2011	4.70	8.41	0.69	56.30	0.88	0.46	0.59	0.90	0.23	0.98	-0.87	-1.00	1.00	0.21	\N	0.35	0.52	\N	\N	\N	\N	\N	\N	\N
Laos	2012	4.88	8.48	0.69	56.60	\N	0.23	\N	0.92	0.39	\N	-0.80	-0.88	1.70	0.35	0.36	0.35	0.61	\N	\N	\N	\N	\N	\N	\N
Laos	2017	4.62	8.76	0.71	58.30	0.89	0.07	0.59	0.87	0.34	0.84	-0.66	-0.72	1.88	0.41	\N	0.35	0.59	\N	\N	\N	\N	\N	\N	\N
Laos	2018	4.86	8.81	0.70	58.70	0.91	0.14	0.63	0.85	0.33	\N	\N	\N	2.16	0.44	\N	0.35	0.55	\N	\N	\N	\N	\N	\N	\N
Latvia	2006	4.71	9.89	0.88	63.16	0.64	-0.23	0.94	0.65	0.23	0.29	0.84	0.68	1.66	0.35	0.36	0.36	\N	\N	\N	\N	0.24	\N	\N	\N
Latvia	2007	4.67	10.00	0.84	63.52	0.70	-0.17	0.92	0.67	0.25	0.28	0.70	0.65	1.70	0.36	0.38	0.36	\N	\N	\N	\N	0.24	\N	\N	\N
Latvia	2008	5.15	9.97	0.86	63.88	0.63	-0.21	0.93	0.64	0.21	0.19	0.49	0.66	1.80	0.35	0.37	0.36	\N	\N	\N	\N	0.24	\N	\N	\N
Latvia	2009	4.67	9.83	0.81	64.24	0.44	-0.18	0.94	0.53	0.24	0.10	0.60	0.66	1.86	0.40	0.36	0.36	0.35	0.13	\N	\N	0.24	\N	\N	\N
Latvia	2011	4.97	9.89	0.84	64.86	0.56	-0.01	0.93	0.56	0.22	0.11	0.53	0.67	1.91	0.38	0.36	0.36	0.33	\N	\N	\N	0.24	\N	\N	\N
Latvia	2012	5.13	9.94	0.85	65.12	0.56	-0.04	0.89	0.56	0.23	0.19	0.61	0.72	1.89	0.37	0.35	0.36	0.32	\N	\N	\N	0.24	\N	\N	\N
Latvia	2013	5.07	9.98	0.83	65.38	0.63	-0.08	0.84	0.64	0.23	0.23	0.68	0.76	1.72	0.34	0.36	0.36	0.31	\N	\N	\N	0.24	\N	\N	\N
Latvia	2014	5.73	10.01	0.88	65.64	0.67	-0.05	0.80	0.65	0.23	0.23	0.67	0.85	1.96	0.34	0.35	0.36	0.41	\N	\N	\N	0.24	\N	\N	\N
Latvia	2015	5.88	10.04	0.88	65.90	0.66	-0.08	0.81	0.61	0.23	0.30	0.65	0.86	1.73	0.29	0.34	0.36	0.37	\N	\N	\N	0.24	\N	\N	\N
Latvia	2016	5.94	10.08	0.92	66.20	0.69	-0.16	0.87	0.65	0.23	0.32	0.66	0.87	1.71	0.29	\N	0.36	0.38	\N	\N	\N	0.24	\N	\N	\N
Latvia	2017	5.98	10.13	0.90	66.50	0.70	-0.16	0.80	0.62	0.23	0.26	0.63	0.88	1.81	0.30	\N	0.36	0.36	\N	\N	\N	0.24	\N	\N	\N
Latvia	2018	5.90	10.18	0.91	66.80	0.61	-0.22	0.80	0.59	0.19	0.20	\N	\N	1.72	0.29	\N	0.36	0.33	\N	\N	\N	0.24	\N	\N	\N
Lebanon	2005	5.49	9.41	0.80	64.60	0.70	\N	0.95	0.58	0.29	\N	-0.64	-0.30	2.27	0.41	\N	0.32	\N	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2006	4.65	9.41	0.85	64.72	0.67	0.07	0.90	0.55	0.32	0.40	-1.10	-0.51	2.43	0.52	\N	0.32	\N	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2008	4.59	9.59	0.72	64.96	0.52	0.03	0.93	0.53	0.37	0.31	-1.15	-0.54	2.50	0.54	\N	0.32	\N	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2009	5.21	9.67	0.74	65.08	0.66	0.07	0.94	0.53	0.40	0.37	-0.96	-0.51	2.37	0.45	\N	0.32	0.39	0.07	\N	\N	\N	\N	\N	0.10
Lebanon	2010	5.03	9.71	0.72	65.20	0.68	0.07	0.95	0.53	0.34	\N	-0.98	-0.45	2.30	0.46	\N	0.32	0.39	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2011	5.19	9.66	0.73	65.28	0.66	0.01	0.91	0.58	0.32	\N	-0.97	-0.48	2.19	0.42	0.32	0.32	0.39	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2012	4.57	9.62	0.71	65.36	0.62	0.00	0.86	0.50	0.34	\N	-1.03	-0.52	2.33	0.51	\N	0.32	0.37	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2013	4.98	9.58	0.71	65.44	0.65	0.00	0.92	0.50	0.41	\N	-1.05	-0.54	2.32	0.47	\N	0.32	0.38	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2014	5.23	9.53	0.76	65.52	0.66	-0.01	0.94	0.56	0.27	0.24	-1.06	-0.61	2.28	0.44	\N	0.32	0.34	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2015	5.17	9.50	0.74	65.60	0.60	0.08	0.89	0.57	0.24	0.19	-1.08	-0.62	2.19	0.42	\N	0.32	0.32	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2016	5.27	9.49	0.83	66.10	0.66	0.03	0.85	0.55	0.26	0.14	-1.07	-0.67	2.21	0.42	\N	0.32	0.32	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2017	5.15	9.50	0.78	66.60	0.60	-0.07	0.91	0.52	0.24	0.22	-1.09	-0.66	1.93	0.37	\N	0.32	0.33	\N	\N	\N	\N	\N	\N	0.10
Lebanon	2018	5.17	9.51	0.83	67.10	0.61	-0.07	0.91	0.46	0.27	0.22	\N	\N	2.15	0.42	\N	0.32	0.32	\N	\N	\N	\N	\N	\N	0.10
Lesotho	2011	4.90	7.82	0.82	45.74	0.62	-0.10	0.77	0.79	0.17	0.40	0.15	-0.25	2.49	0.51	\N	0.53	0.65	\N	\N	\N	\N	\N	\N	\N
Lesotho	2016	3.81	7.91	0.80	46.60	0.73	-0.10	0.74	0.73	0.27	0.61	-0.10	-0.34	3.10	0.81	\N	0.53	0.68	\N	\N	\N	\N	\N	\N	\N
Lesotho	2017	3.80	7.96	0.77	47.30	0.76	-0.15	0.80	0.75	0.26	0.70	-0.11	-0.37	2.84	0.75	\N	0.53	0.59	\N	\N	\N	\N	\N	\N	\N
Liberia	2007	3.70	6.49	0.59	49.14	0.79	0.16	0.78	0.61	0.44	0.73	-0.69	-0.94	1.74	0.47	0.37	0.35	\N	\N	\N	\N	\N	\N	\N	\N
Liberia	2008	4.22	6.51	0.62	49.96	0.72	0.01	0.84	0.59	0.26	0.51	-0.74	-1.11	1.53	0.36	\N	0.35	\N	\N	\N	\N	\N	\N	\N	\N
Liberia	2010	4.20	6.55	0.83	51.60	0.82	0.01	0.82	0.60	0.22	0.54	-0.34	-0.96	1.66	0.40	\N	0.35	\N	0.12	\N	\N	\N	\N	\N	\N
Liberia	2014	4.57	6.69	0.71	53.28	0.59	0.02	0.87	0.54	0.44	0.35	-0.45	-0.95	2.95	0.64	0.33	0.35	\N	\N	\N	\N	\N	\N	\N	\N
Liberia	2015	2.70	6.67	0.64	53.70	0.67	-0.01	0.90	0.51	0.39	0.47	-0.52	-0.94	2.76	1.02	\N	0.35	\N	\N	\N	\N	\N	\N	\N	\N
Liberia	2016	3.35	6.62	0.64	54.50	0.76	0.08	0.90	0.64	0.51	0.54	-0.27	-0.99	2.63	0.78	\N	0.35	0.56	\N	\N	\N	\N	\N	\N	\N
Liberia	2017	4.42	6.62	0.68	55.30	0.73	0.04	0.87	0.67	0.39	0.55	-0.22	-0.99	3.39	0.77	\N	0.35	0.59	\N	\N	\N	\N	\N	\N	\N
Liberia	2018	4.13	6.63	0.73	56.10	0.77	0.10	0.87	0.66	0.44	0.70	\N	\N	3.72	0.90	\N	0.35	0.66	\N	\N	\N	\N	\N	\N	\N
Libya	2012	5.75	10.12	0.85	62.66	0.71	-0.07	0.79	0.69	0.32	\N	-1.24	-1.41	2.28	0.40	\N	\N	0.35	\N	\N	\N	\N	\N	\N	0.10
Libya	2015	5.62	9.61	0.87	62.30	0.77	-0.08	\N	0.70	0.37	\N	-1.77	-1.78	2.63	0.47	\N	\N	0.52	\N	\N	\N	\N	\N	\N	0.10
Libya	2016	5.43	9.57	0.88	62.30	0.82	-0.12	\N	0.72	0.38	\N	-1.86	-1.90	2.69	0.49	\N	\N	0.48	\N	\N	\N	\N	\N	\N	0.10
Libya	2017	5.65	9.79	0.82	62.30	0.78	-0.05	0.67	0.70	0.38	\N	-1.88	-1.84	2.51	0.44	\N	\N	0.59	\N	\N	\N	\N	\N	\N	0.10
Libya	2018	5.49	\N	0.82	62.30	0.78	\N	0.65	0.71	0.40	\N	\N	\N	2.47	0.45	\N	\N	0.60	\N	\N	\N	\N	\N	\N	0.10
Lithuania	2006	5.95	9.91	0.93	63.14	0.57	-0.30	0.97	0.62	0.25	0.21	0.87	0.64	1.82	0.31	0.34	0.36	\N	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2007	5.81	10.03	0.94	63.48	0.59	-0.29	0.97	0.59	0.28	0.27	0.85	0.66	1.95	0.34	0.35	0.36	\N	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2008	5.55	10.07	0.91	63.82	0.62	-0.26	0.96	0.53	0.28	0.16	0.80	0.65	1.99	0.36	0.36	0.36	\N	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2009	5.47	9.92	0.93	64.16	0.50	-0.31	0.98	0.53	0.27	0.13	0.77	0.65	2.17	0.40	0.37	0.36	0.32	0.26	\N	\N	0.21	\N	\N	\N
Lithuania	2010	5.07	9.96	0.88	64.50	0.52	-0.28	0.96	0.47	0.27	0.11	0.82	0.72	1.98	0.39	0.34	0.36	0.33	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2011	5.43	10.04	0.91	64.70	0.57	-0.15	0.96	0.57	0.27	0.18	0.77	0.68	1.84	0.34	0.33	0.36	0.32	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2012	5.77	10.09	0.92	64.90	0.50	-0.28	0.96	0.58	0.28	0.15	0.86	0.80	1.85	0.32	0.35	0.36	0.31	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2013	5.60	10.13	0.91	65.10	0.56	-0.24	0.94	0.58	0.29	0.38	0.95	0.81	1.71	0.31	0.35	0.36	0.29	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2014	6.13	10.18	0.91	65.30	0.51	-0.27	0.96	0.62	0.29	0.34	0.85	0.92	1.87	0.31	0.38	0.36	0.34	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2015	5.71	10.21	0.93	65.50	0.64	-0.26	0.92	0.59	0.28	0.37	0.87	1.02	1.92	0.34	0.37	0.36	0.35	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2016	5.87	10.24	0.94	66.10	0.61	-0.27	0.95	0.59	0.25	0.28	0.91	0.99	1.91	0.32	\N	0.36	0.36	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2017	6.27	10.29	0.93	66.70	0.75	-0.18	0.79	0.61	0.20	0.32	0.88	0.92	2.18	0.35	\N	0.36	0.43	\N	\N	\N	0.21	\N	\N	\N
Lithuania	2018	6.31	10.34	0.93	67.30	0.70	-0.24	0.85	0.52	0.21	0.32	\N	\N	1.95	0.31	\N	0.36	0.33	\N	\N	\N	0.21	\N	\N	\N
Luxembourg	2009	6.96	11.40	0.94	71.44	0.94	0.12	0.43	0.80	0.24	0.82	1.50	1.80	1.61	0.23	0.31	0.32	\N	\N	\N	\N	\N	\N	\N	\N
Luxembourg	2010	7.10	11.43	0.95	71.70	0.91	0.09	0.42	0.81	0.22	0.77	1.52	1.82	1.68	0.24	0.31	0.32	0.34	0.26	\N	\N	\N	\N	\N	\N
Luxembourg	2011	7.10	11.43	0.93	71.88	0.96	0.10	0.39	0.84	0.20	0.77	1.46	1.90	1.57	0.22	0.32	0.32	0.36	\N	\N	\N	\N	\N	\N	\N
Luxembourg	2012	6.96	11.40	0.91	72.06	0.92	0.05	0.40	0.82	0.23	0.74	1.49	1.84	1.78	0.26	0.34	0.32	0.35	\N	\N	\N	\N	\N	\N	\N
Luxembourg	2013	7.13	11.41	0.92	72.24	0.79	-0.06	0.30	0.64	0.18	0.74	1.48	1.84	1.34	0.19	0.32	0.32	0.34	\N	\N	\N	\N	\N	\N	\N
Luxembourg	2014	6.89	11.45	0.88	72.42	0.94	0.10	0.37	0.80	0.17	0.66	1.47	1.82	1.54	0.22	0.31	0.32	0.35	\N	\N	\N	\N	\N	\N	\N
Luxembourg	2015	6.70	11.45	0.93	72.60	0.93	0.05	0.38	0.76	0.19	0.69	1.49	1.84	1.51	0.22	0.34	0.32	0.29	\N	\N	\N	\N	\N	\N	\N
Luxembourg	2016	6.97	11.46	0.94	72.60	0.88	0.01	0.36	0.76	0.19	0.68	1.46	1.82	1.39	0.20	\N	0.32	0.31	\N	\N	\N	\N	\N	\N	\N
Luxembourg	2017	7.06	11.45	0.91	72.60	0.90	0.04	0.33	0.77	0.18	0.74	1.43	1.77	1.42	0.20	\N	0.32	0.29	\N	\N	\N	\N	\N	\N	\N
Luxembourg	2018	7.24	11.45	0.90	72.60	0.88	-0.03	0.39	0.75	0.20	0.76	\N	\N	1.34	0.19	\N	0.32	0.33	\N	\N	\N	\N	\N	\N	\N
Macedonia	2007	4.49	9.26	0.81	66.14	0.44	0.08	0.87	0.60	0.25	0.40	-0.07	-0.22	2.20	0.49	\N	0.39	\N	\N	\N	\N	0.08	0.13	\N	\N
Macedonia	2009	4.43	9.31	0.73	66.38	0.55	-0.04	0.84	0.58	0.37	\N	-0.07	-0.04	1.99	0.45	0.43	0.39	0.40	0.12	\N	\N	0.08	0.13	\N	\N
Macedonia	2010	4.18	9.34	0.69	66.50	0.51	-0.06	0.86	0.57	0.31	\N	-0.20	-0.03	2.17	0.52	0.40	0.39	0.39	0.09	\N	\N	0.08	0.13	\N	\N
Macedonia	2011	4.90	9.36	0.78	66.58	0.61	-0.09	0.87	0.59	0.36	\N	-0.33	-0.03	2.31	0.47	0.40	0.39	0.49	0.12	\N	\N	0.08	0.13	\N	\N
Macedonia	2012	4.64	9.35	0.80	66.66	0.61	-0.08	0.92	0.64	0.42	0.37	-0.26	0.01	2.17	0.47	0.39	0.39	0.38	\N	\N	\N	0.08	0.13	\N	\N
Macedonia	2013	5.19	9.38	0.83	66.74	0.64	0.02	0.86	0.58	0.33	0.43	-0.24	0.01	2.31	0.45	0.37	0.39	0.38	\N	\N	\N	0.08	0.13	\N	\N
Macedonia	2014	5.20	9.42	0.79	66.82	0.64	0.03	0.86	0.64	0.31	0.44	0.06	0.13	2.37	0.46	0.36	0.39	0.41	\N	\N	\N	0.08	0.13	\N	\N
Macedonia	2015	4.98	9.45	0.77	66.90	0.66	-0.05	0.82	0.62	0.30	0.37	-0.23	0.03	2.26	0.45	\N	0.39	0.42	\N	\N	\N	0.08	0.13	\N	\N
Macedonia	2016	5.35	9.48	0.87	67.10	0.71	0.08	0.87	0.64	0.29	0.26	-0.29	-0.01	2.18	0.41	\N	0.39	0.52	\N	\N	\N	0.08	0.13	\N	\N
Macedonia	2017	5.23	9.48	0.80	67.30	0.75	-0.06	0.86	0.50	0.30	0.44	-0.19	0.02	2.11	0.40	\N	0.39	0.37	\N	\N	\N	0.08	0.13	\N	\N
Macedonia	2018	5.24	9.50	0.85	67.50	0.74	-0.04	0.91	0.59	0.30	0.40	\N	\N	2.15	0.41	\N	0.39	0.34	\N	\N	\N	0.08	0.13	\N	\N
Madagascar	2006	3.98	7.26	0.71	54.04	\N	-0.03	\N	0.70	0.16	0.71	0.04	-0.35	1.44	0.36	\N	0.43	\N	\N	\N	\N	\N	\N	\N	\N
Madagascar	2008	4.64	7.33	0.78	54.92	0.33	-0.10	0.77	0.61	0.21	0.78	-0.40	-0.42	1.39	0.30	\N	0.43	\N	\N	\N	\N	\N	\N	\N	\N
Madagascar	2011	4.38	7.22	0.82	56.22	0.55	-0.06	0.90	0.51	0.23	0.65	-0.79	-0.73	1.34	0.31	\N	0.43	0.49	\N	\N	\N	\N	\N	\N	\N
Madagascar	2012	3.55	7.22	0.67	56.64	0.49	-0.05	0.85	0.69	0.19	0.35	-0.71	-0.81	1.54	0.43	0.43	0.43	0.54	\N	\N	\N	\N	\N	\N	\N
Madagascar	2013	3.82	7.22	0.67	57.06	0.48	-0.01	0.87	0.73	0.24	0.40	-0.71	-0.86	1.68	0.44	\N	0.43	0.53	\N	\N	\N	\N	\N	\N	\N
Madagascar	2014	3.68	7.22	0.66	57.48	0.53	-0.02	0.79	0.75	0.19	0.51	-0.53	-0.89	1.72	0.47	\N	0.43	0.45	\N	\N	\N	\N	\N	\N	\N
Madagascar	2015	3.59	7.23	0.65	57.90	0.54	-0.04	0.86	0.80	0.23	0.48	-0.40	-0.90	1.50	0.42	\N	0.43	0.52	\N	\N	\N	\N	\N	\N	\N
Madagascar	2016	3.66	7.24	0.75	58.30	0.57	-0.07	0.86	0.81	0.20	0.49	-0.30	-0.90	1.53	0.42	\N	0.43	0.48	\N	\N	\N	\N	\N	\N	\N
Madagascar	2017	4.08	7.26	0.63	58.70	0.57	-0.03	0.85	0.75	0.37	0.54	-0.34	-0.93	2.33	0.57	\N	0.43	0.58	\N	\N	\N	\N	\N	\N	\N
Madagascar	2018	4.07	7.28	0.67	59.10	0.55	0.01	0.89	0.75	0.36	0.44	\N	\N	2.57	0.63	\N	0.43	0.58	\N	\N	\N	\N	\N	\N	\N
Malawi	2006	3.83	6.75	0.55	44.88	0.77	0.19	0.68	0.67	0.22	0.69	-0.07	-0.53	2.09	0.54	\N	0.43	\N	\N	\N	\N	\N	\N	\N	\N
Malawi	2007	4.89	6.81	0.60	46.26	0.91	0.19	0.69	0.73	0.18	0.76	-0.09	-0.41	1.81	0.37	\N	0.43	\N	\N	\N	\N	\N	\N	\N	\N
Malawi	2009	5.15	6.90	0.72	49.02	0.88	0.17	0.69	0.77	0.13	0.83	-0.05	-0.36	2.45	0.48	\N	0.43	0.55	0.33	\N	\N	\N	\N	\N	\N
Malawi	2011	3.95	6.96	0.61	51.42	0.73	0.09	0.85	0.71	0.27	0.42	-0.16	-0.42	2.51	0.64	\N	0.43	0.54	\N	\N	\N	\N	\N	\N	\N
Malawi	2012	4.28	6.95	0.60	52.44	0.64	0.16	0.89	0.82	0.20	0.47	-0.10	-0.47	2.84	0.66	\N	0.43	0.66	\N	\N	\N	\N	\N	\N	\N
Malawi	2013	4.04	6.97	0.56	53.46	0.75	0.07	0.86	0.81	0.25	0.64	-0.19	-0.48	2.63	0.65	\N	0.43	0.68	\N	\N	\N	\N	\N	\N	\N
Malawi	2014	4.56	6.99	0.51	54.48	0.79	0.05	0.82	0.70	0.26	0.62	0.01	-0.62	2.86	0.63	\N	0.43	0.66	\N	\N	\N	\N	\N	\N	\N
Malawi	2015	3.87	6.99	0.49	55.50	0.80	0.05	0.83	0.63	0.26	0.57	0.01	-0.64	2.54	0.66	\N	0.43	0.66	\N	\N	\N	\N	\N	\N	\N
Malawi	2016	3.48	6.99	0.52	56.20	0.81	0.06	0.82	0.60	0.32	0.55	-0.07	-0.68	2.23	0.64	\N	0.43	0.53	\N	\N	\N	\N	\N	\N	\N
Malawi	2017	3.42	7.00	0.56	56.90	0.85	0.02	0.73	0.61	0.31	0.62	-0.15	-0.61	2.76	0.81	\N	0.43	0.57	\N	\N	\N	\N	\N	\N	\N
Malawi	2018	3.33	7.01	0.53	57.60	0.80	0.07	0.77	0.59	0.36	0.57	\N	\N	3.13	0.94	\N	0.43	0.70	\N	\N	\N	\N	\N	\N	\N
Malaysia	2006	6.01	9.87	0.87	64.96	0.84	0.19	0.74	0.75	0.24	0.78	-0.13	0.63	1.61	0.27	\N	0.44	\N	\N	\N	\N	\N	\N	0.09	0.09
Malaysia	2007	6.24	9.91	0.87	65.12	0.84	0.07	0.80	0.78	0.16	0.75	-0.16	0.59	1.61	0.26	0.46	0.44	\N	\N	\N	\N	\N	\N	0.09	0.09
Malaysia	2008	5.81	9.94	0.80	65.28	0.78	0.03	0.88	0.82	0.19	0.66	-0.23	0.43	1.63	0.28	0.46	0.44	\N	\N	\N	\N	\N	\N	0.09	0.09
Malaysia	2009	5.38	9.90	0.79	65.44	0.87	-0.02	0.86	0.82	0.16	0.82	-0.27	0.42	1.59	0.30	\N	0.44	0.47	0.08	\N	\N	\N	\N	0.09	0.09
Malaysia	2010	5.58	9.96	0.84	65.60	0.77	0.02	0.84	0.83	0.19	0.73	-0.18	0.57	1.50	0.27	\N	0.44	0.43	0.14	\N	\N	\N	\N	0.09	0.09
Malaysia	2011	5.79	9.99	0.77	65.76	0.84	-0.03	0.84	0.89	0.15	0.79	-0.20	0.53	1.64	0.28	0.44	0.44	0.44	\N	\N	\N	\N	\N	0.09	0.09
Malaysia	2012	5.91	10.03	0.84	65.92	0.85	0.00	0.85	0.87	0.18	0.76	-0.18	0.55	1.56	0.26	\N	0.44	0.45	\N	\N	\N	\N	\N	0.09	0.09
Malaysia	2013	5.77	10.05	0.83	66.08	0.79	0.25	0.76	0.74	0.32	0.75	-0.14	0.61	2.15	0.37	0.41	0.44	0.51	\N	\N	\N	\N	\N	0.09	0.09
Malaysia	2014	5.96	10.09	0.86	66.24	0.81	0.23	0.84	0.77	0.26	0.63	-0.05	0.74	2.21	0.37	\N	0.44	0.50	\N	\N	\N	\N	\N	0.09	0.09
Malaysia	2015	6.32	10.13	0.82	66.40	0.67	0.21	0.84	0.77	0.31	0.44	-0.07	0.61	2.02	0.32	0.41	0.44	0.39	\N	\N	\N	\N	\N	0.09	0.09
Malaysia	2018	5.34	10.24	0.79	67.00	0.87	0.11	0.89	0.82	0.20	0.73	\N	\N	1.64	0.31	\N	0.44	0.44	\N	\N	\N	\N	\N	0.09	0.09
Mali	2006	4.01	7.49	0.76	45.92	0.56	-0.07	0.76	0.77	0.21	0.65	0.36	-0.49	1.63	0.41	0.39	0.37	\N	\N	\N	\N	\N	\N	0.17	\N
Mali	2008	4.11	7.50	0.75	47.16	0.49	-0.01	0.92	0.68	0.16	0.32	0.21	-0.51	1.50	0.37	\N	0.37	\N	\N	\N	\N	\N	\N	0.17	\N
Mali	2009	3.98	7.51	0.73	47.78	0.63	0.01	0.82	0.76	0.15	0.48	0.00	-0.56	1.62	0.41	0.33	0.37	0.50	0.45	\N	\N	\N	\N	0.17	\N
Mali	2010	3.76	7.53	0.75	48.40	0.75	-0.03	0.81	0.80	0.16	0.71	-0.01	-0.62	1.54	0.41	\N	0.37	0.51	\N	\N	\N	\N	\N	0.17	\N
Mali	2011	4.67	7.54	0.80	48.76	0.82	-0.10	0.73	0.76	0.13	0.71	-0.27	-0.59	1.77	0.38	\N	0.37	0.49	\N	\N	\N	\N	\N	0.17	\N
Mali	2012	4.31	7.50	0.82	49.12	0.70	-0.09	0.79	0.68	0.11	0.49	-1.26	-0.73	2.04	0.47	\N	0.37	0.46	\N	\N	\N	\N	\N	0.17	\N
Mali	2013	3.68	7.49	0.82	49.48	0.66	-0.05	0.75	0.72	0.19	0.60	-1.00	-0.73	1.93	0.52	\N	0.37	0.53	\N	\N	\N	\N	\N	0.17	\N
Mali	2014	3.97	7.53	0.84	49.84	0.65	-0.04	0.66	0.74	0.19	0.62	-0.94	-0.77	1.85	0.47	\N	0.37	0.53	\N	\N	\N	\N	\N	0.17	\N
Mali	2015	4.58	7.56	0.83	50.20	0.63	-0.07	0.80	0.71	0.24	0.57	-0.95	-0.73	1.78	0.39	\N	0.37	0.55	\N	\N	\N	\N	\N	0.17	\N
Mali	2016	4.02	7.59	0.84	50.70	0.70	-0.07	0.86	0.81	0.31	0.52	-0.90	-0.76	1.77	0.44	\N	0.37	0.44	\N	\N	\N	\N	\N	0.17	\N
Mali	2017	4.74	7.61	0.74	51.20	0.75	-0.07	0.86	0.74	0.39	0.50	-1.08	-0.73	2.51	0.53	\N	0.37	0.55	\N	\N	\N	\N	\N	0.17	\N
Mali	2018	4.42	7.63	0.69	51.70	0.74	-0.03	0.79	0.77	0.37	0.51	\N	\N	2.63	0.60	\N	0.37	0.60	\N	\N	\N	\N	\N	0.17	\N
Malta	2009	6.33	10.22	0.92	71.38	0.80	0.46	\N	0.71	0.36	0.44	1.20	1.20	2.26	0.36	0.30	0.29	\N	\N	\N	\N	\N	\N	\N	\N
Malta	2010	5.77	10.25	0.91	71.60	0.80	0.28	\N	0.70	0.38	0.41	1.21	1.21	2.28	0.40	0.29	0.29	0.52	0.16	\N	\N	\N	\N	\N	\N
Malta	2011	6.15	10.26	0.92	71.72	0.88	0.29	\N	0.74	0.34	0.49	1.10	1.15	2.09	0.34	0.29	0.29	0.50	\N	\N	\N	\N	\N	\N	\N
Malta	2012	5.96	10.28	0.92	71.84	0.86	0.35	\N	0.74	0.39	0.50	1.12	1.22	2.18	0.37	0.29	0.29	0.40	\N	\N	\N	\N	\N	\N	\N
Malta	2013	6.38	10.31	0.94	71.96	0.91	0.40	\N	0.66	0.37	0.66	1.10	1.22	1.94	0.30	0.29	0.29	0.40	\N	\N	\N	\N	\N	\N	\N
Malta	2014	6.45	10.37	0.94	72.08	0.90	0.40	0.67	0.65	0.35	0.72	1.15	1.04	1.92	0.30	0.29	0.29	0.42	\N	\N	\N	\N	\N	\N	\N
Malta	2015	6.61	10.44	0.92	72.20	0.91	0.34	0.66	0.68	0.36	0.73	1.13	1.01	1.85	0.28	0.29	0.29	0.38	\N	\N	\N	\N	\N	\N	\N
Malta	2016	6.59	10.46	0.93	72.20	0.92	0.34	0.70	0.69	0.36	0.62	1.14	0.96	1.88	0.28	\N	0.29	0.40	\N	\N	\N	\N	\N	\N	\N
Malta	2017	6.68	10.51	0.94	72.20	0.92	0.25	0.69	0.72	0.30	0.75	1.22	1.04	1.99	0.30	\N	0.29	0.42	\N	\N	\N	\N	\N	\N	\N
Malta	2018	6.91	\N	0.93	72.20	0.93	\N	0.60	0.72	0.30	0.76	\N	\N	1.82	0.26	\N	0.29	0.39	\N	\N	\N	\N	\N	\N	\N
Mauritania	2007	4.15	8.15	0.68	53.66	0.57	-0.05	0.59	0.73	0.17	0.52	-0.47	-0.66	1.90	0.46	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritania	2008	4.25	8.13	0.67	53.94	0.59	0.00	0.84	0.73	0.18	0.43	-0.79	-0.89	1.61	0.38	0.36	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritania	2009	4.50	8.09	0.82	54.22	0.74	0.06	0.85	0.74	0.17	0.37	-0.90	-0.75	1.58	0.35	\N	0.37	\N	0.31	\N	\N	\N	\N	\N	\N
Mauritania	2010	4.77	8.11	0.86	54.50	0.67	0.07	0.73	0.78	0.13	0.49	-0.99	-0.85	1.57	0.33	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritania	2011	4.78	8.12	0.75	54.82	0.57	0.07	0.75	0.76	0.17	0.43	-1.05	-0.82	1.69	0.35	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritania	2012	4.67	8.15	0.76	55.14	0.49	0.00	0.71	0.78	0.16	0.38	-1.02	-0.81	1.36	0.29	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritania	2013	4.20	8.18	0.74	55.46	0.60	-0.06	0.68	0.79	0.20	0.45	-0.99	-0.87	1.62	0.39	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritania	2014	4.48	8.20	0.85	55.78	0.47	-0.04	0.59	0.75	0.16	0.35	-0.74	-0.90	1.77	0.40	0.33	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritania	2015	3.92	8.19	0.87	56.10	0.45	0.07	0.72	0.82	0.19	0.29	-0.76	-0.92	1.52	0.39	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritania	2016	4.47	8.18	0.78	56.40	0.47	-0.16	0.84	0.73	0.22	0.21	-0.76	-0.74	2.18	0.49	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritania	2017	4.68	8.19	0.78	56.70	0.53	-0.14	0.78	0.64	0.27	0.29	-0.71	-0.71	2.13	0.46	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritania	2018	4.31	8.20	0.80	57.00	0.47	-0.10	0.71	0.66	0.28	0.26	\N	\N	2.12	0.49	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Mauritius	2011	5.48	9.71	0.80	64.70	0.85	0.18	0.85	0.74	0.25	0.67	0.87	0.79	1.96	0.36	\N	0.36	0.35	\N	\N	\N	\N	\N	\N	\N
Mauritius	2014	5.65	9.81	0.78	65.30	0.82	0.17	0.88	0.81	0.22	0.56	0.80	0.86	1.96	0.35	\N	0.36	0.39	\N	\N	\N	\N	\N	\N	\N
Mauritius	2016	5.61	9.88	0.84	65.80	0.82	0.13	0.89	0.78	0.25	0.57	0.91	0.74	2.09	0.37	\N	0.36	0.39	\N	\N	\N	\N	\N	\N	\N
Mauritius	2017	6.17	9.92	0.91	66.10	0.91	0.08	0.82	0.75	0.17	0.61	0.89	0.69	2.25	0.36	\N	0.36	0.42	\N	\N	\N	\N	\N	\N	\N
Mauritius	2018	5.88	9.96	0.91	66.40	0.87	-0.08	0.79	0.77	0.16	0.62	\N	\N	2.56	0.43	\N	0.36	0.43	\N	\N	\N	\N	\N	\N	\N
Togo	2018	4.02	7.29	0.60	54.70	0.61	-0.01	0.81	0.61	0.45	0.32	\N	\N	2.11	0.52	\N	0.44	0.44	\N	\N	\N	\N	\N	\N	\N
Mexico	2005	6.58	9.67	0.90	66.20	0.81	\N	0.76	0.82	0.22	0.43	-0.12	-0.09	2.24	0.34	0.49	0.47	\N	\N	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2007	6.53	9.70	0.88	66.32	0.67	-0.10	0.75	0.82	0.25	0.42	-0.30	-0.05	2.04	0.31	\N	0.47	\N	\N	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2008	6.83	9.70	0.88	66.38	0.68	-0.13	0.78	0.83	0.20	0.41	-0.33	-0.10	2.09	0.31	0.45	0.47	\N	\N	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2009	6.96	9.63	0.87	66.44	0.68	-0.08	0.76	0.85	0.20	0.45	-0.24	-0.12	2.28	0.33	\N	0.47	0.45	0.26	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2010	6.80	9.66	0.88	66.50	0.78	-0.05	0.69	0.84	0.22	0.37	-0.27	-0.12	2.15	0.32	0.45	0.47	0.42	0.29	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2011	6.91	9.68	0.82	66.68	0.83	-0.10	0.70	0.79	0.23	0.38	-0.27	-0.09	2.33	0.34	\N	0.47	0.47	\N	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2012	7.32	9.70	0.77	66.86	0.79	-0.10	0.63	0.78	0.28	0.36	-0.27	-0.03	2.07	0.28	0.45	0.47	0.43	\N	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2013	7.44	9.70	0.76	67.04	0.74	-0.17	0.61	0.79	0.22	0.40	-0.30	-0.06	2.08	0.28	\N	0.47	0.42	\N	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2014	6.68	9.72	0.78	67.22	0.78	-0.10	0.63	0.80	0.23	0.33	-0.43	-0.14	2.15	0.32	0.46	0.47	0.44	\N	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2015	6.24	9.74	0.76	67.40	0.72	-0.15	0.71	0.74	0.24	0.26	-0.44	-0.16	2.15	0.34	\N	0.47	0.34	\N	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2016	6.82	9.75	0.89	67.70	0.75	-0.16	0.81	0.86	0.22	0.28	-0.35	-0.21	1.96	0.29	0.43	0.47	0.43	\N	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2017	6.41	9.76	0.80	68.00	0.86	-0.20	0.80	0.84	0.23	0.26	-0.36	-0.33	2.24	0.35	\N	0.47	0.44	\N	0.18	0.31	0.29	0.21	0.15	0.12
Mexico	2018	6.55	9.77	0.86	68.30	0.82	-0.18	0.81	0.88	0.21	0.29	\N	\N	2.33	0.36	\N	0.47	0.46	\N	0.18	0.31	0.29	0.21	0.15	0.12
Moldova	2006	5.10	8.15	0.81	60.58	0.55	-0.12	0.93	0.62	0.25	0.41	-0.32	-0.57	1.88	0.37	0.35	0.33	\N	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2007	4.77	8.19	0.80	60.76	0.70	-0.14	0.93	0.57	0.31	0.30	-0.15	-0.57	1.90	0.40	0.34	0.33	\N	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2008	5.50	8.26	0.87	60.94	0.64	-0.01	0.93	0.58	0.28	0.21	-0.29	-0.50	1.97	0.36	0.35	0.33	\N	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2009	5.55	8.20	0.86	61.12	0.55	-0.05	0.93	0.56	0.31	0.24	-0.44	-0.46	1.89	0.34	0.33	0.33	0.40	0.13	\N	\N	0.22	0.14	0.18	\N
Moldova	2010	5.59	8.27	0.85	61.30	0.60	-0.04	0.93	0.58	0.28	0.27	-0.22	-0.45	1.98	0.35	0.32	0.33	0.38	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2011	5.79	8.34	0.87	61.62	0.63	-0.03	0.96	0.57	0.28	0.24	0.00	-0.41	1.95	0.34	0.31	0.33	0.39	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2012	6.00	8.33	0.83	61.94	0.60	0.00	0.96	0.57	0.31	0.21	0.01	-0.40	1.90	0.32	0.29	0.33	0.38	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2013	5.76	8.42	0.80	62.26	0.66	-0.02	0.94	0.58	0.26	0.15	-0.04	-0.40	1.96	0.34	0.29	0.33	0.36	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2014	5.92	8.47	0.80	62.58	0.62	-0.07	0.92	0.58	0.26	0.18	-0.07	-0.37	1.82	0.31	0.27	0.33	0.36	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2015	6.02	8.47	0.84	62.90	0.60	-0.04	0.94	0.59	0.28	0.17	-0.15	-0.50	1.69	0.28	0.27	0.33	0.42	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2016	5.58	8.51	0.84	63.60	0.56	0.00	0.97	0.62	0.27	0.08	-0.16	-0.54	1.85	0.33	0.26	0.33	0.37	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2017	5.33	8.55	0.83	64.30	0.55	0.00	0.93	0.58	0.26	0.13	-0.13	-0.44	1.89	0.35	\N	0.33	0.43	\N	\N	\N	0.22	0.14	0.18	\N
Moldova	2018	5.68	8.59	0.89	65.00	0.82	-0.03	0.93	0.58	0.27	0.24	\N	\N	2.03	0.36	\N	0.33	0.40	\N	\N	\N	0.22	0.14	0.18	\N
Mongolia	2007	4.61	8.86	0.88	58.82	0.78	0.05	0.92	0.57	0.20	0.38	0.49	-0.44	1.69	0.37	0.36	0.33	\N	\N	\N	\N	\N	\N	\N	\N
Mongolia	2008	4.49	8.93	0.92	59.28	0.48	0.06	0.96	0.59	0.17	0.39	0.40	-0.47	1.57	0.35	\N	0.33	\N	\N	\N	\N	\N	\N	\N	\N
Mongolia	2010	4.59	8.95	0.90	60.20	0.63	0.09	0.93	0.71	0.15	0.31	0.34	-0.48	1.75	0.38	0.33	0.33	\N	0.14	\N	\N	\N	\N	\N	\N
Mongolia	2011	5.03	9.09	0.95	60.50	0.70	0.14	0.93	0.69	0.15	0.29	0.33	-0.44	1.66	0.33	0.34	0.33	0.35	\N	\N	\N	\N	\N	\N	\N
Mongolia	2012	4.89	9.19	0.92	60.80	0.69	0.09	0.93	0.69	0.18	0.31	0.27	-0.44	1.58	0.32	0.34	0.33	0.38	\N	\N	\N	\N	\N	\N	\N
Mongolia	2013	4.91	9.28	0.93	61.10	0.75	0.12	0.93	0.65	0.18	0.37	0.30	-0.43	1.73	0.35	\N	0.33	0.41	\N	\N	\N	\N	\N	\N	\N
Mongolia	2014	4.82	9.34	0.94	61.40	0.75	0.13	0.91	0.63	0.17	0.34	0.52	-0.38	1.66	0.34	0.32	0.33	0.41	\N	\N	\N	\N	\N	\N	\N
Mongolia	2015	4.98	9.34	0.91	61.70	0.69	0.16	0.90	0.65	0.21	0.23	0.49	-0.41	1.84	0.37	\N	0.33	0.38	\N	\N	\N	\N	\N	\N	\N
Mongolia	2016	5.06	9.34	0.95	61.90	0.76	0.08	0.90	0.69	0.17	0.35	0.56	-0.22	1.69	0.33	0.32	0.33	0.39	\N	\N	\N	\N	\N	\N	\N
Mongolia	2017	5.33	9.38	0.92	62.10	0.67	0.10	0.86	0.68	0.21	0.28	0.55	-0.28	2.10	0.39	\N	0.33	0.39	\N	\N	\N	\N	\N	\N	\N
Mongolia	2018	5.46	9.42	0.94	62.30	0.70	0.04	0.85	0.65	0.19	0.27	\N	\N	2.01	0.37	\N	0.33	0.36	\N	\N	\N	\N	\N	\N	\N
Montenegro	2007	5.20	9.52	0.83	66.20	0.51	-0.13	0.81	0.58	0.34	0.50	0.18	-0.22	2.46	0.47	0.31	0.31	\N	\N	\N	\N	0.30	0.33	\N	\N
Montenegro	2009	4.80	9.52	0.82	66.80	0.56	-0.10	0.84	0.62	0.42	\N	0.53	-0.05	2.14	0.45	0.31	0.31	0.37	0.19	\N	\N	0.30	0.33	\N	\N
Montenegro	2010	5.46	9.55	0.80	67.10	0.55	-0.21	0.76	0.59	0.41	\N	0.39	-0.05	1.77	0.32	0.29	0.31	0.35	0.20	\N	\N	0.30	0.33	\N	\N
Montenegro	2011	5.22	9.58	0.82	67.26	0.55	-0.23	0.76	0.60	0.38	\N	0.39	-0.04	2.03	0.39	0.31	0.31	0.31	0.22	\N	\N	0.30	0.33	\N	\N
Montenegro	2012	5.22	9.55	0.70	67.42	0.46	-0.19	0.76	0.57	0.38	0.36	0.41	0.01	2.31	0.44	0.32	0.31	0.36	\N	\N	\N	0.30	0.33	\N	\N
Montenegro	2013	5.07	9.59	0.74	67.58	0.50	-0.17	0.69	0.54	0.33	0.39	0.34	0.00	2.13	0.42	0.32	0.31	0.35	\N	\N	\N	0.30	0.33	\N	\N
Montenegro	2014	5.28	9.60	0.86	67.74	0.50	0.10	0.77	0.59	0.37	0.40	0.19	0.10	2.44	0.46	0.32	0.31	0.36	\N	\N	\N	0.30	0.33	\N	\N
Montenegro	2015	5.12	9.63	0.74	67.90	0.58	-0.14	0.78	0.58	0.34	0.40	0.14	0.08	2.55	0.50	\N	0.31	0.38	\N	\N	\N	0.30	0.33	\N	\N
Montenegro	2016	5.30	9.66	0.87	68.10	0.57	-0.09	0.85	0.59	0.34	0.33	0.18	0.06	2.23	0.42	\N	0.31	0.36	\N	\N	\N	0.30	0.33	\N	\N
Montenegro	2017	5.61	9.71	0.88	68.30	0.63	-0.08	0.76	0.52	0.35	0.35	0.07	0.09	2.21	0.39	\N	0.31	0.35	\N	\N	\N	0.30	0.33	\N	\N
Montenegro	2018	5.65	9.73	0.86	68.50	0.63	-0.05	0.77	0.59	0.35	0.40	\N	\N	2.27	0.40	\N	0.31	0.41	\N	\N	\N	0.30	0.33	\N	\N
Morocco	2010	4.38	8.77	\N	63.50	0.66	-0.17	0.90	\N	\N	\N	-0.54	-0.14	1.55	0.35	\N	0.40	\N	\N	\N	\N	\N	0.23	0.13	0.12
Morocco	2011	5.08	8.81	0.83	63.80	0.58	-0.23	0.88	0.74	0.19	\N	-0.55	-0.22	1.48	0.29	\N	0.40	\N	\N	\N	\N	\N	0.23	0.13	0.12
Morocco	2012	4.97	8.82	0.68	64.10	0.76	-0.20	0.84	0.69	0.28	0.53	-0.54	-0.20	1.93	0.39	\N	0.40	0.56	\N	\N	\N	\N	0.23	0.13	0.12
Morocco	2013	5.14	8.85	0.60	64.40	0.57	-0.22	0.77	0.78	0.24	0.38	-0.60	-0.19	1.89	0.37	0.40	0.40	0.62	\N	\N	\N	\N	0.23	0.13	0.12
Morocco	2015	5.16	8.90	0.61	65.00	0.71	-0.24	0.84	0.66	0.26	\N	-0.48	-0.14	2.03	0.39	\N	0.40	0.56	\N	\N	\N	\N	0.23	0.13	0.12
Morocco	2016	5.39	8.89	0.66	65.30	0.82	-0.25	0.72	0.71	0.21	\N	-0.47	-0.16	2.14	0.40	\N	0.40	0.53	\N	\N	\N	\N	0.23	0.13	0.12
Morocco	2017	5.31	8.92	0.64	65.60	0.81	-0.23	0.84	0.56	0.32	\N	-0.53	-0.17	2.29	0.43	\N	0.40	0.53	\N	\N	\N	\N	0.23	0.13	0.12
Morocco	2018	4.90	8.94	0.55	65.90	0.77	-0.25	0.84	0.64	0.42	\N	\N	\N	2.71	0.55	\N	0.40	0.54	\N	\N	\N	\N	0.23	0.13	0.12
Mozambique	2006	4.59	6.67	0.88	44.80	0.68	0.05	0.76	0.62	0.33	0.56	0.22	-0.60	1.79	0.39	\N	0.49	\N	\N	\N	\N	\N	\N	\N	\N
Mozambique	2007	4.83	6.72	0.75	45.50	0.64	0.08	0.85	0.63	0.24	0.59	0.14	-0.54	1.62	0.34	\N	0.49	\N	\N	\N	\N	\N	\N	\N	\N
Mozambique	2008	4.65	6.75	0.76	46.20	0.51	0.01	0.86	0.62	0.28	0.54	0.15	-0.52	1.52	0.33	0.46	0.49	\N	\N	\N	\N	\N	\N	\N	\N
Mozambique	2011	4.97	6.86	0.82	48.32	0.64	-0.02	0.72	0.59	0.24	0.63	0.07	-0.53	2.11	0.42	\N	0.49	\N	\N	\N	\N	\N	\N	\N	\N
Mozambique	2015	4.55	7.02	0.67	51.20	0.81	0.09	0.63	0.56	0.34	0.71	-0.39	-0.71	3.02	0.66	\N	0.49	0.85	\N	\N	\N	\N	\N	\N	\N
Mozambique	2017	4.28	7.04	0.68	53.20	0.82	-0.02	0.68	0.65	0.35	0.76	-0.70	-0.87	2.99	0.70	\N	0.49	0.61	\N	\N	\N	\N	\N	\N	\N
Mozambique	2018	4.65	7.04	0.74	54.20	0.90	0.05	0.69	0.64	0.40	0.83	\N	\N	3.33	0.71	\N	0.49	0.78	\N	\N	\N	\N	\N	\N	\N
Myanmar	2012	4.44	8.33	0.61	57.02	0.69	0.62	0.69	0.76	0.21	\N	-1.28	-1.43	1.73	0.39	\N	0.38	0.46	\N	\N	\N	\N	\N	\N	\N
Myanmar	2013	4.18	8.40	0.76	57.38	0.78	0.67	0.64	0.80	0.22	\N	-1.30	-1.31	1.74	0.42	\N	0.38	0.46	\N	\N	\N	\N	\N	\N	\N
Myanmar	2014	4.79	8.47	0.77	57.74	\N	0.68	0.59	0.86	0.11	0.89	-1.22	-1.18	1.47	0.31	\N	0.38	0.43	\N	\N	\N	\N	\N	\N	\N
Myanmar	2015	4.22	8.53	0.75	58.10	0.81	0.67	0.63	0.87	0.27	0.78	-1.19	-1.13	1.62	0.38	0.38	0.38	0.41	\N	\N	\N	\N	\N	\N	\N
Myanmar	2016	4.62	8.58	0.79	58.40	0.88	0.66	0.61	0.80	0.30	0.92	-0.80	-0.84	1.85	0.40	\N	0.38	0.43	\N	\N	\N	\N	\N	\N	\N
Myanmar	2017	4.15	8.63	0.80	58.70	0.89	0.63	0.62	0.75	0.28	0.82	-0.97	-0.85	2.23	0.54	\N	0.38	0.42	\N	\N	\N	\N	\N	\N	\N
Myanmar	2018	4.41	8.69	0.77	59.00	0.91	0.47	0.65	0.78	0.30	0.88	\N	\N	2.29	0.52	\N	0.38	0.42	\N	\N	\N	\N	\N	\N	\N
Namibia	2007	4.89	9.00	0.83	49.68	0.78	-0.11	0.84	0.81	0.16	0.82	0.73	0.12	1.51	0.31	\N	0.61	\N	\N	\N	\N	\N	\N	\N	\N
Namibia	2014	4.57	9.17	0.76	55.16	0.85	-0.19	0.79	0.75	0.24	0.78	0.58	0.13	2.72	0.60	\N	0.61	0.78	\N	\N	\N	\N	\N	\N	\N
Namibia	2017	4.44	9.16	0.83	56.20	0.81	-0.20	0.83	0.72	0.28	0.75	0.60	0.14	2.74	0.62	\N	0.61	0.60	\N	\N	\N	\N	\N	\N	\N
Namibia	2018	4.83	9.16	0.86	56.50	0.75	-0.18	0.85	0.74	0.24	0.62	\N	\N	2.10	0.43	\N	0.61	0.77	\N	\N	\N	\N	\N	\N	\N
Nepal	2006	4.57	7.45	0.87	57.20	0.69	\N	0.90	0.72	0.17	0.43	-1.40	-0.69	1.53	0.33	\N	0.38	\N	\N	\N	\N	\N	\N	\N	\N
Nepal	2007	4.75	7.47	0.79	57.70	0.41	0.32	0.89	0.64	0.15	0.32	-1.23	-0.66	1.75	0.37	\N	0.38	\N	\N	\N	\N	\N	\N	\N	\N
Nepal	2008	4.44	7.52	0.82	58.20	0.62	0.30	0.90	0.74	0.15	0.68	-1.17	-0.73	1.53	0.34	\N	0.38	\N	\N	\N	\N	\N	\N	\N	\N
Nepal	2009	4.92	7.56	0.81	58.70	0.62	0.05	0.95	0.57	0.22	0.42	-1.03	-0.80	1.67	0.34	\N	0.38	0.42	0.14	\N	\N	\N	\N	\N	\N
Nepal	2010	4.35	7.59	0.78	59.20	0.52	0.10	0.91	0.67	0.23	0.45	-1.02	-0.82	1.82	0.42	0.33	0.38	0.57	0.17	\N	\N	\N	\N	\N	\N
Nepal	2011	3.81	7.62	0.74	59.40	0.52	0.00	0.93	0.70	0.21	0.33	-0.93	-0.82	1.63	0.43	\N	0.38	0.45	\N	\N	\N	\N	\N	\N	\N
Nepal	2012	4.23	7.65	0.73	59.60	0.64	0.08	0.88	0.74	0.23	0.44	-1.01	-0.83	1.78	0.42	\N	0.38	0.45	\N	\N	\N	\N	\N	\N	\N
Nepal	2013	4.60	7.68	0.74	59.80	0.72	0.16	0.88	0.63	0.28	0.45	-0.83	-0.80	1.83	0.40	\N	0.38	0.41	\N	\N	\N	\N	\N	\N	\N
Nepal	2014	4.98	7.73	0.79	60.00	0.71	0.13	0.84	0.61	0.29	0.59	-0.58	-0.73	2.03	0.41	\N	0.38	0.50	\N	\N	\N	\N	\N	\N	\N
Nepal	2015	4.81	7.75	0.75	60.20	0.76	0.24	0.82	0.54	0.36	0.47	-0.71	-0.78	2.58	0.54	\N	0.38	0.45	\N	\N	\N	\N	\N	\N	\N
Nepal	2016	5.10	7.74	0.84	61.30	0.84	0.18	0.82	0.63	0.37	0.49	-0.55	-0.80	2.44	0.48	\N	0.38	0.48	\N	\N	\N	\N	\N	\N	\N
Nepal	2017	4.74	7.80	0.82	62.40	0.85	0.14	0.77	0.57	0.38	0.56	-0.45	-0.76	2.47	0.52	\N	0.38	0.46	\N	\N	\N	\N	\N	\N	\N
Nepal	2018	4.91	7.85	0.77	63.50	0.77	0.13	0.74	0.54	0.39	0.65	\N	\N	3.04	0.62	\N	0.38	0.50	\N	\N	\N	\N	\N	\N	\N
Netherlands	2005	7.46	10.68	0.95	70.40	0.90	\N	0.57	0.87	0.23	0.43	1.33	1.83	1.24	0.17	0.29	0.29	\N	\N	\N	\N	\N	\N	0.44	0.66
Netherlands	2007	7.45	10.75	0.94	70.80	0.90	0.34	0.45	0.82	0.21	0.66	1.15	1.87	1.44	0.19	0.30	0.29	\N	\N	\N	\N	\N	\N	0.44	0.66
Netherlands	2008	7.63	10.76	0.94	71.00	0.88	0.36	0.42	0.79	0.18	0.62	1.17	1.84	1.02	0.13	0.29	0.29	\N	\N	\N	\N	\N	\N	0.44	0.66
Netherlands	2010	7.50	10.73	0.96	71.40	0.92	0.34	0.40	0.85	0.21	0.64	1.20	1.86	1.34	0.18	0.28	0.29	0.46	0.47	\N	\N	\N	\N	0.44	0.66
Netherlands	2011	7.56	10.74	0.94	71.52	0.93	0.33	0.36	0.86	0.18	0.60	1.33	1.89	1.29	0.17	0.28	0.29	0.45	\N	\N	\N	\N	\N	0.44	0.66
Netherlands	2012	7.47	10.72	0.94	71.64	0.88	0.28	0.43	0.86	0.23	0.57	1.40	1.89	1.35	0.18	0.28	0.29	0.35	\N	\N	\N	\N	\N	0.44	0.66
Netherlands	2013	7.41	10.72	0.92	71.76	0.92	0.30	0.50	0.87	0.24	0.54	1.36	1.86	1.34	0.18	0.28	0.29	0.39	\N	\N	\N	\N	\N	0.44	0.66
Netherlands	2014	7.32	10.73	0.91	71.88	0.91	0.33	0.46	0.87	0.22	0.53	1.30	1.89	1.41	0.19	0.29	0.29	0.46	\N	\N	\N	\N	\N	0.44	0.66
Netherlands	2015	7.32	10.75	0.88	72.00	0.90	0.26	0.41	0.83	0.20	0.58	1.24	1.87	1.45	0.20	0.28	0.29	0.42	\N	\N	\N	\N	\N	0.44	0.66
Netherlands	2016	7.54	10.76	0.93	72.10	0.91	0.23	0.43	0.84	0.21	0.57	1.23	1.90	1.28	0.17	\N	0.29	0.42	\N	\N	\N	\N	\N	0.44	0.66
Netherlands	2017	7.46	10.79	0.94	72.20	0.92	0.24	0.36	0.85	0.18	0.67	1.24	1.90	1.32	0.18	\N	0.29	0.44	\N	\N	\N	\N	\N	0.44	0.66
Netherlands	2018	7.46	10.81	0.94	72.30	0.92	0.16	0.37	0.86	0.20	0.66	\N	\N	1.23	0.17	\N	0.29	0.47	\N	\N	\N	\N	\N	0.44	0.66
New Zealand	2006	7.31	10.37	0.95	71.20	0.93	0.31	0.22	0.88	0.22	0.63	1.38	1.86	1.74	0.24	\N	\N	\N	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2007	7.60	10.39	0.97	71.40	0.88	0.28	0.29	0.85	0.24	0.59	1.36	1.89	1.60	0.21	\N	\N	\N	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2008	7.38	10.37	0.94	71.60	0.89	0.29	0.33	0.85	0.23	0.46	1.32	1.91	1.66	0.22	\N	\N	\N	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2010	7.22	10.38	0.98	72.00	0.92	0.25	0.32	0.85	0.23	0.64	1.37	1.96	1.69	0.23	\N	\N	0.43	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2011	7.19	10.40	0.95	72.12	0.93	0.28	0.27	0.86	0.21	0.64	1.48	2.01	1.71	0.24	\N	\N	0.40	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2012	7.25	10.42	0.93	72.24	0.90	0.28	0.29	0.87	0.21	0.61	1.49	1.97	1.72	0.24	\N	\N	0.39	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2013	7.28	10.43	0.96	72.36	0.94	0.23	0.31	0.83	0.15	0.54	1.53	1.95	1.66	0.23	\N	\N	0.40	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2014	7.31	10.45	0.94	72.48	0.93	0.34	0.27	0.85	0.20	0.63	1.50	2.04	1.68	0.23	\N	\N	0.39	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2015	7.42	10.47	0.99	72.60	0.94	0.32	0.19	0.83	0.16	0.62	1.54	2.02	1.50	0.20	\N	\N	0.36	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2016	7.23	10.49	0.94	72.80	0.93	0.26	0.28	0.83	0.21	0.57	1.53	2.03	1.74	0.24	\N	\N	0.42	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2017	7.33	10.49	0.95	73.00	0.94	0.29	0.22	0.82	0.17	0.61	1.58	2.00	1.65	0.23	\N	\N	0.45	\N	\N	\N	0.48	\N	0.51	0.56
New Zealand	2018	7.37	10.50	0.95	73.20	0.95	0.12	0.21	0.85	0.17	0.64	\N	\N	1.57	0.21	\N	\N	0.39	\N	\N	\N	0.48	\N	0.51	0.56
Nicaragua	2006	4.46	8.26	0.88	64.14	0.75	0.01	0.84	0.78	0.29	0.22	-0.23	-0.68	2.72	0.61	\N	0.48	\N	\N	\N	\N	\N	\N	\N	\N
Nicaragua	2007	4.94	8.30	0.87	64.48	0.84	0.14	0.83	0.81	0.29	0.41	-0.17	-0.73	2.85	0.58	\N	0.48	\N	\N	\N	\N	\N	\N	\N	\N
Nicaragua	2008	5.10	8.32	0.86	64.82	0.79	0.08	0.82	0.78	0.29	0.34	-0.29	-0.72	2.65	0.52	\N	0.48	\N	\N	\N	\N	\N	\N	\N	\N
Nicaragua	2009	5.35	8.27	0.83	65.16	0.75	0.07	0.79	0.78	0.30	0.37	-0.37	-0.73	2.68	0.50	0.44	0.48	0.45	0.12	\N	\N	\N	\N	\N	\N
Nicaragua	2010	5.69	8.30	0.86	65.50	0.79	0.02	0.80	0.81	0.27	0.40	-0.49	-0.71	2.52	0.44	\N	0.48	0.49	0.11	\N	\N	\N	\N	\N	\N
Nicaragua	2011	5.39	8.35	0.80	65.72	0.78	-0.02	0.76	0.79	0.31	0.54	-0.42	-0.67	2.70	0.50	\N	0.48	0.51	\N	\N	\N	\N	\N	\N	\N
Nicaragua	2012	5.45	8.40	0.89	65.94	0.85	0.02	0.64	0.80	0.25	0.57	-0.44	-0.67	2.46	0.45	\N	0.48	0.46	\N	\N	\N	\N	\N	\N	\N
Nicaragua	2013	5.77	8.44	0.87	66.16	0.86	0.04	0.64	0.84	0.27	0.61	-0.35	-0.63	2.52	0.44	\N	0.48	0.48	\N	\N	\N	\N	\N	\N	\N
Nicaragua	2014	6.28	8.47	0.84	66.38	0.82	0.11	0.70	0.81	0.33	0.58	-0.22	-0.71	2.72	0.43	0.46	0.48	0.44	\N	\N	\N	\N	\N	\N	\N
Nicaragua	2015	5.92	8.51	0.83	66.60	0.81	0.08	0.73	0.80	0.35	0.60	-0.25	-0.71	2.91	0.49	\N	0.48	0.53	\N	\N	\N	\N	\N	\N	\N
Nicaragua	2016	6.01	8.54	0.85	66.90	0.72	0.04	0.73	0.81	0.38	0.59	-0.39	-0.68	2.80	0.47	\N	0.48	0.42	\N	\N	\N	\N	\N	\N	\N
Nicaragua	2017	6.48	8.58	0.84	67.20	0.92	0.01	0.67	0.85	0.31	0.59	-0.38	-0.71	2.66	0.41	\N	0.48	0.44	\N	\N	\N	\N	\N	\N	\N
Nicaragua	2018	5.82	8.61	0.85	67.50	0.80	0.00	0.71	0.79	0.41	0.34	\N	\N	2.71	0.47	\N	0.48	0.43	\N	\N	\N	\N	\N	\N	\N
Niger	2006	3.74	6.66	0.68	46.36	0.75	0.09	0.75	0.76	0.18	0.60	-0.28	-0.68	1.61	0.43	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Niger	2007	4.28	6.65	0.73	47.12	0.58	-0.04	0.75	0.71	0.16	0.47	-0.41	-0.66	1.55	0.36	0.37	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Niger	2008	4.24	6.70	0.61	47.88	0.65	-0.04	0.75	0.65	0.19	0.50	-0.56	-0.63	1.39	0.33	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Niger	2009	4.27	6.66	0.77	48.64	0.88	0.01	0.48	0.73	0.12	0.58	-0.94	-0.56	1.31	0.31	\N	0.37	0.47	0.40	\N	\N	\N	\N	\N	\N
Niger	2010	4.10	6.70	0.65	49.40	0.82	-0.01	0.53	0.75	0.13	0.78	-0.91	-0.58	1.25	0.30	\N	0.37	0.42	\N	\N	\N	\N	\N	\N	\N
Niger	2011	4.56	6.69	0.82	49.92	0.78	-0.04	0.55	0.70	0.17	0.79	-0.56	-0.55	1.44	0.32	0.32	0.37	0.39	\N	\N	\N	\N	\N	\N	\N
Niger	2012	3.80	6.76	0.70	50.44	0.73	-0.05	0.78	0.60	0.14	0.53	-0.72	-0.64	1.31	0.35	\N	0.37	0.51	\N	\N	\N	\N	\N	\N	\N
Niger	2013	3.72	6.77	0.70	50.96	0.83	-0.06	0.71	0.65	0.21	0.64	-0.81	-0.64	1.72	0.46	\N	0.37	0.39	\N	\N	\N	\N	\N	\N	\N
Niger	2014	4.18	6.81	0.75	51.48	0.69	-0.03	0.60	0.68	0.20	0.58	-0.69	-0.69	1.74	0.42	0.34	0.37	0.52	\N	\N	\N	\N	\N	\N	\N
Niger	2015	3.67	6.81	0.71	52.00	0.73	-0.02	0.70	0.68	0.22	0.58	-0.64	-0.64	1.94	0.53	\N	0.37	0.45	\N	\N	\N	\N	\N	\N	\N
Niger	2016	4.23	6.82	0.68	52.50	0.70	0.00	0.81	0.67	0.33	0.57	-0.77	-0.64	2.28	0.54	\N	0.37	0.47	\N	\N	\N	\N	\N	\N	\N
Niger	2017	4.62	6.83	0.58	53.00	0.68	-0.02	0.78	0.73	0.43	0.60	-0.86	-0.67	2.78	0.60	\N	0.37	0.66	\N	\N	\N	\N	\N	\N	\N
Niger	2018	5.16	6.84	0.61	53.50	0.79	0.02	0.64	0.77	0.50	0.75	\N	\N	3.57	0.69	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Nigeria	2006	4.71	8.38	0.74	44.12	0.65	0.07	0.87	0.78	0.18	0.25	-1.33	-1.02	1.80	0.38	\N	0.42	\N	\N	\N	0.22	0.18	0.25	\N	0.15
Nigeria	2007	4.89	8.42	0.72	44.64	0.64	0.12	0.92	0.83	0.14	0.39	-1.39	-1.01	1.62	0.33	\N	0.42	\N	\N	\N	0.22	0.18	0.25	\N	0.15
Nigeria	2008	4.94	8.46	0.78	45.16	0.58	0.11	0.89	0.74	0.24	0.46	-1.30	-0.93	1.70	0.34	\N	0.42	\N	\N	\N	0.22	0.18	0.25	\N	0.15
Nigeria	2009	4.98	8.50	0.72	45.68	0.54	0.06	0.91	0.74	0.23	0.23	-1.42	-1.04	1.92	0.39	0.43	0.42	0.54	0.13	\N	0.22	0.18	0.25	\N	0.15
Nigeria	2010	4.76	8.55	0.82	46.20	0.57	0.06	0.91	0.78	0.19	0.29	-1.49	-1.02	1.92	0.40	\N	0.42	0.43	\N	\N	0.22	0.18	0.25	\N	0.15
Nigeria	2012	5.49	8.58	0.82	47.12	0.65	0.05	0.90	0.81	0.21	0.30	-1.37	-1.01	1.73	0.32	\N	0.42	0.48	\N	\N	0.22	0.18	0.25	\N	0.15
Nigeria	2013	4.82	8.61	0.66	47.58	0.62	0.04	0.91	0.64	0.29	0.30	-1.39	-1.00	2.06	0.43	\N	0.42	0.45	\N	\N	0.22	0.18	0.25	\N	0.15
Nigeria	2015	4.93	8.64	0.81	48.50	0.68	-0.05	0.93	0.72	0.25	0.41	-1.15	-0.96	2.23	0.45	\N	0.42	0.49	\N	\N	0.22	0.18	0.25	\N	0.15
Nigeria	2016	5.22	8.60	0.80	48.90	0.80	0.03	0.90	0.73	0.25	0.41	-1.10	-1.02	2.52	0.48	\N	0.42	0.50	\N	\N	0.22	0.18	0.25	\N	0.15
Nigeria	2017	5.32	8.58	0.73	49.30	0.83	0.11	0.83	0.72	0.24	0.56	-1.14	-0.94	2.95	0.55	\N	0.42	0.47	\N	\N	0.22	0.18	0.25	\N	0.15
Nigeria	2018	5.25	8.58	0.74	49.70	0.79	-0.02	0.87	0.81	0.26	0.45	\N	\N	2.64	0.50	\N	0.42	0.45	\N	\N	0.22	0.18	0.25	\N	0.15
North Cyprus	2012	5.46	\N	0.87	\N	0.69	\N	0.85	0.71	0.41	0.41	\N	\N	2.74	0.50	\N	\N	0.37	\N	\N	\N	\N	\N	\N	\N
North Cyprus	2013	5.57	\N	0.87	\N	0.78	\N	0.72	0.62	0.44	0.40	\N	\N	2.46	0.44	\N	\N	0.36	\N	\N	\N	\N	\N	\N	\N
North Cyprus	2014	5.79	\N	0.80	\N	0.83	\N	0.69	0.72	0.31	0.41	\N	\N	2.34	0.40	\N	\N	0.35	\N	\N	\N	\N	\N	\N	\N
North Cyprus	2015	5.84	\N	0.79	\N	0.79	\N	0.66	0.70	0.32	0.44	\N	\N	2.22	0.38	\N	\N	0.42	\N	\N	\N	\N	\N	\N	\N
North Cyprus	2016	5.83	\N	0.81	\N	0.80	\N	0.67	0.64	0.35	0.44	\N	\N	1.86	0.32	\N	\N	0.29	\N	\N	\N	\N	\N	\N	\N
North Cyprus	2018	5.61	\N	0.84	\N	0.80	\N	0.61	0.48	0.26	0.38	\N	\N	1.81	0.32	\N	\N	0.20	\N	\N	\N	\N	\N	\N	\N
Norway	2006	7.42	11.06	0.96	71.32	0.96	0.09	0.40	0.83	0.20	0.68	1.40	1.80	1.75	0.24	0.26	0.27	\N	\N	\N	\N	0.65	\N	0.74	\N
Norway	2008	7.63	11.08	0.94	71.56	0.95	0.00	0.50	0.79	0.16	0.54	1.42	1.77	1.53	0.20	0.27	0.27	\N	\N	\N	\N	0.65	\N	0.74	\N
Norway	2012	7.68	11.05	0.95	72.24	0.95	0.13	0.37	0.82	0.21	0.66	1.53	1.92	1.75	0.23	0.26	0.27	0.32	\N	\N	\N	0.65	\N	0.74	\N
Norway	2014	7.44	11.06	0.94	72.68	0.96	0.16	0.40	0.83	0.19	0.70	1.40	1.93	1.64	0.22	0.27	0.27	0.41	\N	\N	\N	0.65	\N	0.74	\N
Norway	2015	7.60	11.07	0.95	72.90	0.95	0.24	0.30	0.84	0.21	0.59	1.42	1.93	1.68	0.22	0.28	0.27	0.37	\N	\N	\N	0.65	\N	0.74	\N
Norway	2016	7.60	11.07	0.96	73.00	0.95	0.11	0.41	0.85	0.21	0.66	1.43	1.95	1.58	0.21	\N	0.27	0.35	\N	\N	\N	0.65	\N	0.74	\N
Norway	2017	7.58	11.08	0.95	73.10	0.95	0.22	0.25	0.85	0.20	0.72	1.42	2.01	1.62	0.21	\N	0.27	0.33	\N	\N	\N	0.65	\N	0.74	\N
Norway	2018	7.44	11.09	0.97	73.20	0.96	0.08	0.27	0.83	0.21	0.68	\N	\N	1.52	0.20	\N	0.27	0.34	\N	\N	\N	0.65	\N	0.74	\N
Oman	2011	6.85	10.65	\N	65.50	0.92	-0.01	\N	\N	0.30	\N	-0.31	0.30	2.10	0.31	\N	\N	0.49	\N	\N	\N	\N	\N	\N	\N
Pakistan	2005	5.22	8.30	0.59	54.20	0.63	\N	0.84	\N	0.24	0.58	-1.37	-0.76	2.43	0.47	0.33	0.32	\N	\N	\N	\N	0.20	0.28	\N	0.23
Pakistan	2007	5.67	8.36	0.48	55.00	0.40	0.08	0.79	0.68	0.31	0.44	-1.69	-0.68	2.55	0.45	0.32	0.32	\N	\N	\N	\N	0.20	0.28	\N	0.23
Pakistan	2008	4.41	8.36	0.37	55.40	0.34	0.09	0.85	0.66	0.32	0.41	-1.71	-0.80	2.67	0.60	\N	0.32	\N	\N	\N	\N	0.20	0.28	\N	0.23
Pakistan	2009	5.21	8.37	0.52	55.80	0.39	0.06	0.87	0.64	0.35	0.36	-1.75	-0.82	2.51	0.48	\N	0.32	0.40	0.20	\N	\N	0.20	0.28	\N	0.23
Pakistan	2010	5.79	8.36	0.57	56.20	0.36	0.29	0.85	0.65	0.37	0.31	-1.74	-0.80	2.35	0.41	0.30	0.32	0.41	0.22	\N	\N	0.20	0.28	\N	0.23
Pakistan	2011	5.27	8.37	0.51	56.42	0.38	0.02	0.86	0.63	0.36	0.28	-1.82	-0.86	2.19	0.42	0.31	0.32	0.39	\N	\N	\N	0.20	0.28	\N	0.23
Pakistan	2012	5.13	8.38	0.54	56.64	0.37	0.15	0.84	0.66	0.33	0.23	-1.76	-0.86	2.18	0.42	\N	0.32	0.43	\N	\N	\N	0.20	0.28	\N	0.23
Pakistan	2013	5.14	8.40	0.61	56.86	0.45	0.08	0.79	0.60	0.27	0.26	-1.70	-0.83	1.95	0.38	0.31	0.32	0.40	\N	\N	\N	0.20	0.28	\N	0.23
Pakistan	2014	5.44	8.43	0.55	57.08	0.54	0.13	0.68	0.58	0.30	0.43	-1.56	-0.76	2.17	0.40	\N	0.32	0.43	\N	\N	\N	0.20	0.28	\N	0.23
Pakistan	2015	4.82	8.45	0.56	57.30	0.59	0.07	0.72	0.58	0.33	0.46	-1.60	-0.72	2.02	0.42	0.34	0.32	0.39	\N	\N	\N	0.20	0.28	\N	0.23
Pakistan	2016	5.55	8.49	0.63	57.70	0.63	0.08	0.79	0.65	0.33	0.46	-1.59	-0.74	1.96	0.35	\N	0.32	0.32	\N	\N	\N	0.20	0.28	\N	0.23
Pakistan	2017	5.83	8.52	0.69	58.10	0.71	0.03	0.71	0.59	0.31	0.56	-1.55	-0.67	1.78	0.30	\N	0.32	0.41	\N	\N	\N	0.20	0.28	\N	0.23
Pakistan	2018	5.47	8.56	0.69	58.50	0.77	0.05	0.80	0.57	0.38	0.59	\N	\N	2.36	0.43	\N	0.32	0.38	\N	\N	\N	0.20	0.28	\N	0.23
Palestinian Territories	2006	4.72	8.34	0.82	61.78	0.55	\N	0.86	0.50	0.43	0.38	-1.08	-0.67	2.32	0.49	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2007	4.15	8.30	0.71	61.90	0.37	-0.09	0.84	0.57	0.41	0.39	-1.33	-0.76	2.37	0.57	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2008	4.39	8.18	0.67	62.01	0.36	-0.07	0.75	0.57	0.40	\N	-1.43	-0.90	2.53	0.58	\N	\N	\N	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2009	4.47	8.34	0.74	62.13	0.47	-0.09	0.80	0.54	0.47	0.43	-1.50	-0.32	2.23	0.50	\N	\N	0.43	0.09	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2010	4.70	8.33	0.82	62.25	0.50	-0.12	0.75	0.63	0.38	0.51	-1.40	-0.12	2.15	0.46	\N	\N	0.42	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2011	4.75	8.38	0.75	\N	0.52	-0.13	0.75	0.57	0.39	0.49	-1.47	-0.32	2.15	0.45	\N	\N	0.40	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2012	4.65	8.49	0.78	\N	0.54	-0.16	0.73	0.62	0.38	0.47	-1.45	-0.33	2.21	0.48	\N	\N	0.40	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2013	4.84	8.41	0.76	\N	0.45	-0.15	0.78	0.59	0.37	0.44	-1.35	-0.31	2.16	0.45	\N	\N	0.38	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2014	4.72	8.37	0.78	\N	0.66	-0.15	0.80	0.57	0.38	0.47	-1.43	-0.24	2.40	0.51	\N	\N	0.43	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2015	4.70	8.46	0.77	\N	0.56	-0.16	0.77	0.59	0.37	0.45	-1.57	-0.33	2.33	0.50	\N	\N	0.41	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2016	4.91	8.46	0.82	\N	0.61	-0.13	0.81	0.59	0.38	0.46	-1.54	-0.27	2.38	0.48	\N	\N	0.42	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2017	4.63	\N	0.82	\N	0.63	\N	0.83	0.60	0.42	0.41	-1.34	-0.21	2.52	0.54	\N	\N	0.48	\N	\N	\N	\N	\N	\N	0.16
Palestinian Territories	2018	4.55	\N	0.82	\N	0.65	\N	0.81	0.61	0.42	0.39	\N	\N	2.58	0.57	\N	\N	0.48	\N	\N	\N	\N	\N	\N	0.16
Panama	2006	6.13	9.45	0.95	67.90	0.88	-0.04	0.91	0.85	0.23	0.36	0.27	-0.02	2.32	0.38	0.55	0.53	\N	\N	\N	\N	\N	\N	\N	\N
Panama	2007	6.89	9.55	0.94	68.00	0.64	0.09	0.92	0.82	0.15	0.25	0.28	0.02	2.27	0.33	0.53	0.53	\N	\N	\N	\N	\N	\N	\N	\N
Panama	2008	6.93	9.62	0.92	68.10	0.71	0.07	0.88	0.82	0.15	0.31	0.25	0.12	2.08	0.30	0.53	0.53	\N	\N	\N	\N	\N	\N	\N	\N
Panama	2009	7.03	9.62	0.91	68.20	0.72	0.02	0.89	0.88	0.14	0.60	0.33	0.03	2.19	0.31	0.52	0.53	0.42	0.21	\N	\N	\N	\N	\N	\N
Panama	2010	7.32	9.66	0.93	68.30	0.75	0.00	0.88	0.89	0.15	0.54	0.21	0.03	2.00	0.27	0.52	0.53	0.43	0.21	\N	\N	\N	\N	\N	\N
Panama	2011	7.25	9.75	0.88	68.50	0.83	0.02	0.84	0.89	0.18	0.46	0.25	0.05	2.13	0.29	0.51	0.53	0.40	\N	\N	\N	\N	\N	\N	\N
Panama	2012	6.86	9.82	0.90	68.70	0.78	0.01	0.80	0.87	0.21	0.36	0.14	0.03	2.30	0.34	0.52	0.53	0.39	\N	\N	\N	\N	\N	\N	\N
Panama	2013	6.87	9.87	0.90	68.90	0.81	0.03	0.81	0.87	0.23	0.42	0.14	0.02	2.32	0.34	0.52	0.53	0.45	\N	\N	\N	\N	\N	\N	\N
Panama	2014	6.63	9.90	0.87	69.10	0.89	0.01	0.85	0.81	0.25	0.44	0.36	0.06	2.54	0.38	0.51	0.53	0.56	\N	\N	\N	\N	\N	\N	\N
Panama	2015	6.61	9.94	0.88	69.30	0.85	0.00	0.81	0.80	0.26	0.38	0.47	0.04	2.54	0.38	0.51	0.53	0.54	\N	\N	\N	\N	\N	\N	\N
Panama	2016	6.12	9.97	0.88	69.40	0.88	-0.09	0.84	0.86	0.24	0.33	0.47	0.02	2.65	0.43	0.50	0.53	0.53	\N	\N	\N	\N	\N	\N	\N
Panama	2017	6.57	10.01	0.91	69.50	0.90	-0.16	0.84	0.83	0.24	0.39	0.46	-0.03	2.68	0.41	\N	0.53	0.47	\N	\N	\N	\N	\N	\N	\N
Panama	2018	6.28	10.05	0.90	69.60	0.86	-0.12	0.84	0.88	0.22	0.28	\N	\N	2.53	0.40	\N	0.53	0.57	\N	\N	\N	\N	\N	\N	\N
Paraguay	2006	4.73	8.75	0.90	63.62	0.69	0.08	0.84	0.82	0.30	0.31	-0.52	-0.94	1.97	0.42	0.53	0.51	\N	\N	\N	\N	\N	\N	\N	\N
Paraguay	2007	5.27	8.79	0.86	63.84	0.70	0.15	0.93	0.87	0.22	0.17	-0.45	-0.90	2.06	0.39	0.53	0.51	\N	\N	\N	\N	\N	\N	\N	\N
Paraguay	2008	5.57	8.84	0.89	64.06	0.65	0.07	0.89	0.85	0.26	0.24	-0.42	-0.83	2.18	0.39	0.51	0.51	\N	\N	\N	\N	\N	\N	\N	\N
Paraguay	2009	5.58	8.78	0.90	64.28	0.72	0.04	0.86	0.83	0.19	0.52	-0.51	-0.76	2.32	0.42	0.49	0.51	0.60	0.17	\N	\N	\N	\N	\N	\N
Paraguay	2010	5.84	8.89	0.89	64.50	0.73	0.09	0.78	0.86	0.18	0.48	-0.46	-0.72	1.96	0.34	0.51	0.51	0.55	0.12	\N	\N	\N	\N	\N	\N
Paraguay	2011	5.68	8.92	0.87	64.62	0.67	0.21	0.76	0.81	0.19	0.37	-0.39	-0.69	1.99	0.35	0.52	0.51	0.49	\N	\N	\N	\N	\N	\N	\N
Paraguay	2012	5.82	8.90	0.93	64.74	0.75	0.22	0.77	0.84	0.21	0.30	-0.49	-0.73	1.71	0.29	0.48	0.51	0.51	\N	\N	\N	\N	\N	\N	\N
Paraguay	2013	5.94	9.02	0.94	64.86	0.91	0.06	0.90	0.92	0.22	0.37	-0.42	-0.76	1.90	0.32	0.48	0.51	0.34	\N	\N	\N	\N	\N	\N	\N
Paraguay	2014	5.12	9.05	0.96	64.98	0.76	0.01	0.76	0.94	0.22	0.19	-0.10	-0.71	1.93	0.38	0.51	0.51	0.42	\N	\N	\N	\N	\N	\N	\N
Paraguay	2015	5.56	9.06	0.91	65.10	0.81	0.00	0.86	0.87	0.22	0.18	-0.02	-0.71	2.09	0.38	0.48	0.51	0.44	\N	\N	\N	\N	\N	\N	\N
Paraguay	2016	5.80	9.09	0.94	65.30	0.85	-0.06	0.76	0.92	0.20	0.28	0.04	-0.63	1.96	0.34	0.48	0.51	0.48	\N	\N	\N	\N	\N	\N	\N
Paraguay	2017	5.71	9.09	0.90	65.50	0.89	0.02	0.81	0.90	0.23	0.38	0.04	-0.60	2.43	0.43	\N	0.51	0.45	\N	\N	\N	\N	\N	\N	\N
Peru	2006	4.81	9.00	0.87	65.34	0.67	-0.08	0.90	0.70	0.42	0.17	-0.37	-0.36	2.30	0.48	0.51	0.48	\N	\N	\N	\N	0.05	0.11	0.06	0.08
Peru	2007	5.21	9.07	0.76	65.58	0.64	-0.09	0.93	0.76	0.36	0.22	-0.33	-0.30	2.26	0.43	0.50	0.48	\N	\N	\N	\N	0.05	0.11	0.06	0.08
Peru	2008	5.13	9.14	0.78	65.82	0.64	-0.08	0.90	0.76	0.35	0.17	-0.37	-0.23	2.40	0.47	0.48	0.48	\N	\N	\N	\N	0.05	0.11	0.06	0.08
Peru	2009	5.52	9.14	0.80	66.06	0.64	-0.09	0.88	0.81	0.32	0.17	-0.55	-0.24	2.19	0.40	0.47	0.48	0.48	0.09	\N	\N	0.05	0.11	0.06	0.08
Peru	2010	5.61	9.21	0.81	66.30	0.76	-0.07	0.88	0.80	0.33	0.19	-0.44	-0.13	2.12	0.38	0.46	0.48	0.43	0.12	\N	\N	0.05	0.11	0.06	0.08
Peru	2011	5.89	9.25	0.76	66.48	0.77	-0.13	0.82	0.78	0.33	0.29	-0.31	-0.12	2.04	0.35	0.45	0.48	0.46	\N	\N	\N	0.05	0.11	0.06	0.08
Peru	2012	5.82	9.30	0.76	66.66	0.70	-0.09	0.87	0.76	0.40	0.27	-0.40	-0.15	2.10	0.36	0.45	0.48	0.52	\N	\N	\N	0.05	0.11	0.06	0.08
Peru	2013	5.78	9.34	0.80	66.84	0.70	-0.08	0.87	0.78	0.39	0.22	-0.36	-0.16	2.19	0.38	0.44	0.48	0.45	\N	\N	\N	0.05	0.11	0.06	0.08
Peru	2014	5.87	9.35	0.82	67.02	0.72	-0.15	0.88	0.76	0.32	0.24	-0.18	-0.21	2.05	0.35	0.43	0.48	0.39	\N	\N	\N	0.05	0.11	0.06	0.08
Peru	2015	5.58	9.37	0.80	67.20	0.80	-0.10	0.88	0.75	0.38	0.18	-0.09	-0.20	2.27	0.41	0.44	0.48	0.46	\N	\N	\N	0.05	0.11	0.06	0.08
Peru	2016	5.70	9.40	0.80	67.50	0.83	-0.14	0.87	0.82	0.34	0.28	0.03	-0.13	2.37	0.42	0.44	0.48	0.48	\N	\N	\N	0.05	0.11	0.06	0.08
Peru	2017	5.71	9.41	0.83	67.80	0.83	-0.16	0.90	0.79	0.39	0.25	0.01	-0.18	2.59	0.45	\N	0.48	0.48	\N	\N	\N	0.05	0.11	0.06	0.08
Peru	2018	5.68	9.43	0.85	68.10	0.83	-0.19	0.91	0.81	0.38	0.20	\N	\N	2.69	0.47	\N	0.48	0.50	\N	\N	\N	0.05	0.11	0.06	0.08
Philippines	2006	4.67	8.51	0.80	59.80	0.83	0.06	0.84	0.83	\N	0.57	-0.87	-0.39	2.34	0.50	\N	\N	\N	\N	\N	\N	0.05	0.08	\N	0.03
Philippines	2007	5.07	8.55	0.80	60.00	0.85	-0.03	0.88	0.78	0.38	0.62	-0.86	-0.31	2.11	0.42	\N	\N	\N	\N	\N	\N	0.05	0.08	\N	0.03
Philippines	2008	4.59	8.58	0.80	60.20	0.86	0.08	0.82	0.81	0.38	0.57	-0.96	-0.34	2.28	0.50	\N	\N	\N	\N	\N	\N	0.05	0.08	\N	0.03
Philippines	2009	4.88	8.57	0.78	60.40	0.87	0.00	0.80	0.85	0.31	0.60	-0.88	-0.37	2.24	0.46	\N	\N	0.52	0.13	\N	\N	0.05	0.08	\N	0.03
Philippines	2010	4.94	8.63	0.80	60.60	0.89	0.03	0.81	0.88	0.29	0.55	-0.84	-0.39	2.11	0.43	\N	\N	0.61	0.14	\N	\N	0.05	0.08	\N	0.03
Philippines	2011	4.99	8.65	0.79	60.80	0.88	0.07	0.78	0.85	0.36	0.72	-0.71	-0.33	2.38	0.48	\N	\N	0.58	\N	\N	\N	0.05	0.08	\N	0.03
Philippines	2012	5.00	8.70	0.81	61.00	0.91	0.05	0.77	0.87	0.35	0.76	-0.61	-0.26	2.47	0.49	\N	\N	0.52	\N	\N	\N	0.05	0.08	\N	0.03
Philippines	2013	4.98	8.75	0.85	61.20	0.91	0.02	0.76	0.80	0.33	0.75	-0.54	-0.18	2.54	0.51	\N	\N	0.52	\N	\N	\N	0.05	0.08	\N	0.03
Philippines	2014	5.31	8.79	0.81	61.40	0.90	-0.02	0.79	0.81	0.33	0.69	-0.28	-0.15	2.69	0.51	\N	\N	0.48	\N	\N	\N	0.05	0.08	\N	0.03
Philippines	2015	5.55	8.84	0.85	61.60	0.91	-0.06	0.76	0.81	0.35	0.67	-0.35	-0.18	2.67	0.48	\N	\N	0.49	\N	\N	\N	0.05	0.08	\N	0.03
Philippines	2016	5.43	8.89	0.82	61.70	0.91	-0.08	0.79	0.82	0.29	0.77	-0.61	-0.22	2.47	0.45	\N	\N	0.53	\N	\N	\N	0.05	0.08	\N	0.03
Philippines	2017	5.59	8.94	0.85	61.80	0.93	-0.15	0.71	0.77	0.34	0.84	-0.58	-0.23	2.60	0.46	\N	\N	0.50	\N	\N	\N	0.05	0.08	\N	0.03
Philippines	2018	5.87	8.99	0.85	61.90	0.92	-0.11	0.73	0.77	0.39	0.80	\N	\N	2.70	0.46	\N	\N	0.47	\N	\N	\N	0.05	0.08	\N	0.03
Poland	2005	5.59	9.75	0.92	66.30	0.78	\N	0.98	0.72	0.28	0.07	0.65	0.51	2.15	0.38	\N	\N	\N	\N	\N	0.34	0.17	\N	0.18	0.22
Poland	2007	5.89	9.88	0.91	66.70	0.77	-0.05	0.93	0.76	0.24	0.19	0.78	0.47	1.92	0.33	\N	\N	\N	\N	\N	0.34	0.17	\N	0.18	0.22
Poland	2009	5.77	9.95	0.92	67.10	0.82	0.07	0.90	0.69	0.25	0.28	0.98	0.64	1.93	0.33	\N	\N	\N	\N	\N	0.34	0.17	\N	0.18	0.22
Poland	2010	5.89	9.99	0.96	67.30	0.79	0.00	0.90	0.74	0.23	0.33	1.03	0.70	1.94	0.33	\N	\N	0.39	0.28	\N	0.34	0.17	\N	0.18	0.22
Poland	2011	5.65	10.04	0.90	67.46	0.87	-0.07	0.91	0.73	0.22	0.27	1.05	0.72	1.96	0.35	\N	\N	0.37	\N	\N	0.34	0.17	\N	0.18	0.22
Poland	2012	5.88	10.05	0.94	67.62	0.81	-0.03	0.89	0.79	0.27	0.27	1.06	0.77	1.88	0.32	\N	\N	0.35	\N	\N	0.34	0.17	\N	0.18	0.22
Poland	2013	5.75	10.07	0.91	67.78	0.78	-0.14	0.92	0.78	0.24	0.16	0.99	0.80	1.91	0.33	\N	\N	0.30	\N	\N	0.34	0.17	\N	0.18	0.22
Poland	2014	5.75	10.10	0.92	67.94	0.88	-0.07	0.90	0.78	0.22	0.25	0.97	0.84	2.05	0.36	\N	\N	0.38	\N	\N	0.34	0.17	\N	0.18	0.22
Poland	2015	6.01	10.14	0.89	68.10	0.79	-0.10	0.81	0.73	0.24	0.21	0.96	0.82	1.88	0.31	\N	\N	0.36	\N	\N	0.34	0.17	\N	0.18	0.22
Poland	2016	6.16	10.17	0.92	68.50	0.87	-0.10	0.85	0.78	0.22	0.38	0.68	0.76	1.85	0.30	\N	\N	0.31	\N	\N	0.34	0.17	\N	0.18	0.22
Poland	2017	6.20	10.21	0.88	68.90	0.83	-0.13	\N	0.68	0.20	0.50	0.65	0.68	1.63	0.26	\N	\N	0.26	\N	\N	0.34	0.17	\N	0.18	0.22
Portugal	2006	5.41	10.20	0.91	69.84	0.88	-0.18	0.88	0.71	0.33	0.45	1.09	0.99	2.23	0.41	0.38	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Portugal	2008	5.72	10.23	0.89	70.32	0.65	-0.22	0.93	0.70	0.31	0.34	1.10	1.07	2.05	0.36	0.37	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Portugal	2010	5.09	10.21	0.86	70.80	0.72	-0.11	0.95	0.74	0.27	0.26	0.91	0.97	2.07	0.41	0.36	0.37	0.44	0.24	\N	\N	\N	\N	\N	\N
Portugal	2011	5.22	10.20	0.86	71.00	0.88	-0.18	0.96	0.73	0.28	0.21	0.92	0.93	2.03	0.39	0.36	0.37	0.39	\N	\N	\N	\N	\N	\N	\N
Portugal	2012	4.99	10.16	0.87	71.20	0.77	-0.10	0.96	0.73	0.37	0.23	0.90	0.97	2.49	0.50	0.36	0.37	0.43	\N	\N	\N	\N	\N	\N	\N
Portugal	2013	5.16	10.15	0.87	71.40	0.79	-0.12	0.95	0.70	0.35	0.18	0.91	1.01	2.25	0.44	0.36	0.37	0.43	\N	\N	\N	\N	\N	\N	\N
Portugal	2014	5.13	10.17	0.86	71.60	0.85	-0.13	0.94	0.71	0.36	0.23	0.96	0.96	2.36	0.46	0.36	0.37	0.44	\N	\N	\N	\N	\N	\N	\N
Portugal	2015	5.08	10.19	0.87	71.80	0.80	-0.17	0.94	0.66	0.37	0.22	1.02	1.07	2.32	0.46	0.36	0.37	0.43	\N	\N	\N	\N	\N	\N	\N
Portugal	2016	5.45	10.21	0.90	72.00	0.84	-0.23	0.92	0.68	0.33	0.35	1.07	1.02	2.13	0.39	\N	0.37	0.45	\N	\N	\N	\N	\N	\N	\N
Portugal	2017	5.71	10.24	0.90	72.20	0.91	-0.18	0.88	0.65	0.29	0.50	1.14	1.06	2.21	0.39	\N	0.37	0.45	\N	\N	\N	\N	\N	\N	\N
Portugal	2018	5.92	10.26	0.89	72.40	0.88	-0.26	0.88	0.68	0.32	0.52	\N	\N	2.17	0.37	\N	0.37	0.42	\N	\N	\N	\N	\N	\N	\N
Qatar	2009	6.42	11.67	0.89	66.58	0.86	0.20	0.18	0.68	0.26	0.89	0.11	1.03	1.62	0.25	\N	\N	0.47	0.25	\N	\N	\N	\N	\N	0.21
Qatar	2010	6.85	11.74	\N	66.70	\N	0.07	\N	\N	\N	\N	0.07	0.93	2.02	0.30	\N	\N	0.45	\N	\N	\N	\N	\N	\N	0.21
Qatar	2011	6.59	11.77	0.86	67.02	0.90	-0.02	\N	0.76	0.33	\N	0.04	0.76	2.32	0.35	\N	\N	0.57	\N	\N	\N	\N	\N	\N	0.21
Qatar	2012	6.61	11.74	0.84	67.34	0.92	0.13	\N	0.77	0.32	\N	0.15	0.94	2.17	0.33	\N	\N	0.56	\N	\N	\N	\N	\N	\N	0.21
Qatar	2015	6.37	11.69	\N	68.30	\N	\N	\N	\N	\N	\N	-0.07	0.82	2.26	0.35	\N	\N	0.65	\N	\N	\N	\N	\N	\N	0.21
Romania	2005	5.05	9.59	0.84	64.00	0.80	\N	0.96	0.64	0.35	0.27	0.25	-0.11	2.28	0.45	\N	0.37	\N	\N	\N	\N	0.18	\N	0.20	0.08
Romania	2007	5.39	9.75	0.74	64.48	0.69	-0.19	0.95	0.64	0.28	0.20	0.35	-0.02	2.10	0.39	0.38	0.37	\N	\N	\N	\N	0.18	\N	0.20	0.08
Romania	2009	5.37	9.80	0.81	64.96	0.61	-0.20	0.97	0.55	0.27	0.23	0.41	0.01	2.07	0.39	0.36	0.37	0.50	0.16	\N	\N	0.18	\N	0.20	0.08
Romania	2010	4.91	9.77	0.69	65.20	0.57	-0.09	0.97	0.60	0.34	0.09	0.35	0.05	2.33	0.48	0.36	0.37	0.43	0.15	\N	\N	0.18	\N	0.20	0.08
Romania	2011	5.02	9.80	0.75	65.42	0.65	-0.14	0.96	0.54	0.29	0.12	0.28	0.04	2.27	0.45	0.36	0.37	0.36	\N	\N	\N	0.18	\N	0.20	0.08
Romania	2012	5.17	9.81	0.74	65.64	0.64	-0.11	0.96	0.56	0.34	0.24	0.20	0.01	2.45	0.47	0.37	0.37	0.43	\N	\N	\N	0.18	\N	0.20	0.08
Romania	2013	5.08	9.85	0.78	65.86	0.65	-0.13	0.95	0.64	0.33	0.24	0.25	0.12	2.32	0.46	0.37	0.37	0.48	\N	\N	\N	0.18	\N	0.20	0.08
Romania	2014	5.73	9.89	0.75	66.08	0.75	-0.10	0.96	0.65	0.33	0.24	0.24	0.15	2.36	0.41	0.36	0.37	0.48	\N	\N	\N	0.18	\N	0.20	0.08
Romania	2015	5.78	9.93	0.79	66.30	0.80	-0.14	0.96	0.71	0.31	0.25	0.34	0.17	2.12	0.37	0.36	0.37	0.41	\N	\N	\N	0.18	\N	0.20	0.08
Romania	2016	5.97	9.98	0.81	66.60	0.82	-0.12	0.95	0.69	0.26	0.18	0.41	0.19	2.20	0.37	\N	0.37	0.37	\N	\N	\N	0.18	\N	0.20	0.08
Romania	2017	6.09	10.06	0.81	66.90	0.84	-0.16	0.93	0.73	0.23	0.30	0.29	0.17	2.14	0.35	\N	0.37	0.41	\N	\N	\N	0.18	\N	0.20	0.08
Romania	2018	6.15	10.11	0.82	67.20	0.85	-0.22	0.92	0.74	0.30	0.23	\N	\N	2.20	0.36	\N	0.37	0.35	\N	\N	\N	0.18	\N	0.20	0.08
Russia	2006	4.96	9.95	0.89	58.68	0.64	-0.32	0.94	0.61	0.23	0.37	-0.91	-0.68	2.05	0.41	0.41	0.40	\N	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2007	5.22	10.03	0.88	59.26	0.59	-0.29	0.93	0.62	0.19	0.37	-0.89	-0.67	1.96	0.38	0.42	0.40	\N	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2008	5.62	10.09	0.88	59.84	0.64	-0.32	0.92	0.59	0.17	0.56	-0.81	-0.71	2.14	0.38	0.42	0.40	\N	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2009	5.16	10.00	0.91	60.42	0.62	-0.29	0.95	0.57	0.17	0.55	-0.93	-0.66	1.98	0.38	0.40	0.40	0.39	0.25	\N	0.35	0.23	\N	0.25	0.28
Russia	2010	5.38	10.05	0.91	61.00	0.61	-0.31	0.94	0.59	0.17	0.51	-0.91	-0.67	1.98	0.37	0.40	0.40	0.35	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2011	5.39	10.10	0.88	61.42	0.63	-0.29	0.94	0.60	0.17	0.48	-0.94	-0.65	2.01	0.37	0.40	0.40	0.35	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2012	5.62	10.13	0.90	61.84	0.61	-0.30	0.94	0.61	0.17	0.45	-0.90	-0.65	2.08	0.37	0.41	0.40	0.38	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2013	5.54	10.15	0.88	62.26	0.66	-0.30	0.93	0.68	0.18	0.39	-0.88	-0.63	1.94	0.35	0.41	0.40	0.34	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2014	6.04	10.14	0.93	62.68	0.74	-0.28	0.87	0.69	0.15	0.64	-0.99	-0.54	2.03	0.34	0.40	0.40	0.34	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2015	6.00	10.11	0.92	63.10	0.69	-0.18	0.91	0.68	0.13	0.65	-1.06	-0.61	2.07	0.35	0.38	0.40	0.33	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2016	5.85	10.10	0.91	63.50	0.71	-0.19	0.93	0.64	0.14	0.58	-1.04	-0.56	2.09	0.36	\N	0.40	0.37	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2017	5.58	10.12	0.90	63.90	0.73	-0.15	0.86	0.71	0.19	0.56	-0.88	-0.56	2.12	0.38	\N	0.40	0.38	\N	\N	0.35	0.23	\N	0.25	0.28
Russia	2018	5.51	10.13	0.91	64.30	0.73	-0.16	0.87	0.67	0.20	0.46	\N	\N	2.18	0.40	\N	0.40	0.40	\N	\N	0.35	0.23	\N	0.25	0.28
Rwanda	2006	4.21	7.02	0.72	49.88	0.92	\N	0.30	0.74	0.19	0.97	-0.95	-0.45	1.56	0.37	\N	0.48	\N	\N	\N	\N	\N	\N	0.05	0.17
Rwanda	2008	4.36	7.14	0.49	53.04	0.75	0.02	0.29	0.64	0.22	0.92	-0.82	-0.25	1.54	0.35	\N	0.48	\N	\N	\N	\N	\N	\N	0.05	0.17
Rwanda	2009	4.03	7.17	0.56	54.62	0.77	0.00	0.41	0.68	0.11	0.95	-0.90	-0.22	1.55	0.38	\N	0.48	0.52	0.30	\N	\N	\N	\N	0.05	0.17
Rwanda	2011	4.10	7.27	0.57	56.82	0.83	-0.04	0.16	0.67	0.15	\N	-0.75	-0.01	1.75	0.43	\N	0.48	0.54	\N	\N	\N	\N	\N	0.05	0.17
Rwanda	2012	3.33	7.33	0.64	57.44	0.84	-0.01	0.08	0.70	0.13	\N	-0.75	0.03	1.54	0.46	\N	0.48	0.62	\N	\N	\N	\N	\N	0.05	0.17
Rwanda	2013	3.47	7.35	0.75	58.06	0.90	-0.03	0.12	0.76	0.17	\N	-0.66	0.12	1.55	0.45	0.45	0.48	0.65	\N	\N	\N	\N	\N	0.05	0.17
Rwanda	2014	3.60	7.40	0.75	58.68	0.89	-0.02	0.08	0.76	0.13	\N	-0.71	0.26	1.57	0.44	\N	0.48	0.62	\N	\N	\N	\N	\N	0.05	0.17
Rwanda	2015	3.48	7.46	0.68	59.30	0.91	0.03	0.09	0.72	0.21	\N	-0.56	0.22	1.72	0.49	\N	0.48	0.71	\N	\N	\N	\N	\N	0.05	0.17
Rwanda	2016	3.33	7.49	0.67	59.90	0.91	0.03	0.16	0.75	0.29	0.99	-0.61	0.24	1.90	0.57	\N	0.48	0.60	\N	\N	\N	\N	\N	0.05	0.17
Rwanda	2017	3.11	7.53	0.52	60.50	0.91	0.05	0.21	0.76	0.36	0.98	-0.54	0.29	2.13	0.68	\N	0.48	0.71	\N	\N	\N	\N	\N	0.05	0.17
Rwanda	2018	3.56	7.57	0.62	61.10	0.92	0.06	0.16	0.79	0.31	0.99	\N	\N	2.33	0.65	\N	0.48	0.65	\N	\N	\N	\N	\N	0.05	0.17
Saudi Arabia	2005	7.08	10.73	0.87	63.50	\N	\N	0.51	0.73	0.24	\N	-0.89	-0.09	1.82	0.26	\N	\N	\N	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2007	7.27	10.72	0.89	63.86	0.62	-0.01	\N	0.77	0.23	\N	-1.09	-0.05	1.63	0.22	\N	\N	\N	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2008	6.81	10.75	0.82	64.04	0.53	-0.04	0.51	0.71	0.20	\N	-1.03	0.02	1.34	0.20	\N	\N	\N	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2009	6.15	10.70	0.92	64.22	0.64	-0.13	0.45	0.74	0.32	\N	-1.16	0.02	1.92	0.31	\N	\N	0.35	0.37	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2010	6.31	10.72	0.88	64.40	0.68	-0.05	\N	0.65	0.30	\N	-1.01	0.09	2.23	0.35	\N	\N	0.36	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2011	6.70	10.79	0.83	64.60	0.60	-0.16	\N	0.73	0.24	\N	-1.19	-0.13	2.11	0.31	\N	\N	0.42	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2012	6.40	10.81	0.87	64.80	0.56	-0.14	\N	0.72	0.22	\N	-1.17	0.06	2.13	0.33	\N	\N	0.26	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2013	6.50	10.81	0.83	65.00	0.66	-0.10	\N	0.74	0.28	\N	-1.15	0.07	2.37	0.37	\N	\N	0.41	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2014	6.28	10.82	0.82	65.20	0.76	-0.09	\N	0.71	0.31	\N	-1.08	0.11	2.55	0.41	\N	\N	0.70	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2015	6.35	10.83	0.82	65.40	0.82	-0.06	\N	0.72	0.33	\N	-1.23	0.10	2.52	0.40	\N	\N	0.52	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2016	6.47	10.83	0.89	65.70	0.77	-0.15	\N	0.79	0.27	\N	-1.10	0.22	2.07	0.32	\N	\N	0.58	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2017	6.29	10.80	0.84	66.00	0.81	-0.15	\N	0.77	0.31	\N	-1.15	0.18	2.51	0.40	\N	\N	0.45	\N	\N	\N	\N	0.51	\N	\N
Saudi Arabia	2018	6.36	10.80	0.87	66.30	0.85	-0.21	\N	0.76	0.29	\N	\N	\N	2.32	0.37	\N	\N	0.47	\N	\N	\N	\N	0.51	\N	\N
Senegal	2006	4.42	7.65	0.76	53.38	0.74	-0.04	0.81	0.74	0.22	0.37	-0.10	-0.30	1.48	0.34	\N	0.40	\N	\N	\N	\N	\N	\N	\N	\N
Senegal	2007	4.68	7.67	0.72	54.06	0.70	0.01	0.83	0.71	0.20	0.35	-0.21	-0.39	1.60	0.34	\N	0.40	\N	\N	\N	\N	\N	\N	\N	\N
Senegal	2008	4.68	7.68	0.76	54.74	0.61	-0.02	0.88	0.67	0.25	0.29	-0.18	-0.31	1.29	0.28	\N	0.40	\N	\N	\N	\N	\N	\N	\N	\N
Senegal	2009	4.34	7.68	0.81	55.42	0.56	-0.03	0.92	0.76	0.23	0.26	-0.24	-0.42	1.42	0.33	\N	0.40	0.44	0.28	\N	\N	\N	\N	\N	\N
Senegal	2010	4.37	7.69	0.76	56.10	0.78	-0.07	0.85	0.77	0.14	0.29	-0.34	-0.47	1.53	0.35	\N	0.40	0.41	\N	\N	\N	\N	\N	\N	\N
Senegal	2011	3.83	7.68	0.60	56.56	0.64	-0.15	0.87	0.75	0.18	0.30	-0.25	-0.42	1.71	0.44	0.40	0.40	0.43	\N	\N	\N	\N	\N	\N	\N
Senegal	2012	3.67	7.69	0.71	57.02	0.67	-0.02	0.85	0.77	0.21	0.65	-0.06	-0.27	1.70	0.46	\N	0.40	0.45	\N	\N	\N	\N	\N	\N	\N
Senegal	2013	3.65	7.69	0.82	57.48	0.64	-0.04	0.84	0.68	0.17	0.61	0.00	-0.22	1.52	0.42	\N	0.40	0.39	\N	\N	\N	\N	\N	\N	\N
Senegal	2014	4.39	7.70	0.86	57.94	0.69	-0.03	0.70	0.72	0.16	0.66	0.05	-0.16	1.37	0.31	\N	0.40	0.39	\N	\N	\N	\N	\N	\N	\N
Senegal	2015	4.62	7.74	0.70	58.40	0.72	-0.10	0.77	0.71	0.21	0.62	0.08	-0.17	1.54	0.33	\N	0.40	0.53	\N	\N	\N	\N	\N	\N	\N
Senegal	2016	4.59	7.77	0.84	58.80	0.74	-0.07	0.79	0.78	0.24	0.63	0.07	-0.18	1.82	0.40	\N	0.40	0.42	\N	\N	\N	\N	\N	\N	\N
Senegal	2017	4.68	7.81	0.74	59.20	0.69	-0.03	0.83	0.75	0.29	0.61	0.14	-0.18	2.01	0.43	\N	0.40	0.44	\N	\N	\N	\N	\N	\N	\N
Senegal	2018	4.77	7.85	0.74	59.60	0.63	-0.06	0.80	0.71	0.25	0.59	\N	\N	1.96	0.41	\N	0.40	0.39	\N	\N	\N	\N	\N	\N	\N
Serbia	2007	4.75	9.41	0.84	65.60	0.45	-0.17	0.90	0.58	0.33	0.34	-0.14	-0.35	2.05	0.43	\N	\N	\N	\N	\N	\N	0.28	0.18	\N	\N
Serbia	2009	4.38	9.44	0.77	66.00	0.37	-0.18	0.96	0.54	0.44	\N	-0.07	-0.22	2.06	0.47	\N	\N	0.37	0.10	\N	\N	0.28	0.18	\N	\N
Serbia	2010	4.46	9.45	0.73	66.20	0.46	-0.17	0.97	0.53	0.42	\N	-0.07	-0.18	2.00	0.45	\N	\N	0.41	0.16	\N	\N	0.28	0.18	\N	\N
Serbia	2011	4.82	9.47	0.77	66.36	0.44	-0.19	0.98	0.55	0.41	\N	0.00	-0.16	2.22	0.46	\N	\N	0.37	0.17	\N	\N	0.28	0.18	\N	\N
Serbia	2012	5.15	9.46	0.82	66.52	0.46	-0.13	0.95	0.51	0.37	0.22	-0.01	-0.21	2.46	0.48	\N	\N	0.35	\N	\N	\N	0.28	0.18	\N	\N
Serbia	2013	5.10	9.50	0.83	66.68	0.53	-0.10	0.91	0.53	0.40	0.34	0.10	-0.19	2.19	0.43	\N	\N	0.33	\N	\N	\N	0.28	0.18	\N	\N
Serbia	2014	5.11	9.48	0.78	66.84	0.53	0.07	0.91	0.50	0.33	0.45	0.20	-0.04	2.20	0.43	\N	\N	0.37	\N	\N	\N	0.28	0.18	\N	\N
Serbia	2015	5.32	9.49	0.82	67.00	0.55	-0.06	0.86	0.50	0.30	0.39	0.24	-0.03	2.14	0.40	\N	\N	0.32	\N	\N	\N	0.28	0.18	\N	\N
Serbia	2016	5.75	9.53	0.89	67.40	0.61	-0.07	0.89	0.53	0.30	0.45	0.17	-0.08	2.44	0.42	\N	\N	0.35	\N	\N	\N	0.28	0.18	\N	\N
Serbia	2017	5.12	9.55	0.88	67.80	0.68	-0.08	0.85	0.51	0.33	0.51	0.11	-0.09	2.39	0.47	\N	\N	0.37	\N	\N	\N	0.28	0.18	\N	\N
Serbia	2018	5.94	9.58	0.85	68.20	0.74	-0.10	0.86	0.56	0.30	0.48	\N	\N	2.25	0.38	\N	\N	0.36	\N	\N	\N	0.28	0.18	\N	\N
Sierra Leone	2006	3.63	6.98	0.56	40.30	0.68	0.11	0.84	0.51	0.38	0.54	-0.31	-1.07	1.82	0.50	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Sierra Leone	2007	3.59	7.03	0.69	41.20	0.72	0.26	0.83	0.58	0.29	0.56	-0.14	-1.03	1.79	0.50	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Sierra Leone	2008	3.00	7.05	0.59	42.10	0.72	0.16	0.92	0.53	0.37	0.69	-0.19	-1.01	1.69	0.56	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Sierra Leone	2010	4.13	7.09	0.81	43.90	0.73	0.02	0.91	0.51	0.29	0.65	-0.20	-0.92	2.57	0.62	\N	0.37	\N	0.16	\N	\N	\N	\N	\N	\N
Sierra Leone	2011	4.50	7.13	0.78	44.32	0.77	0.01	0.85	0.45	0.30	0.58	-0.19	-0.90	2.16	0.48	0.34	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Sierra Leone	2013	4.51	7.41	0.71	45.16	0.72	-0.06	0.86	0.52	0.42	0.56	-0.26	-0.92	2.69	0.60	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Sierra Leone	2014	4.50	7.43	0.87	45.58	0.68	0.04	0.79	0.57	0.33	0.59	-0.20	-0.98	2.77	0.62	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Sierra Leone	2015	4.91	7.18	0.61	46.00	0.62	0.06	0.82	0.63	0.41	0.65	-0.18	-0.96	3.51	0.72	\N	0.37	\N	\N	\N	\N	\N	\N	\N	\N
Sierra Leone	2016	4.73	7.22	0.66	47.60	0.68	0.11	0.86	0.58	0.46	0.70	-0.18	-0.93	3.53	0.75	\N	0.37	0.67	\N	\N	\N	\N	\N	\N	\N
Sierra Leone	2017	4.09	7.24	0.65	49.20	0.71	0.09	0.85	0.60	0.50	0.74	-0.09	-0.88	2.60	0.63	\N	0.37	0.58	\N	\N	\N	\N	\N	\N	\N
Sierra Leone	2018	4.31	7.27	0.65	50.80	0.72	0.10	0.86	0.55	0.47	0.78	\N	\N	3.05	0.71	\N	0.37	0.69	\N	\N	\N	\N	\N	\N	\N
Singapore	2006	6.46	11.09	0.90	73.60	0.76	0.13	\N	0.75	0.27	0.91	0.43	1.93	1.30	0.20	\N	\N	\N	\N	\N	\N	\N	0.17	\N	0.37
Singapore	2007	6.83	11.13	0.92	73.90	0.87	0.28	0.06	0.70	0.11	0.93	0.41	2.01	1.31	0.19	\N	\N	\N	\N	\N	\N	\N	0.17	\N	0.37
Singapore	2008	6.64	11.10	0.85	74.20	0.66	0.04	0.07	0.72	0.26	0.91	0.51	2.04	1.53	0.23	\N	\N	\N	\N	\N	\N	\N	0.17	\N	0.37
Singapore	2009	6.14	11.06	0.87	74.50	0.78	-0.08	0.04	0.50	0.21	0.97	0.47	1.96	1.45	0.24	\N	\N	0.33	0.21	\N	\N	\N	0.17	\N	0.37
Singapore	2010	6.53	11.19	0.86	74.80	0.85	-0.03	0.06	0.60	0.13	0.90	0.48	1.96	1.48	0.23	\N	\N	0.44	0.33	\N	\N	\N	0.17	\N	0.37
Singapore	2011	6.56	11.23	0.90	75.02	0.82	-0.16	0.10	0.48	0.14	0.83	0.54	1.93	1.67	0.25	\N	\N	0.42	\N	\N	\N	\N	0.17	\N	0.37
Singapore	2013	6.53	11.28	0.81	75.46	0.83	0.10	0.24	0.77	0.15	0.86	0.71	1.96	1.52	0.23	\N	\N	0.46	\N	\N	\N	\N	0.17	\N	0.37
Singapore	2014	7.06	11.30	0.82	75.68	0.83	0.14	0.13	0.84	0.18	0.84	0.54	2.08	1.43	0.20	\N	\N	0.51	\N	\N	\N	\N	0.17	\N	0.37
Singapore	2015	6.62	11.31	0.87	75.90	0.89	0.14	0.10	0.80	0.14	0.91	0.57	2.10	1.61	0.24	\N	\N	0.39	\N	\N	\N	\N	0.17	\N	0.37
Singapore	2016	6.03	11.32	0.93	76.20	0.90	0.13	0.05	0.82	0.11	0.93	0.67	2.07	1.30	0.22	\N	\N	0.43	\N	\N	\N	\N	0.17	\N	0.37
Singapore	2017	6.38	11.36	0.90	76.50	0.93	0.13	0.16	0.80	0.18	0.93	0.71	2.07	1.42	0.22	\N	\N	0.56	\N	\N	\N	\N	0.17	\N	0.37
Singapore	2018	6.37	\N	0.90	76.80	0.92	\N	0.10	0.79	0.11	0.89	\N	\N	1.58	0.25	\N	\N	0.40	\N	\N	\N	\N	0.17	\N	0.37
Slovakia	2006	5.26	9.99	0.95	66.00	0.54	-0.06	0.95	0.68	0.31	0.16	0.86	0.75	1.93	0.37	0.26	0.27	\N	\N	\N	0.23	0.26	\N	\N	\N
Slovakia	2010	6.05	10.13	0.92	66.80	0.64	-0.11	0.91	0.67	0.28	0.31	0.98	0.68	1.88	0.31	0.27	0.27	0.28	0.21	\N	0.23	0.26	\N	\N	\N
Slovakia	2011	5.95	10.16	0.92	67.04	0.73	0.00	0.91	0.64	0.29	0.28	0.97	0.68	1.87	0.31	0.27	0.27	0.28	\N	\N	0.23	0.26	\N	\N	\N
Slovakia	2012	5.91	10.17	0.93	67.28	0.62	-0.04	0.91	0.66	0.30	0.37	1.03	0.62	2.02	0.34	0.26	0.27	0.31	\N	\N	0.23	0.26	\N	\N	\N
Slovakia	2013	5.94	10.19	0.91	67.52	0.60	-0.06	0.91	0.70	0.28	0.28	1.04	0.57	1.89	0.32	0.28	0.27	0.28	\N	\N	0.23	0.26	\N	\N	\N
Slovakia	2014	6.14	10.21	0.92	67.76	0.63	-0.14	0.91	0.70	0.27	0.31	1.00	0.61	1.88	0.31	0.26	0.27	0.29	\N	\N	0.23	0.26	\N	\N	\N
Slovakia	2015	6.16	10.25	0.94	68.00	0.59	-0.14	0.93	0.71	0.27	0.28	0.92	0.58	1.95	0.32	0.27	0.27	0.29	\N	\N	0.23	0.26	\N	\N	\N
Slovakia	2016	5.99	10.28	0.95	68.30	0.70	-0.07	0.92	0.77	0.23	0.37	0.84	0.67	1.92	0.32	\N	0.27	0.28	\N	\N	0.23	0.26	\N	\N	\N
Slovakia	2017	6.37	10.31	0.91	68.60	0.71	-0.07	0.92	0.79	0.21	0.34	0.91	0.61	1.90	0.30	\N	0.27	0.29	\N	\N	0.23	0.26	\N	\N	\N
Slovakia	2018	6.24	10.35	0.92	68.90	0.76	-0.18	0.91	0.75	0.25	0.33	\N	\N	1.78	0.28	\N	0.27	0.27	\N	\N	0.23	0.26	\N	\N	\N
Slovenia	2006	5.81	10.25	0.94	68.00	0.94	0.04	0.71	0.65	0.31	0.48	1.08	0.93	2.03	0.35	0.24	0.25	\N	\N	\N	\N	0.15	\N	0.18	0.20
Slovenia	2009	5.83	10.26	0.92	68.90	0.90	-0.02	0.80	0.64	0.30	0.37	0.99	1.05	2.16	0.37	0.25	0.25	0.42	0.15	\N	\N	0.15	\N	0.18	0.20
Slovenia	2010	6.08	10.26	0.92	69.20	0.90	0.03	0.84	0.67	0.30	0.33	0.96	0.93	2.17	0.36	0.25	0.25	0.37	\N	\N	\N	0.15	\N	0.18	0.20
Slovenia	2011	6.04	10.27	0.93	69.40	0.91	-0.03	0.89	0.65	0.29	0.18	1.01	0.92	2.19	0.36	0.25	0.25	0.38	\N	\N	\N	0.15	\N	0.18	0.20
Slovenia	2012	6.06	10.24	0.92	69.60	0.90	-0.02	0.89	0.66	0.28	0.24	0.97	0.88	2.10	0.35	0.26	0.25	0.34	\N	\N	\N	0.15	\N	0.18	0.20
Slovenia	2013	5.97	10.23	0.93	69.80	0.89	0.03	0.92	0.64	0.27	0.16	0.94	0.84	2.11	0.35	0.26	0.25	0.35	\N	\N	\N	0.15	\N	0.18	0.20
Slovenia	2014	5.68	10.25	0.91	70.00	0.89	0.05	0.91	0.62	0.29	0.18	0.96	0.85	2.05	0.36	0.26	0.25	0.38	\N	\N	\N	0.15	\N	0.18	0.20
Slovenia	2015	5.74	10.28	0.90	70.20	0.90	0.01	0.89	0.66	0.26	0.20	0.97	0.84	2.05	0.36	0.25	0.25	0.40	\N	\N	\N	0.15	\N	0.18	0.20
Slovenia	2016	5.94	10.31	0.93	70.50	0.90	-0.06	0.84	0.63	0.27	0.25	1.00	0.92	2.11	0.35	\N	0.25	0.36	\N	\N	\N	0.15	\N	0.18	0.20
Slovenia	2017	6.17	10.35	0.93	70.80	0.92	-0.03	0.83	0.62	0.29	0.24	0.95	0.90	1.98	0.32	\N	0.25	0.36	\N	\N	\N	0.15	\N	0.18	0.20
Slovenia	2018	6.25	10.40	0.94	71.10	0.94	-0.12	0.84	0.64	0.28	0.24	\N	\N	1.95	0.31	\N	0.25	0.35	\N	\N	\N	0.15	\N	0.18	0.20
Somalia	2014	5.53	\N	0.61	49.60	0.87	\N	0.46	0.83	0.21	0.63	-2.32	-2.14	2.60	0.47	\N	\N	0.62	\N	\N	\N	\N	\N	\N	\N
Somalia	2015	5.35	\N	0.60	50.10	0.97	\N	0.41	0.90	0.19	0.78	-2.19	-2.07	2.22	0.41	\N	\N	0.41	\N	\N	\N	\N	\N	\N	\N
Somalia	2016	4.67	\N	0.59	50.00	0.92	\N	0.44	0.89	0.19	0.70	-2.13	-2.13	2.18	0.47	\N	\N	0.49	\N	\N	\N	\N	\N	\N	\N
Somaliland region	2009	4.99	\N	0.88	\N	0.75	\N	0.51	0.82	0.11	0.54	\N	\N	1.93	0.39	\N	\N	0.56	0.41	\N	\N	\N	\N	\N	\N
Somaliland region	2010	4.66	\N	0.83	\N	0.82	\N	0.47	0.77	0.08	0.59	\N	\N	1.69	0.36	\N	\N	0.44	\N	\N	\N	\N	\N	\N	\N
Somaliland region	2011	4.93	\N	0.79	\N	0.86	\N	0.36	0.75	0.12	0.76	\N	\N	1.97	0.40	\N	\N	0.54	\N	\N	\N	\N	\N	\N	\N
Somaliland region	2012	5.06	\N	0.79	\N	0.76	\N	0.33	0.74	0.15	0.65	\N	\N	1.85	0.37	\N	\N	0.53	\N	\N	\N	\N	\N	\N	\N
South Africa	2006	5.08	9.33	0.91	48.02	0.65	-0.09	\N	0.80	0.22	0.60	0.35	0.46	2.14	0.42	\N	0.62	\N	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2007	5.20	9.37	0.79	48.64	0.69	-0.16	0.86	0.74	0.21	0.66	0.40	0.33	1.75	0.34	\N	0.62	\N	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2008	5.35	9.39	0.81	49.26	0.75	-0.10	0.87	0.77	0.21	0.46	0.31	0.32	1.80	0.34	0.63	0.62	\N	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2009	5.22	9.37	0.88	49.88	0.74	-0.16	0.90	0.73	0.23	0.52	0.23	0.30	2.22	0.42	\N	0.62	0.57	0.17	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2010	4.65	9.38	0.92	50.50	0.74	-0.21	0.79	0.79	0.12	0.59	0.29	0.26	1.89	0.41	0.63	0.62	0.54	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2011	4.93	9.40	0.86	51.46	0.84	-0.16	0.82	0.76	0.23	0.63	0.31	0.26	1.85	0.38	\N	0.62	0.65	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2012	5.13	9.41	0.91	52.42	0.59	-0.17	0.84	0.76	0.18	0.43	0.28	0.18	2.18	0.42	\N	0.62	0.57	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2013	3.66	9.42	0.84	53.38	0.71	-0.09	0.80	0.77	0.17	0.51	0.28	0.24	1.96	0.54	\N	0.62	0.63	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2014	4.83	9.42	0.88	54.34	0.79	-0.13	0.82	0.80	0.24	0.49	0.25	0.19	2.05	0.42	0.63	0.62	0.63	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2015	4.89	9.42	0.90	55.30	0.86	-0.14	0.85	0.78	0.16	0.58	0.22	0.17	1.99	0.41	\N	0.62	0.57	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2016	4.77	9.42	0.88	55.70	0.77	-0.08	0.81	0.79	0.30	0.48	0.25	0.18	2.78	0.58	\N	0.62	0.57	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2017	4.51	9.42	0.87	56.10	0.79	-0.14	0.86	0.78	0.27	0.42	0.18	0.12	2.42	0.54	\N	0.62	0.57	\N	0.29	0.28	0.18	0.12	\N	0.23
South Africa	2018	4.88	9.41	0.84	56.50	0.75	-0.06	0.84	0.81	0.28	0.52	\N	\N	2.71	0.56	\N	0.62	0.69	\N	0.29	0.28	0.18	0.12	\N	0.23
South Korea	2006	5.33	10.19	0.78	70.20	0.72	-0.06	0.80	0.65	0.34	0.23	0.56	0.75	2.22	0.42	0.32	0.32	\N	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2007	5.77	10.24	0.83	70.50	0.66	-0.06	0.80	0.69	0.23	0.24	0.63	0.94	2.00	0.35	\N	0.32	\N	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2008	5.39	10.26	0.75	70.80	0.52	-0.11	0.77	0.64	0.24	0.27	0.54	0.78	2.08	0.39	0.32	0.32	\N	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2009	5.65	10.26	0.81	71.10	0.60	-0.10	0.79	0.70	0.21	0.27	0.56	0.87	2.08	0.37	\N	0.32	0.44	0.26	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2010	6.12	10.32	0.82	71.40	0.68	-0.04	0.75	0.66	0.13	0.32	0.53	0.90	1.97	0.32	0.32	0.32	0.39	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2011	6.95	10.35	0.81	71.66	0.68	-0.05	0.83	0.66	0.17	0.28	0.57	0.95	2.06	0.30	\N	0.32	0.42	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2012	6.00	10.37	0.78	71.92	0.62	\N	0.84	0.66	0.21	0.23	0.50	0.90	2.07	0.34	0.32	0.32	0.39	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2013	5.96	10.39	0.80	72.18	0.64	-0.05	0.83	0.68	0.19	0.35	0.49	0.92	2.21	0.37	\N	0.32	0.41	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2014	5.80	10.42	0.74	72.44	0.62	-0.05	0.83	0.65	0.28	0.28	0.39	0.95	2.22	0.38	\N	0.32	0.43	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2015	5.78	10.44	0.77	72.70	0.62	-0.04	0.84	0.65	0.24	0.26	0.40	0.86	2.11	0.37	\N	0.32	0.42	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2016	5.97	10.46	0.81	73.00	0.59	0.02	0.86	0.68	0.23	0.24	0.40	0.95	2.13	0.36	\N	0.32	0.39	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2017	5.87	10.49	0.81	73.30	0.54	0.01	0.85	0.62	0.23	0.36	0.51	0.96	2.08	0.35	\N	0.32	0.39	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Korea	2018	5.84	10.51	0.80	73.60	0.60	-0.09	0.80	0.66	0.22	0.39	\N	\N	2.04	0.35	\N	0.32	0.40	\N	0.38	0.34	0.30	0.27	0.28	0.27
South Sudan	2014	3.83	7.57	0.55	49.84	0.57	0.02	0.74	0.61	0.43	0.45	-2.13	-1.79	3.04	0.79	\N	0.46	0.94	\N	\N	\N	\N	\N	\N	\N
South Sudan	2015	4.07	7.54	0.58	50.20	0.51	0.11	0.71	0.59	0.45	0.51	-1.99	-1.85	3.20	0.79	\N	0.46	0.77	\N	\N	\N	\N	\N	\N	\N
South Sudan	2016	2.89	7.36	0.53	50.60	0.44	0.02	0.79	0.61	0.55	0.46	-2.11	-1.96	2.91	1.01	\N	0.46	0.74	\N	\N	\N	\N	\N	\N	\N
South Sudan	2017	2.82	\N	0.56	51.00	0.46	\N	0.76	0.59	0.52	0.46	-2.14	-2.02	2.74	0.97	\N	0.46	0.70	\N	\N	\N	\N	\N	\N	\N
Spain	2005	7.15	10.40	0.96	71.50	0.92	\N	0.78	0.78	0.24	0.53	0.66	1.32	1.72	0.24	0.32	0.35	\N	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2007	6.99	10.44	0.96	72.06	0.78	-0.10	0.78	0.76	0.26	0.48	0.42	1.12	1.95	0.28	0.34	0.35	\N	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2008	7.29	10.44	0.95	72.34	0.83	-0.15	0.68	0.77	0.26	0.58	0.40	1.14	1.79	0.25	0.34	0.35	\N	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2009	6.20	10.39	0.93	72.62	0.75	-0.13	0.80	0.75	0.34	0.42	0.35	1.09	2.08	0.34	0.35	0.35	0.37	0.22	\N	0.29	0.29	0.33	0.20	0.19
Spain	2010	6.19	10.39	0.95	72.90	0.80	-0.14	0.84	0.72	0.32	0.30	0.40	1.11	2.00	0.32	0.35	0.35	0.38	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2011	6.52	10.38	0.94	73.02	0.82	-0.13	0.85	0.74	0.36	0.31	0.55	1.10	1.96	0.30	0.36	0.35	0.41	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2012	6.29	10.35	0.94	73.14	0.75	-0.06	0.84	0.75	0.37	0.34	0.52	1.07	2.04	0.32	0.35	0.35	0.36	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2013	6.15	10.33	0.93	73.26	0.76	-0.11	0.92	0.70	0.37	0.18	0.50	1.00	2.08	0.34	0.36	0.35	0.36	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2014	6.46	10.35	0.95	73.38	0.74	-0.03	0.85	0.72	0.34	0.21	0.62	0.87	1.76	0.27	0.36	0.35	0.42	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2015	6.38	10.38	0.96	73.50	0.73	-0.08	0.82	0.73	0.28	0.28	0.65	0.87	1.66	0.26	0.36	0.35	0.39	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2016	6.32	10.41	0.94	73.80	0.77	-0.05	0.82	0.65	0.30	0.30	0.73	0.90	1.61	0.25	\N	0.35	0.38	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2017	6.23	10.44	0.90	74.10	0.76	-0.04	0.79	0.63	0.30	0.27	0.65	0.87	1.81	0.29	\N	0.35	0.38	\N	\N	0.29	0.29	0.33	0.20	0.19
Spain	2018	6.51	10.47	0.91	74.40	0.72	-0.08	0.78	0.66	0.36	0.29	\N	\N	1.67	0.26	\N	0.35	0.36	\N	\N	0.29	0.29	0.33	0.20	0.19
Sri Lanka	2006	4.34	8.84	0.86	65.78	0.72	0.06	0.84	0.76	0.22	0.68	-0.87	-0.11	1.74	0.40	0.40	0.39	\N	\N	\N	\N	\N	\N	\N	\N
Sri Lanka	2007	4.41	8.90	0.84	65.86	0.74	0.11	0.85	0.71	0.22	0.73	-1.09	-0.10	1.75	0.40	\N	0.39	\N	\N	\N	\N	\N	\N	\N	\N
Sri Lanka	2008	4.43	8.95	0.82	65.94	0.83	0.16	0.86	0.79	0.15	0.72	-1.13	-0.18	1.77	0.40	\N	0.39	\N	\N	\N	\N	\N	\N	\N	\N
Sri Lanka	2009	4.21	8.98	0.83	66.02	0.80	0.30	0.69	0.77	0.17	0.92	-0.91	-0.23	1.99	0.47	0.36	0.39	0.35	0.14	\N	\N	\N	\N	\N	\N
Sri Lanka	2010	3.98	9.05	0.81	66.10	0.74	0.25	0.77	0.82	0.16	0.81	-0.72	-0.24	1.75	0.44	\N	0.39	0.32	0.17	\N	\N	\N	\N	\N	\N
Sri Lanka	2011	4.18	9.13	0.84	66.20	0.82	0.14	0.76	0.82	0.17	0.86	-0.63	-0.19	1.84	0.44	\N	0.39	0.38	\N	\N	\N	\N	\N	\N	\N
Sri Lanka	2012	4.22	9.21	0.82	66.30	0.80	0.16	0.82	0.86	0.20	0.78	-0.65	-0.17	1.81	0.43	0.39	0.39	0.38	\N	\N	\N	\N	\N	\N	\N
Sri Lanka	2013	4.36	9.23	0.81	66.40	0.83	0.26	0.84	0.86	0.21	0.75	-0.60	-0.20	1.85	0.42	\N	0.39	0.33	\N	\N	\N	\N	\N	\N	\N
Sri Lanka	2014	4.27	9.27	0.80	66.50	0.87	0.29	0.79	0.84	0.19	0.77	-0.50	-0.14	1.98	0.46	\N	0.39	0.35	\N	\N	\N	\N	\N	\N	\N
Sri Lanka	2015	4.61	9.31	0.86	66.60	0.90	0.31	0.86	0.85	0.23	0.74	-0.10	-0.09	2.19	0.47	\N	0.39	0.37	\N	\N	\N	\N	\N	\N	\N
Sri Lanka	2017	4.33	9.36	0.82	67.00	0.83	0.09	0.84	0.79	0.27	0.52	-0.06	-0.17	2.23	0.51	\N	0.39	0.43	\N	\N	\N	\N	\N	\N	\N
Sri Lanka	2018	4.40	9.40	0.83	67.20	0.85	0.09	0.86	0.83	0.30	0.58	\N	\N	2.36	0.54	\N	0.39	0.41	\N	\N	\N	\N	\N	\N	\N
Sudan	2009	4.45	8.11	0.91	53.70	0.71	0.07	0.70	0.73	0.24	\N	-2.17	-1.22	1.88	0.42	0.35	0.35	0.71	0.32	\N	\N	\N	\N	\N	\N
Sudan	2010	4.44	8.12	0.85	54.00	0.65	-0.05	0.74	0.67	0.22	\N	-2.20	-1.30	1.71	0.39	\N	0.35	0.50	\N	\N	\N	\N	\N	\N	\N
Sudan	2011	4.31	8.20	0.82	54.28	0.58	-0.03	0.66	0.59	0.25	\N	-2.15	-1.29	1.80	0.42	\N	0.35	0.56	\N	\N	\N	\N	\N	\N	\N
Sudan	2012	4.55	8.32	0.81	54.56	0.41	-0.06	0.73	0.58	0.24	\N	-2.02	-1.41	1.60	0.35	\N	0.35	0.80	\N	\N	\N	\N	\N	\N	\N
Sudan	2014	4.14	8.34	0.81	55.12	0.39	-0.07	0.79	0.54	0.30	\N	-2.05	-1.40	2.62	0.63	\N	0.35	0.46	\N	\N	\N	\N	\N	\N	\N
Suriname	2012	6.27	9.62	0.80	62.24	0.89	-0.08	0.75	0.76	0.25	0.72	0.21	-0.22	1.95	0.31	\N	\N	0.37	\N	\N	\N	\N	\N	\N	\N
Swaziland	2011	4.87	8.90	0.84	\N	0.61	-0.07	0.92	0.82	0.25	0.35	-0.90	-0.54	2.12	0.44	\N	0.52	0.69	\N	\N	\N	\N	\N	\N	\N
Swaziland	2018	4.21	8.95	0.78	\N	0.71	-0.18	0.69	0.82	0.25	0.69	\N	\N	2.43	0.58	\N	0.52	0.73	\N	\N	\N	\N	\N	\N	\N
Sweden	2005	7.38	10.63	0.95	71.20	0.96	\N	\N	0.84	0.15	0.44	1.44	1.81	1.62	0.22	0.27	0.27	\N	\N	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2007	7.24	10.69	0.92	71.48	0.91	0.14	0.29	0.80	0.18	0.56	1.39	1.94	1.68	0.23	0.27	0.27	\N	\N	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2008	7.52	10.68	0.92	71.62	0.91	0.12	0.31	0.80	0.13	0.52	1.33	1.94	1.55	0.21	0.28	0.27	\N	\N	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2009	7.27	10.62	0.90	71.76	0.86	0.21	0.29	0.82	0.15	0.59	1.32	1.98	1.67	0.23	0.27	0.27	\N	0.56	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2010	7.50	10.67	0.97	71.90	0.90	0.14	0.25	0.83	0.20	0.60	1.32	1.97	1.59	0.21	0.28	0.27	0.31	0.56	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2011	7.38	10.69	0.92	71.98	0.94	0.16	0.27	0.81	0.18	0.64	1.42	2.00	1.58	0.21	0.28	0.27	0.42	\N	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2012	7.56	10.68	0.93	72.06	0.94	0.13	0.25	0.86	0.17	0.63	1.43	2.03	1.59	0.21	0.28	0.27	0.32	\N	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2013	7.43	10.68	0.92	72.14	0.94	0.15	0.32	0.83	0.18	0.58	1.39	2.02	1.66	0.22	0.29	0.27	0.32	\N	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2014	7.24	10.70	0.93	72.22	0.95	0.20	0.25	0.84	0.21	0.56	1.34	1.94	1.57	0.22	0.28	0.27	0.38	\N	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2015	7.29	10.73	0.93	72.30	0.94	0.20	0.23	0.82	0.19	0.50	1.26	1.98	1.63	0.22	0.29	0.27	0.37	\N	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2016	7.37	10.75	0.91	72.40	0.92	0.14	0.25	0.82	0.20	0.49	1.29	1.96	1.63	0.22	\N	0.27	0.43	\N	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2017	7.29	10.76	0.91	72.50	0.93	0.16	0.24	0.81	0.18	0.56	1.28	1.93	1.78	0.24	\N	0.27	0.35	\N	0.57	\N	0.57	0.64	0.68	0.61
Sweden	2018	7.37	10.77	0.93	72.60	0.94	0.07	0.26	0.82	0.16	0.49	\N	\N	1.60	0.22	\N	0.27	0.38	\N	0.57	\N	0.57	0.64	0.68	0.61
Switzerland	2006	7.47	10.91	0.95	71.54	0.92	0.29	0.41	0.82	0.21	0.63	1.39	1.87	1.62	0.22	0.34	0.33	\N	\N	\N	0.27	0.38	\N	0.52	\N
Switzerland	2009	7.52	10.91	0.94	72.26	0.89	0.12	0.34	0.81	0.20	0.58	1.43	1.83	1.58	0.21	0.33	0.33	0.32	0.45	\N	0.27	0.38	\N	0.52	\N
Switzerland	2012	7.78	10.94	0.95	72.78	0.95	0.13	0.32	0.86	0.18	0.77	1.53	1.88	1.56	0.20	0.32	0.33	0.31	\N	\N	0.27	0.38	\N	0.52	\N
Switzerland	2014	7.49	10.95	0.96	73.06	0.95	0.05	0.28	0.82	0.19	0.75	1.48	2.02	1.52	0.20	0.33	0.33	0.33	\N	\N	0.27	0.38	\N	0.52	\N
Switzerland	2015	7.57	10.96	0.94	73.20	0.93	0.10	0.21	0.81	0.17	0.79	1.45	1.96	1.80	0.24	0.32	0.33	0.50	\N	\N	0.27	0.38	\N	0.52	\N
Switzerland	2016	7.46	10.96	0.93	73.50	0.93	0.08	0.30	0.78	0.21	0.80	1.42	1.96	1.69	0.23	\N	0.33	0.51	\N	\N	0.27	0.38	\N	0.52	\N
Switzerland	2017	7.47	10.96	0.95	73.80	0.92	0.18	0.32	0.77	0.20	0.82	1.38	1.96	1.54	0.21	\N	0.33	0.30	\N	\N	0.27	0.38	\N	0.52	\N
Switzerland	2018	7.51	10.98	0.93	74.10	0.93	0.10	0.30	0.79	0.19	0.85	\N	\N	1.64	0.22	\N	0.33	0.32	\N	\N	0.27	0.38	\N	0.52	\N
Syria	2008	5.32	8.56	0.71	63.90	0.66	0.12	0.68	0.61	0.34	\N	-1.03	-0.91	1.92	0.36	\N	0.36	\N	\N	\N	\N	\N	\N	\N	\N
Syria	2009	4.98	8.56	0.84	64.00	0.75	0.08	0.69	0.57	0.29	\N	-1.10	-0.82	2.06	0.41	\N	0.36	0.50	0.10	\N	\N	\N	\N	\N	\N
Syria	2010	4.46	8.64	0.93	64.10	0.65	0.01	0.74	0.56	0.22	\N	-1.25	-0.81	2.15	0.48	\N	0.36	0.50	\N	\N	\N	\N	\N	\N	\N
Syria	2011	4.04	8.64	0.58	62.32	0.53	0.13	0.74	0.60	0.50	\N	-1.91	-0.83	2.48	0.61	\N	0.36	0.49	\N	\N	\N	\N	\N	\N	\N
Syria	2012	3.16	8.47	0.59	60.54	0.47	0.31	0.67	0.46	0.70	\N	-2.26	-1.25	2.51	0.79	\N	0.36	0.46	\N	\N	\N	\N	\N	\N	\N
Syria	2013	2.69	8.31	0.59	58.76	0.45	0.22	0.66	0.39	0.62	\N	-2.26	-1.40	2.35	0.87	\N	0.36	0.45	\N	\N	\N	\N	\N	\N	\N
Syria	2015	3.46	\N	0.46	55.20	0.45	\N	0.69	0.37	0.64	\N	-2.45	-1.55	2.81	0.81	\N	0.36	0.53	\N	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2006	6.19	10.52	0.88	68.68	0.63	-0.04	0.85	0.81	0.09	0.28	0.69	0.84	1.93	0.31	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2008	5.55	10.51	0.83	69.14	0.64	-0.02	0.78	0.79	0.17	0.42	0.78	0.86	2.17	0.39	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2010	6.23	10.60	0.83	69.60	0.68	0.00	0.82	0.85	0.14	0.43	0.84	1.01	1.94	0.31	\N	\N	0.44	0.35	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2011	6.31	10.61	0.86	\N	0.76	0.03	0.75	0.83	0.11	0.47	0.89	1.04	1.75	0.28	\N	\N	0.39	\N	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2012	6.13	10.62	0.83	\N	0.70	0.01	0.80	0.82	0.14	0.34	0.87	1.03	2.04	0.33	\N	\N	0.43	\N	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2013	6.34	10.65	0.82	\N	0.69	-0.01	0.84	0.85	0.12	0.26	0.88	1.02	1.89	0.30	\N	\N	0.42	\N	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2014	6.36	10.70	0.87	\N	0.69	0.08	0.87	0.85	0.11	0.27	0.82	1.17	1.81	0.28	\N	\N	0.37	\N	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2015	6.45	\N	0.89	\N	0.70	\N	0.86	0.83	0.13	0.27	0.91	1.17	1.83	0.28	\N	\N	0.38	\N	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2016	6.51	\N	0.89	\N	0.72	\N	0.81	0.83	0.11	0.40	0.97	1.17	1.96	0.30	\N	\N	0.40	\N	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2017	6.36	\N	0.89	\N	0.76	\N	0.74	0.84	0.11	0.32	0.95	1.19	1.87	0.29	\N	\N	0.38	\N	\N	\N	\N	\N	\N	\N
Taiwan Province of China	2018	6.47	\N	0.90	\N	0.74	\N	0.74	0.85	0.09	0.31	\N	\N	1.69	0.26	\N	\N	0.33	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2006	4.61	7.49	0.72	60.64	0.70	-0.09	0.77	0.57	0.19	0.80	-1.37	-1.09	1.58	0.34	\N	0.33	\N	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2007	4.43	7.54	0.73	61.08	0.82	0.00	0.66	0.69	0.13	0.86	-1.02	-1.14	1.60	0.36	0.32	0.33	\N	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2008	5.06	7.60	0.70	61.52	0.82	0.02	0.72	0.61	0.16	0.88	-1.09	-1.16	1.56	0.31	\N	0.33	\N	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2009	4.58	7.61	0.68	61.96	0.74	0.00	0.79	0.61	0.20	0.83	-1.18	-1.16	1.55	0.34	0.31	0.33	0.41	0.33	\N	\N	\N	\N	\N	\N
Tajikistan	2010	4.38	7.65	0.76	62.40	0.78	0.06	0.68	0.64	0.19	0.91	-1.23	-1.11	1.29	0.29	\N	0.33	0.38	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2011	4.26	7.70	0.75	62.56	0.78	-0.12	0.67	0.70	0.17	0.89	-1.20	-1.09	1.38	0.32	\N	0.33	0.39	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2012	4.50	7.75	0.73	62.72	0.75	-0.07	0.72	0.71	0.20	0.92	-1.33	-1.10	1.15	0.26	\N	0.33	0.36	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2013	4.97	7.80	0.70	62.88	0.69	0.06	0.76	0.68	0.17	0.89	-1.34	-1.16	1.71	0.35	\N	0.33	0.37	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2014	4.90	7.84	0.81	63.04	0.85	0.00	0.70	0.66	0.20	0.83	-1.09	-0.98	1.63	0.33	\N	0.33	0.37	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2015	5.12	7.88	0.84	63.20	0.85	0.02	0.74	0.69	0.20	0.87	-1.23	-1.01	1.96	0.38	0.34	0.33	0.34	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2016	5.10	7.92	0.86	63.50	0.70	0.01	0.63	0.64	0.22	0.84	-1.23	-1.11	1.67	0.33	\N	0.33	0.34	\N	\N	\N	\N	\N	\N	\N
Tajikistan	2017	5.83	7.97	0.66	63.80	0.83	0.12	0.72	0.60	0.28	0.93	-1.20	-1.22	2.21	0.38	\N	0.33	0.37	\N	\N	\N	\N	\N	\N	\N
Tanzania	2006	3.92	7.52	0.78	48.70	0.79	-0.04	0.65	0.75	0.21	0.81	-0.28	-0.36	1.66	0.42	\N	0.38	\N	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2007	4.32	7.57	0.71	49.60	0.72	-0.02	0.71	0.76	0.22	0.72	-0.26	-0.38	1.86	0.43	0.40	0.38	\N	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2008	4.38	7.59	0.77	50.50	0.56	0.25	0.93	0.74	0.18	0.52	-0.20	-0.44	1.69	0.38	\N	0.38	\N	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2009	3.41	7.62	0.84	51.40	0.61	0.30	0.90	0.78	0.16	0.68	-0.04	-0.49	1.81	0.53	\N	0.38	0.45	0.26	\N	\N	\N	0.08	\N	\N
Tanzania	2010	3.23	7.65	0.81	52.30	0.60	0.13	0.87	0.72	0.15	0.64	-0.06	-0.51	1.80	0.56	\N	0.38	0.45	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2011	4.07	7.69	0.88	53.04	0.74	-0.05	0.82	0.76	0.15	0.56	-0.08	-0.54	1.88	0.46	0.38	0.38	0.53	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2012	4.01	7.71	0.83	53.78	0.58	0.20	0.89	0.68	0.20	0.41	-0.06	-0.59	1.92	0.48	\N	0.38	0.54	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2013	3.85	7.75	0.80	54.52	0.65	0.05	0.86	0.74	0.19	0.52	-0.18	-0.57	1.87	0.49	\N	0.38	0.52	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2014	3.48	7.78	0.79	55.26	0.65	0.10	0.88	0.73	0.24	0.65	-0.39	-0.53	2.83	0.81	\N	0.38	0.59	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2015	3.66	7.82	0.79	56.00	0.76	0.14	0.91	0.62	0.19	0.68	-0.32	-0.51	2.21	0.60	\N	0.38	0.61	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2016	2.90	7.86	0.64	56.50	0.78	0.17	0.74	0.69	0.25	0.90	-0.34	-0.47	2.51	0.87	\N	0.38	0.61	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2017	3.35	7.89	0.71	57.00	0.80	0.10	0.65	0.71	0.26	0.91	-0.44	-0.53	2.68	0.80	\N	0.38	0.55	\N	\N	\N	\N	0.08	\N	\N
Tanzania	2018	3.45	7.93	0.68	57.50	0.81	0.14	0.61	0.76	0.22	0.91	\N	\N	2.67	0.77	\N	0.38	0.57	\N	\N	\N	\N	0.08	\N	\N
Thailand	2006	5.89	9.39	0.89	64.14	0.86	0.33	0.93	0.81	0.16	0.50	-0.93	0.06	1.63	0.28	0.42	0.40	\N	\N	\N	\N	\N	\N	0.42	0.32
Thailand	2007	5.78	9.44	0.89	64.48	0.87	0.38	0.90	0.83	0.18	0.48	-0.84	0.00	1.67	0.29	0.40	0.40	\N	\N	\N	\N	\N	\N	0.42	0.32
Thailand	2008	5.64	9.45	0.83	64.82	0.87	0.42	0.93	0.82	0.15	0.41	-0.90	-0.03	1.78	0.32	0.40	0.40	\N	\N	\N	\N	\N	\N	0.42	0.32
Thailand	2009	5.48	9.44	0.89	65.16	0.87	0.52	0.90	0.90	0.17	0.51	-0.94	-0.01	1.73	0.32	0.40	0.40	0.53	0.20	\N	\N	\N	\N	0.42	0.32
Thailand	2010	6.22	9.51	0.90	65.50	0.86	0.53	0.92	0.90	0.18	0.68	-0.97	-0.04	1.72	0.28	0.39	0.40	0.42	0.27	\N	\N	\N	\N	0.42	0.32
Thailand	2011	6.66	9.51	0.88	65.72	0.93	0.39	0.92	0.93	0.12	0.54	-0.77	-0.03	1.81	0.27	0.38	0.40	0.44	\N	\N	\N	\N	\N	0.42	0.32
Thailand	2012	6.30	9.58	0.91	65.94	0.85	0.37	0.91	0.85	0.14	0.70	-0.77	-0.01	1.76	0.28	0.39	0.40	0.44	\N	\N	\N	\N	\N	0.42	0.32
Thailand	2013	6.23	9.60	0.93	66.16	0.78	0.45	0.93	0.85	0.14	0.51	-0.87	0.00	1.57	0.25	0.38	0.40	0.43	\N	\N	\N	\N	\N	0.42	0.32
Thailand	2014	6.99	9.61	0.93	66.38	0.90	0.55	0.92	0.81	0.17	0.72	-0.89	-0.01	2.00	0.29	0.37	0.40	0.46	\N	\N	\N	\N	\N	0.42	0.32
Thailand	2015	6.20	9.63	0.87	66.60	0.88	0.31	0.91	0.91	0.17	0.66	-0.98	0.00	1.78	0.29	0.36	0.40	0.43	\N	\N	\N	\N	\N	0.42	0.32
Thailand	2016	6.07	9.66	0.91	66.80	0.92	0.35	0.88	0.83	0.22	0.65	-1.01	0.03	2.23	0.37	\N	0.40	0.48	\N	\N	\N	\N	\N	0.42	0.32
Thailand	2017	5.94	9.70	0.88	67.00	0.92	0.21	0.88	0.82	0.23	0.61	-0.90	0.05	2.24	0.38	\N	0.40	0.51	\N	\N	\N	\N	\N	0.42	0.32
Thailand	2018	6.01	9.73	0.87	67.20	0.90	0.25	0.91	0.84	0.20	0.61	\N	\N	2.11	0.35	\N	0.40	0.48	\N	\N	\N	\N	\N	0.42	0.32
Togo	2006	3.20	7.09	0.44	49.26	0.63	-0.01	0.85	0.61	0.35	0.32	-0.86	-1.10	1.73	0.54	0.42	0.44	\N	\N	\N	\N	\N	\N	\N	\N
Togo	2008	2.81	7.08	0.29	50.18	0.29	-0.06	0.93	0.36	0.38	0.17	-0.58	-1.06	1.74	0.62	\N	0.44	\N	\N	\N	\N	\N	\N	\N	\N
Togo	2011	2.94	7.12	0.30	51.58	0.58	-0.07	0.83	0.48	0.40	0.51	-0.53	-1.06	1.96	0.67	0.46	0.44	0.49	\N	\N	\N	\N	\N	\N	\N
Togo	2014	2.84	7.18	0.44	53.02	0.66	-0.08	0.80	0.58	0.44	0.48	-0.47	-0.96	1.82	0.64	\N	0.44	0.63	\N	\N	\N	\N	\N	\N	\N
Togo	2015	3.77	7.21	0.48	53.50	0.77	-0.07	0.73	0.60	0.42	0.50	-0.46	-0.88	2.21	0.59	0.43	0.44	0.61	\N	\N	\N	\N	\N	\N	\N
Togo	2016	3.88	7.24	0.51	53.90	0.73	-0.01	0.82	0.60	0.48	0.49	-0.36	-0.79	2.55	0.66	\N	0.44	0.50	\N	\N	\N	\N	\N	\N	\N
Togo	2017	4.36	7.27	0.51	54.30	0.72	-0.04	0.73	0.61	0.43	0.48	-0.68	-0.83	2.49	0.57	\N	0.44	0.55	\N	\N	\N	\N	\N	\N	\N
Trinidad and Tobago	2006	5.83	10.30	0.89	61.76	0.84	0.12	0.92	0.80	0.23	0.31	0.19	0.12	2.39	0.41	\N	\N	\N	\N	\N	\N	\N	\N	0.04	0.03
Trinidad and Tobago	2008	6.70	10.37	0.86	62.08	0.84	0.07	0.96	0.82	0.18	0.29	0.21	0.14	2.02	0.30	\N	\N	\N	\N	\N	\N	\N	\N	0.04	0.03
Trinidad and Tobago	2011	6.52	10.34	0.86	62.54	0.78	0.06	0.90	0.91	0.13	0.52	0.33	0.12	1.90	0.29	\N	\N	\N	\N	\N	\N	\N	\N	0.04	0.03
Trinidad and Tobago	2013	6.17	10.35	0.88	62.82	0.85	0.11	0.95	0.83	0.29	0.38	0.29	0.06	2.16	0.35	\N	\N	\N	\N	\N	\N	\N	\N	0.04	0.03
Trinidad and Tobago	2017	6.19	10.27	0.92	63.50	0.86	0.00	0.91	0.85	0.25	0.27	0.42	-0.05	2.28	0.37	\N	\N	0.42	\N	\N	\N	\N	\N	0.04	0.03
Tunisia	2009	5.03	9.23	\N	64.96	0.78	-0.13	0.72	\N	\N	\N	-0.65	0.07	1.73	0.34	\N	0.38	0.36	\N	\N	\N	\N	\N	\N	0.16
Tunisia	2010	5.13	9.25	0.86	65.10	0.62	-0.15	0.73	0.72	0.25	0.90	-0.74	0.00	1.51	0.29	0.36	0.38	0.29	\N	\N	\N	\N	\N	\N	0.16
Tunisia	2011	4.88	9.22	0.71	65.28	0.60	-0.21	0.91	0.59	0.25	0.47	-0.36	-0.09	1.88	0.39	\N	0.38	0.36	\N	\N	\N	\N	\N	\N	0.16
Tunisia	2012	4.46	9.25	0.61	65.46	0.57	-0.19	0.90	0.52	0.33	0.44	-0.45	-0.10	2.12	0.47	\N	0.38	0.44	\N	\N	\N	\N	\N	\N	0.16
Tunisia	2013	5.25	9.27	0.65	65.64	0.54	-0.22	0.89	0.52	0.24	0.32	-0.49	-0.17	2.08	0.40	\N	0.38	0.39	\N	\N	\N	\N	\N	\N	0.16
Tunisia	2014	4.76	9.28	0.68	65.82	0.59	-0.24	0.78	0.50	0.32	0.39	-0.33	-0.16	2.10	0.44	\N	0.38	0.39	\N	\N	\N	\N	\N	\N	0.16
Tunisia	2015	5.13	9.28	0.61	66.00	0.71	-0.24	0.81	0.57	0.32	0.48	-0.36	-0.16	2.03	0.39	\N	0.38	0.38	\N	\N	\N	\N	\N	\N	0.16
Tunisia	2016	4.52	9.28	0.70	66.30	0.61	-0.18	0.81	0.61	0.38	0.35	-0.42	-0.20	2.13	0.47	\N	0.38	0.39	\N	\N	\N	\N	\N	\N	0.16
Tunisia	2017	4.12	9.29	0.72	66.60	0.48	-0.23	0.87	0.42	0.38	0.25	-0.44	-0.13	2.21	0.54	\N	0.38	0.41	\N	\N	\N	\N	\N	\N	0.16
Tunisia	2018	4.74	9.30	0.73	66.90	0.65	-0.20	0.84	0.59	0.37	0.35	\N	\N	2.18	0.46	\N	0.38	0.43	\N	\N	\N	\N	\N	\N	0.16
Turkey	2005	4.72	9.70	0.82	62.60	0.62	\N	0.88	0.56	\N	0.60	-0.30	0.14	2.34	0.50	0.43	0.41	\N	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2007	5.62	9.79	0.79	63.32	0.46	-0.18	0.80	0.65	0.40	0.56	-0.44	0.19	2.06	0.37	0.38	0.41	\N	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2008	5.12	9.79	0.64	63.68	0.42	-0.19	0.79	0.61	0.35	0.60	-0.43	0.18	2.36	0.46	0.39	0.41	\N	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2009	5.21	9.73	0.75	64.04	0.46	-0.23	0.85	0.60	0.32	\N	-0.54	0.19	2.03	0.39	0.39	0.41	0.35	0.08	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2010	5.49	9.80	0.79	64.40	0.51	-0.19	0.81	0.65	0.33	0.55	-0.50	0.18	2.04	0.37	0.39	0.41	0.35	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2011	5.27	9.89	0.69	64.64	0.45	-0.25	0.65	0.62	0.38	0.60	-0.55	0.21	2.52	0.48	0.40	0.41	0.33	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2012	5.31	9.92	0.74	64.88	0.47	-0.22	0.70	0.64	0.33	0.53	-0.71	0.26	1.97	0.37	0.40	0.41	0.33	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2013	4.89	9.98	0.80	65.12	0.54	-0.23	0.70	0.63	0.39	0.54	-0.75	0.24	2.21	0.45	0.40	0.41	0.33	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2014	5.58	10.02	0.86	65.36	0.65	-0.03	0.76	0.48	0.38	0.56	-0.71	0.16	2.39	0.43	0.41	0.41	0.36	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2015	5.51	10.06	0.85	65.60	0.65	-0.02	0.81	0.46	0.38	0.49	-0.93	0.06	2.53	0.46	0.43	0.41	0.35	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2016	5.33	10.08	0.88	66.00	0.64	-0.07	0.76	0.47	0.39	0.58	-1.31	-0.04	2.39	0.45	0.42	0.41	0.34	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2017	5.61	10.13	0.88	66.40	0.64	-0.24	0.67	0.45	0.31	0.59	-1.25	-0.08	1.63	0.29	\N	0.41	0.33	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkey	2018	5.19	10.15	0.85	66.80	0.53	-0.18	0.80	0.43	0.35	0.51	\N	\N	2.15	0.41	\N	0.41	0.36	\N	\N	0.10	0.06	0.19	0.05	0.12
Turkmenistan	2009	6.57	9.13	0.92	59.44	\N	-0.12	\N	0.78	0.15	\N	-0.80	-1.61	1.75	0.27	\N	\N	\N	0.28	\N	\N	\N	\N	\N	\N
Turkmenistan	2011	5.79	9.32	0.96	60.04	\N	0.00	\N	0.64	0.12	\N	-0.97	-1.65	1.69	0.29	\N	\N	0.27	\N	\N	\N	\N	\N	\N	\N
Turkmenistan	2012	5.46	9.41	0.95	60.28	0.79	-0.14	\N	0.58	0.12	\N	-0.91	-1.54	1.87	0.34	\N	\N	0.24	\N	\N	\N	\N	\N	\N	\N
Turkmenistan	2013	5.39	9.49	0.85	60.52	0.70	-0.09	\N	0.60	0.16	\N	-0.98	-1.54	2.01	0.37	\N	\N	0.27	\N	\N	\N	\N	\N	\N	\N
Turkmenistan	2014	5.79	9.57	0.91	60.76	0.80	0.01	\N	0.70	0.15	\N	-1.09	-1.39	1.98	0.34	\N	\N	0.27	\N	\N	\N	\N	\N	\N	\N
Turkmenistan	2015	5.79	9.62	0.96	61.00	0.70	0.07	\N	0.71	0.30	\N	-1.16	-1.42	1.58	0.27	\N	\N	0.30	\N	\N	\N	\N	\N	\N	\N
Turkmenistan	2016	5.89	9.66	0.93	61.40	0.75	-0.02	\N	0.64	0.26	\N	-1.18	-1.56	1.15	0.20	\N	\N	0.22	\N	\N	\N	\N	\N	\N	\N
Turkmenistan	2017	5.23	9.70	0.91	61.80	0.72	0.04	\N	0.52	0.35	\N	-1.15	-1.55	1.43	0.27	\N	\N	0.27	\N	\N	\N	\N	\N	\N	\N
Turkmenistan	2018	4.62	9.75	0.98	62.20	0.86	0.24	\N	0.61	0.19	\N	\N	\N	1.20	0.26	\N	\N	0.27	\N	\N	\N	\N	\N	\N	\N
Uganda	2006	3.73	7.18	0.76	46.48	0.75	-0.03	0.81	0.59	0.25	0.58	-0.79	-0.47	1.82	0.49	\N	0.43	\N	\N	\N	\N	\N	0.08	\N	\N
Uganda	2007	4.46	7.22	0.84	47.46	0.71	0.01	0.88	0.71	0.23	0.58	-0.70	-0.46	1.60	0.36	\N	0.43	\N	\N	\N	\N	\N	0.08	\N	\N
Uganda	2008	4.57	7.27	0.81	48.44	0.58	-0.05	0.85	0.64	0.24	0.50	-0.69	-0.50	1.54	0.34	\N	0.43	\N	\N	\N	\N	\N	0.08	\N	\N
Uganda	2009	4.61	7.30	0.85	49.42	0.76	-0.03	0.84	0.64	0.30	0.48	-0.75	-0.53	1.76	0.38	0.44	0.43	0.69	0.17	\N	\N	\N	0.08	\N	\N
Uganda	2010	4.19	7.32	0.83	50.40	0.80	0.00	0.85	0.65	0.25	0.66	-0.76	-0.50	1.86	0.44	\N	0.43	0.53	\N	\N	\N	\N	0.08	\N	\N
Uganda	2011	4.83	7.38	0.88	51.22	0.73	0.04	0.83	0.68	0.25	0.52	-0.75	-0.49	2.00	0.41	\N	0.43	0.53	\N	\N	\N	\N	0.08	\N	\N
Uganda	2012	4.31	7.38	0.88	52.04	0.65	0.09	0.84	0.75	0.27	0.40	-0.68	-0.54	1.75	0.41	0.41	0.43	0.69	\N	\N	\N	\N	0.08	\N	\N
Uganda	2013	3.71	7.38	0.88	52.86	0.76	0.06	0.82	0.68	0.35	0.58	-0.70	-0.55	1.89	0.51	\N	0.43	0.56	\N	\N	\N	\N	0.08	\N	\N
Uganda	2014	3.77	7.40	0.82	53.68	0.83	0.02	0.90	0.68	0.40	0.58	-0.76	-0.55	2.25	0.60	\N	0.43	0.69	\N	\N	\N	\N	0.08	\N	\N
Uganda	2015	4.24	7.42	0.75	54.50	0.76	0.15	0.87	0.70	0.35	0.60	-0.69	-0.55	2.57	0.61	\N	0.43	0.76	\N	\N	\N	\N	0.08	\N	\N
Uganda	2016	4.23	7.43	0.75	54.90	0.74	0.14	0.81	0.67	0.41	0.67	-0.68	-0.52	3.10	0.73	0.43	0.43	0.66	\N	\N	\N	\N	0.08	\N	\N
Uganda	2017	4.00	7.44	0.74	55.30	0.77	0.07	0.82	0.70	0.40	0.66	-0.58	-0.54	2.67	0.67	\N	0.43	0.64	\N	\N	\N	\N	0.08	\N	\N
Uganda	2018	4.32	7.46	0.74	55.70	0.73	0.09	0.86	0.69	0.39	0.50	\N	\N	3.03	0.70	\N	0.43	0.66	\N	\N	\N	\N	0.08	\N	\N
Ukraine	2006	4.80	8.97	0.85	60.12	0.62	-0.24	0.93	0.62	0.25	0.15	0.01	-0.64	1.97	0.41	0.30	0.27	\N	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2007	5.25	9.05	0.82	60.64	0.49	-0.22	0.97	0.64	0.21	0.08	0.12	-0.66	1.98	0.38	0.27	0.27	\N	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2008	5.17	9.08	0.86	61.16	0.49	-0.25	0.93	0.57	0.19	0.16	0.07	-0.69	1.97	0.38	0.27	0.27	\N	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2009	5.17	8.92	0.85	61.68	0.46	-0.22	0.96	0.58	0.19	0.09	-0.12	-0.80	2.14	0.41	0.25	0.27	0.38	0.31	\N	\N	0.29	\N	0.27	0.24
Ukraine	2010	5.06	8.97	0.88	62.20	0.48	-0.17	0.95	0.51	0.23	0.26	-0.04	-0.78	1.74	0.34	0.25	0.27	0.35	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2011	5.08	9.02	0.86	62.50	0.58	-0.21	0.93	0.59	0.22	0.24	-0.10	-0.82	2.06	0.40	0.25	0.27	0.36	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2012	5.03	9.03	0.90	62.80	0.56	-0.20	0.90	0.57	0.19	0.24	-0.19	-0.76	1.98	0.39	0.25	0.27	0.36	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2013	4.71	9.03	0.90	63.10	0.57	-0.20	0.94	0.64	0.22	0.19	-0.55	-0.80	1.80	0.38	0.25	0.27	0.35	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2014	4.30	9.02	0.88	63.40	0.53	0.10	0.93	0.59	0.25	0.24	-1.08	-0.71	1.95	0.45	0.24	0.27	0.41	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2015	3.96	8.92	0.91	63.70	0.43	-0.01	0.95	0.57	0.24	0.08	-1.02	-0.73	1.96	0.49	0.26	0.27	0.33	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2016	4.03	8.94	0.88	64.00	0.50	0.03	0.89	0.59	0.22	0.13	-0.93	-0.65	2.04	0.51	0.25	0.27	0.39	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2017	4.31	8.97	0.86	64.30	0.60	0.02	0.94	0.60	0.23	0.11	-0.94	-0.57	2.26	0.52	\N	0.27	0.42	\N	\N	\N	0.29	\N	0.27	0.24
Ukraine	2018	4.66	9.01	0.90	64.60	0.66	-0.06	0.94	0.61	0.22	0.08	\N	\N	2.11	0.45	\N	0.27	0.35	\N	\N	\N	0.29	\N	0.27	0.24
United Arab Emirates	2006	6.73	11.39	0.90	65.92	0.90	-0.05	0.20	0.75	0.28	\N	-0.04	0.70	1.85	0.27	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
United Arab Emirates	2009	6.87	11.01	0.89	66.28	0.85	0.00	0.34	0.77	0.29	\N	0.04	0.69	2.01	0.29	\N	\N	0.50	0.19	\N	\N	\N	\N	\N	\N
United Arab Emirates	2010	7.10	10.95	0.91	66.40	0.88	0.04	0.36	0.76	0.23	\N	-0.05	0.61	1.90	0.27	\N	\N	0.36	\N	\N	\N	\N	\N	\N	\N
United Arab Emirates	2011	7.12	10.97	0.88	66.42	0.89	0.05	\N	0.76	0.22	\N	0.01	0.77	1.67	0.23	\N	\N	0.36	\N	\N	\N	\N	\N	\N	\N
United Arab Emirates	2012	7.22	10.99	0.86	66.44	0.92	\N	\N	0.77	0.22	\N	-0.07	0.88	1.70	0.24	\N	\N	0.42	\N	\N	\N	\N	\N	\N	\N
United Arab Emirates	2013	6.62	11.03	0.86	66.46	0.94	\N	\N	\N	0.29	\N	-0.06	0.96	2.12	0.32	\N	\N	0.56	\N	\N	\N	\N	\N	\N	\N
United Arab Emirates	2014	6.54	11.07	\N	66.48	\N	\N	\N	\N	\N	\N	-0.15	1.07	2.15	0.33	\N	\N	0.52	\N	\N	\N	\N	\N	\N	\N
United Arab Emirates	2015	6.57	11.11	0.82	66.50	0.92	0.18	\N	0.76	0.30	\N	-0.18	1.08	2.09	0.32	\N	\N	0.54	\N	\N	\N	\N	\N	\N	\N
United Arab Emirates	2016	6.83	11.12	0.85	66.70	0.95	0.11	\N	0.78	0.24	\N	-0.24	1.10	2.15	0.31	\N	\N	0.53	\N	\N	\N	\N	\N	\N	\N
United Arab Emirates	2017	7.04	11.12	0.84	66.90	0.96	0.20	\N	0.80	0.21	\N	-0.23	1.09	2.03	0.29	\N	\N	0.60	\N	\N	\N	\N	\N	\N	\N
United Arab Emirates	2018	6.60	11.13	0.85	67.10	0.94	0.04	\N	0.79	0.30	\N	\N	\N	2.21	0.34	\N	\N	0.72	\N	\N	\N	\N	\N	\N	\N
United Kingdom	2005	6.98	10.52	0.98	69.90	0.92	\N	0.40	0.86	0.26	0.49	0.79	1.71	1.64	0.23	0.34	0.34	\N	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2007	6.80	10.56	0.97	70.46	0.84	0.33	0.50	0.78	0.24	0.36	0.96	1.75	1.86	0.27	0.36	0.34	\N	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2008	6.99	10.54	0.95	70.74	0.76	0.33	0.55	0.82	0.22	0.32	0.91	1.70	1.75	0.25	0.34	0.34	\N	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2009	6.91	10.49	0.96	71.02	0.82	0.34	0.56	0.85	0.23	0.38	0.71	1.62	1.87	0.27	0.34	0.34	0.57	0.36	\N	\N	0.30	\N	0.30	\N
United Kingdom	2010	7.03	10.50	0.96	71.30	0.84	0.40	0.59	0.86	0.18	0.50	0.85	1.67	1.85	0.26	0.34	0.34	0.54	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2011	6.87	10.51	0.95	71.38	0.90	0.33	0.44	0.84	0.17	0.47	0.82	1.62	1.91	0.28	0.33	0.34	0.67	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2012	6.88	10.52	0.93	71.46	0.89	0.37	0.43	0.84	0.18	0.42	0.87	1.65	1.87	0.27	0.32	0.34	0.65	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2013	6.92	10.53	0.94	71.54	0.91	0.34	0.57	0.78	0.25	0.38	0.91	1.67	2.05	0.30	0.33	0.34	0.48	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2014	6.76	10.55	0.91	71.62	0.86	0.35	0.48	0.79	0.25	0.42	0.85	1.77	1.88	0.28	0.34	0.34	0.48	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2015	6.52	10.57	0.94	71.70	0.83	0.30	0.46	0.80	0.22	0.46	0.91	1.82	1.75	0.27	0.33	0.34	0.38	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2016	6.82	10.58	0.95	71.90	0.82	0.25	0.46	0.78	0.23	0.41	0.83	1.74	1.63	0.24	\N	0.34	0.38	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2017	7.10	10.59	0.94	72.10	0.81	0.29	0.42	0.76	0.21	0.44	0.80	1.66	1.62	0.23	\N	0.34	0.37	\N	\N	\N	0.30	\N	0.30	\N
United Kingdom	2018	7.23	10.60	0.93	72.30	0.84	0.22	0.40	0.78	0.23	0.42	\N	\N	1.70	0.23	\N	0.34	0.42	\N	\N	\N	0.30	\N	0.30	\N
United States	2006	7.18	10.83	0.96	68.06	0.91	\N	0.60	0.83	0.26	0.56	0.80	1.55	1.87	0.26	\N	0.41	\N	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2007	7.51	10.84	\N	68.22	0.87	0.19	0.63	0.83	0.23	0.39	0.74	1.54	1.72	0.23	0.41	0.41	\N	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2008	7.28	10.83	0.95	68.38	0.88	0.25	0.67	0.87	0.23	0.38	0.86	1.56	1.78	0.24	\N	0.41	\N	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2009	7.16	10.79	0.91	68.54	0.83	0.19	0.67	0.84	0.26	0.50	0.77	1.45	2.02	0.28	\N	0.41	0.71	0.37	0.45	\N	0.35	0.36	0.39	0.35
United States	2010	7.16	10.81	0.93	68.70	0.83	0.24	0.69	0.86	0.23	0.42	0.79	1.48	2.18	0.30	0.40	0.41	0.74	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2011	7.12	10.82	0.92	68.68	0.86	0.15	0.70	0.84	0.27	0.38	0.86	1.46	1.95	0.27	\N	0.41	0.61	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2012	7.03	10.83	0.90	68.66	0.82	0.21	0.71	0.83	0.26	0.35	0.90	1.47	2.16	0.31	\N	0.41	0.63	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2013	7.25	10.84	0.93	68.64	0.79	0.27	0.75	0.81	0.26	0.29	0.87	1.42	1.94	0.27	0.41	0.41	0.68	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2014	7.15	10.86	0.90	68.62	0.87	0.21	0.70	0.83	0.28	0.35	0.83	1.43	2.07	0.29	\N	0.41	0.75	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2015	6.86	10.88	0.90	68.60	0.85	0.21	0.70	0.81	0.27	0.35	0.89	1.43	1.95	0.28	\N	0.41	0.65	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2016	6.80	10.89	0.90	68.50	0.76	0.14	0.74	0.81	0.26	0.30	0.76	1.49	1.97	0.29	0.42	0.41	0.69	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2017	6.99	10.90	0.92	68.40	0.87	0.19	0.68	0.83	0.27	0.39	0.68	1.55	1.88	0.27	\N	0.41	0.61	\N	0.45	\N	0.35	0.36	0.39	0.35
United States	2018	6.88	10.92	0.90	68.30	0.82	0.11	0.71	0.82	0.29	0.31	\N	\N	2.12	0.31	\N	0.41	0.70	\N	0.45	\N	0.35	0.36	0.39	0.35
Uruguay	2006	5.79	9.51	0.91	67.44	0.81	-0.12	0.48	0.78	0.31	0.65	0.97	0.61	2.22	0.38	0.46	0.43	\N	\N	\N	\N	0.22	\N	0.28	0.14
Uruguay	2007	5.69	9.57	0.87	67.58	0.79	-0.17	0.61	0.78	0.27	0.61	0.94	0.66	2.04	0.36	0.46	0.43	\N	\N	\N	\N	0.22	\N	0.28	0.14
Uruguay	2008	5.66	9.64	0.88	67.72	0.81	-0.15	0.60	0.75	0.26	0.59	0.95	0.67	2.25	0.40	0.45	0.43	\N	\N	\N	\N	0.22	\N	0.28	0.14
Uruguay	2009	6.30	9.67	0.92	67.86	0.83	-0.13	0.54	0.79	0.25	0.66	0.95	0.73	1.89	0.30	0.46	0.43	0.39	0.28	\N	\N	0.22	\N	0.28	0.14
Uruguay	2010	6.06	9.75	0.89	68.00	0.83	-0.17	0.47	0.81	0.23	0.73	0.99	0.76	2.04	0.34	0.45	0.43	0.39	0.28	\N	\N	0.22	\N	0.28	0.14
Uruguay	2011	6.55	9.79	0.89	68.14	0.85	-0.09	0.56	0.81	0.25	0.63	1.04	0.74	2.17	0.33	0.42	0.43	0.42	\N	\N	\N	0.22	\N	0.28	0.14
Uruguay	2012	6.45	9.82	0.86	68.28	0.87	0.06	0.62	0.79	0.21	0.58	0.89	0.71	2.32	0.36	0.40	0.43	0.41	\N	\N	\N	0.22	\N	0.28	0.14
Uruguay	2013	6.44	9.87	0.92	68.42	0.89	-0.05	0.59	0.83	0.25	0.52	0.95	0.73	2.15	0.33	0.41	0.43	0.46	\N	\N	\N	0.22	\N	0.28	0.14
Uruguay	2014	6.56	9.89	0.90	68.56	0.90	-0.08	0.53	0.87	0.25	0.60	1.05	0.78	2.10	0.32	0.40	0.43	0.44	\N	\N	\N	0.22	\N	0.28	0.14
Uruguay	2015	6.63	9.90	0.89	68.70	0.92	-0.04	0.67	0.89	0.30	0.55	1.07	0.75	2.19	0.33	0.40	0.43	0.41	\N	\N	\N	0.22	\N	0.28	0.14
Uruguay	2016	6.17	9.91	0.90	68.80	0.89	-0.08	0.68	0.84	0.28	0.42	1.11	0.74	2.32	0.38	0.40	0.43	0.43	\N	\N	\N	0.22	\N	0.28	0.14
Uruguay	2017	6.34	9.93	0.91	68.90	0.90	-0.10	0.63	0.84	0.28	0.41	1.11	0.74	2.29	0.36	\N	0.43	0.40	\N	\N	\N	0.22	\N	0.28	0.14
Uruguay	2018	6.37	9.96	0.92	69.00	0.88	-0.11	0.68	0.88	0.27	0.36	\N	\N	2.22	0.35	\N	0.43	0.44	\N	\N	\N	0.22	\N	0.28	0.14
Uzbekistan	2006	5.23	8.09	0.90	61.44	0.78	-0.11	0.61	0.73	0.20	0.89	-1.93	-1.30	1.92	0.37	\N	0.35	\N	\N	\N	\N	\N	\N	\N	0.14
Uzbekistan	2008	5.31	8.24	0.89	62.32	0.83	-0.02	\N	0.71	0.19	\N	-1.65	-1.12	1.82	0.34	\N	0.35	\N	\N	\N	\N	\N	\N	\N	0.14
Uzbekistan	2009	5.26	8.30	0.90	62.76	\N	0.01	0.61	0.74	0.16	\N	-1.53	-1.17	1.74	0.33	\N	0.35	0.32	0.27	\N	\N	\N	\N	\N	0.14
Uzbekistan	2010	5.10	8.35	0.90	63.20	\N	-0.03	0.52	0.78	0.15	\N	-1.40	-1.24	1.67	0.33	\N	0.35	0.33	\N	\N	\N	\N	\N	\N	0.14
Uzbekistan	2011	5.74	8.41	0.92	63.40	0.93	0.04	0.52	0.79	0.12	\N	-1.36	-1.27	1.83	0.32	\N	0.35	0.33	\N	\N	\N	\N	\N	\N	0.14
Uzbekistan	2012	6.02	8.47	0.93	63.60	0.91	-0.04	0.46	0.79	0.12	\N	-1.28	-1.27	2.02	0.34	\N	0.35	0.33	\N	\N	\N	\N	\N	\N	0.14
Uzbekistan	2013	5.94	8.53	0.96	63.80	0.95	-0.04	0.43	0.75	0.13	\N	-1.25	-1.25	2.02	0.34	\N	0.35	0.31	\N	\N	\N	\N	\N	\N	0.14
Uzbekistan	2014	6.05	8.59	0.95	64.00	0.95	0.06	0.54	0.80	0.11	\N	-1.09	-1.16	2.07	0.34	\N	0.35	0.37	\N	\N	\N	\N	\N	\N	0.14
Uzbekistan	2015	5.97	8.65	0.97	64.20	0.98	0.37	0.47	0.84	0.10	0.97	-1.16	-1.17	2.23	0.37	\N	0.35	0.36	\N	\N	\N	\N	\N	\N	0.14
Uzbekistan	2016	5.89	8.71	0.95	64.50	0.98	0.20	\N	0.84	0.15	0.98	-1.08	-1.12	2.33	0.40	\N	0.35	0.56	\N	\N	\N	\N	\N	\N	0.14
Uzbekistan	2017	6.42	8.74	0.94	64.80	0.99	0.12	0.46	0.84	0.20	0.96	-1.04	-1.02	2.37	0.37	\N	0.35	0.45	\N	\N	\N	\N	\N	\N	0.14
Uzbekistan	2018	6.21	8.77	0.92	65.10	0.97	0.31	0.52	0.83	0.21	0.97	\N	\N	2.43	0.39	\N	0.35	0.38	\N	\N	\N	\N	\N	\N	0.14
Venezuela	2005	7.17	9.61	0.96	65.40	0.84	\N	0.72	0.82	0.23	0.49	-0.94	-1.08	2.53	0.35	0.52	0.50	\N	\N	\N	\N	0.13	0.16	\N	\N
Venezuela	2006	6.53	9.69	0.95	65.46	0.80	-0.06	0.65	0.86	0.18	0.63	-0.94	-1.18	2.15	0.33	0.47	0.50	\N	\N	\N	\N	0.13	0.16	\N	\N
Venezuela	2008	6.26	9.79	0.92	65.58	0.68	-0.24	0.78	0.80	0.22	0.53	-1.03	-1.33	2.14	0.34	\N	0.50	\N	\N	\N	\N	0.13	0.16	\N	\N
Venezuela	2009	7.19	9.74	0.94	65.64	0.68	-0.14	0.83	0.82	0.18	0.49	-1.06	-1.35	2.08	0.29	\N	0.50	0.31	0.17	\N	\N	0.13	0.16	\N	\N
Venezuela	2010	7.48	9.71	0.93	65.70	0.77	-0.17	0.75	0.86	0.13	0.59	-1.06	-1.40	2.29	0.31	\N	0.50	0.31	0.13	\N	\N	0.13	0.16	\N	\N
Venezuela	2011	6.58	9.74	0.93	65.74	0.77	-0.23	0.77	0.83	0.20	0.52	-1.01	-1.38	2.29	0.35	\N	0.50	0.28	\N	\N	\N	0.13	0.16	\N	\N
Venezuela	2012	7.07	9.78	0.93	65.78	0.80	-0.20	0.74	0.86	0.18	0.54	-0.97	-1.41	2.33	0.33	\N	0.50	0.29	\N	\N	\N	0.13	0.16	\N	\N
Venezuela	2013	6.55	9.78	0.90	65.82	0.64	-0.23	0.84	0.84	0.24	0.39	-1.01	-1.48	2.47	0.38	\N	0.50	0.28	\N	\N	\N	0.13	0.16	\N	\N
Venezuela	2014	6.14	9.73	0.90	65.86	0.57	-0.22	0.83	0.81	0.24	0.20	-0.97	-1.59	2.26	0.37	\N	0.50	0.41	\N	\N	\N	0.13	0.16	\N	\N
Venezuela	2015	5.57	9.66	0.91	65.90	0.51	-0.18	0.81	0.87	0.22	0.21	-1.03	-1.63	2.61	0.47	\N	0.50	0.38	\N	\N	\N	0.13	0.16	\N	\N
Venezuela	2016	4.04	9.53	0.90	66.10	0.46	-0.20	0.89	0.69	0.39	0.16	-1.08	-1.72	2.65	0.66	\N	0.50	0.40	\N	\N	\N	0.13	0.16	\N	\N
Venezuela	2017	5.07	9.44	0.90	66.30	0.64	-0.21	0.84	0.73	0.36	0.24	-1.20	-1.74	2.91	0.57	\N	0.50	0.56	\N	\N	\N	0.13	0.16	\N	\N
Venezuela	2018	5.01	9.27	0.89	66.50	0.61	-0.18	0.83	0.76	0.37	0.26	\N	\N	2.89	0.58	\N	0.50	\N	\N	\N	\N	0.13	0.16	\N	\N
Vietnam	2006	5.29	8.19	0.89	65.86	0.89	0.02	\N	0.68	0.20	0.86	-0.57	-0.53	1.35	0.26	0.36	0.36	\N	\N	\N	\N	\N	0.39	0.51	\N
Vietnam	2007	5.42	8.25	0.86	66.02	0.92	0.09	0.75	0.59	0.21	0.91	-0.64	-0.48	1.46	0.27	\N	0.36	\N	\N	\N	\N	\N	0.39	0.51	\N
Vietnam	2008	5.48	8.30	0.80	66.18	0.89	0.20	0.79	0.67	0.22	0.87	-0.67	-0.50	1.35	0.25	0.36	0.36	\N	\N	\N	\N	\N	0.39	0.51	\N
Vietnam	2009	5.30	8.34	0.82	66.34	0.83	-0.06	0.84	0.58	0.19	0.86	-0.61	-0.49	1.48	0.28	\N	0.36	0.43	0.31	\N	\N	\N	0.39	0.51	\N
Vietnam	2010	5.30	8.39	0.79	66.50	0.83	0.00	0.74	0.69	0.22	0.85	-0.67	-0.52	1.42	0.27	0.39	0.36	0.48	0.27	\N	\N	\N	0.39	0.51	\N
Vietnam	2011	5.77	8.44	0.90	66.66	0.82	0.11	0.74	0.53	0.19	0.77	-0.64	-0.50	1.65	0.29	\N	0.36	0.40	\N	\N	\N	\N	0.39	0.51	\N
Vietnam	2012	5.53	8.48	0.78	66.82	0.86	-0.11	0.81	0.62	0.22	0.86	-0.58	-0.50	1.45	0.26	0.36	0.36	0.44	\N	\N	\N	\N	0.39	0.51	\N
Vietnam	2013	5.02	8.52	0.76	66.98	0.92	-0.02	0.77	0.72	0.17	0.81	-0.56	-0.47	1.40	0.28	\N	0.36	0.45	\N	\N	\N	\N	0.39	0.51	\N
Vietnam	2014	5.08	8.57	0.79	67.14	\N	0.00	\N	0.70	0.24	\N	-0.70	-0.36	1.77	0.35	0.35	0.36	0.49	\N	\N	\N	\N	0.39	0.51	\N
Vietnam	2015	5.08	8.62	0.85	67.30	\N	0.09	\N	0.64	0.23	\N	-0.64	-0.30	1.79	0.35	\N	0.36	0.43	\N	\N	\N	\N	0.39	0.51	\N
Vietnam	2016	5.06	8.67	0.88	67.50	0.89	-0.09	0.80	0.54	0.22	\N	-0.57	-0.20	1.77	0.35	0.35	0.36	0.44	\N	\N	\N	\N	0.39	0.51	\N
Vietnam	2017	5.18	8.73	\N	67.70	\N	\N	\N	\N	\N	\N	-0.55	-0.23	1.75	0.34	\N	0.36	0.47	\N	\N	\N	\N	0.39	0.51	\N
Vietnam	2018	5.30	8.78	0.83	67.90	0.91	-0.04	0.81	0.69	0.19	\N	\N	\N	1.68	0.32	\N	0.36	0.42	\N	\N	\N	\N	0.39	0.51	\N
Yemen	2007	4.48	8.34	0.82	53.40	0.67	-0.01	\N	0.59	0.38	0.47	-1.35	-0.83	1.94	0.43	\N	0.36	\N	\N	\N	\N	\N	\N	\N	0.38
Yemen	2009	4.81	8.36	0.76	54.00	0.64	-0.07	0.83	0.58	0.37	0.55	-1.80	-0.97	2.24	0.47	\N	0.36	0.42	0.27	\N	\N	\N	\N	\N	0.38
Yemen	2010	4.35	8.41	0.73	54.30	0.66	-0.11	0.85	0.58	0.31	0.52	-1.88	-0.98	2.24	0.51	\N	0.36	0.40	\N	\N	\N	\N	\N	\N	0.38
Yemen	2011	3.75	8.24	0.66	54.30	0.64	-0.17	0.75	0.50	0.28	0.39	-1.91	-1.12	2.31	0.62	\N	0.36	0.41	\N	\N	\N	\N	\N	\N	0.38
Yemen	2012	4.06	8.24	0.68	54.30	0.71	-0.18	0.79	0.50	0.26	0.60	-1.89	-1.12	2.23	0.55	\N	0.36	0.42	\N	\N	\N	\N	\N	\N	0.38
Yemen	2013	4.22	8.26	0.69	54.30	0.54	-0.19	0.89	0.56	0.27	0.39	-1.85	-1.09	2.30	0.54	\N	0.36	0.43	\N	\N	\N	\N	\N	\N	0.38
Yemen	2014	3.97	8.23	0.64	54.30	0.66	-0.17	0.89	0.61	0.28	0.34	-1.98	-1.26	2.44	0.61	0.37	0.36	0.45	\N	\N	\N	\N	\N	\N	0.38
Yemen	2015	2.98	7.74	0.67	54.30	0.61	-0.14	0.83	0.51	0.32	0.26	-2.10	-1.37	2.19	0.74	\N	0.36	0.45	\N	\N	\N	\N	\N	\N	0.38
Yemen	2016	3.83	7.30	0.78	55.10	0.53	-0.13	\N	0.47	0.23	0.27	-2.24	-1.65	2.11	0.55	\N	0.36	0.41	\N	\N	\N	\N	\N	\N	0.38
Yemen	2017	3.25	\N	0.79	55.90	0.60	\N	\N	0.46	0.30	0.25	-2.33	-1.68	2.18	0.67	\N	0.36	0.37	\N	\N	\N	\N	\N	\N	0.38
Yemen	2018	3.06	\N	0.79	56.70	0.55	\N	0.79	0.46	0.31	0.31	\N	\N	2.40	0.79	\N	0.36	0.45	\N	\N	\N	\N	\N	\N	0.38
Zambia	2006	4.82	7.87	0.80	44.26	0.72	-0.02	0.79	0.70	0.23	0.53	0.08	-0.64	1.89	0.39	0.55	0.53	\N	\N	\N	\N	\N	\N	0.11	\N
Zambia	2007	4.00	7.92	0.69	45.72	0.68	-0.08	0.95	0.69	0.25	0.40	0.08	-0.54	1.79	0.45	\N	0.53	\N	\N	\N	\N	\N	\N	0.11	\N
Zambia	2008	4.73	7.97	0.62	47.18	0.72	0.05	0.89	0.74	0.21	0.56	0.15	-0.50	1.87	0.40	\N	0.53	\N	\N	\N	\N	\N	\N	0.11	\N
Zambia	2009	5.26	8.03	0.78	48.64	0.70	-0.11	0.92	0.73	0.12	0.41	0.13	-0.57	1.89	0.36	\N	0.53	0.58	0.32	\N	\N	\N	\N	0.11	\N
Zambia	2011	5.00	8.12	0.86	50.84	0.66	-0.01	0.88	0.83	0.20	0.40	0.17	-0.49	1.73	0.35	\N	0.53	0.52	\N	\N	\N	\N	\N	0.11	\N
Zambia	2012	5.01	8.16	0.78	51.58	0.79	0.00	0.81	0.73	0.25	0.59	0.26	-0.39	2.20	0.44	\N	0.53	0.61	\N	\N	\N	\N	\N	0.11	\N
Zambia	2013	5.24	8.18	0.76	52.32	0.77	-0.12	0.73	0.73	0.31	0.55	0.16	-0.39	2.56	0.49	\N	0.53	0.51	\N	\N	\N	\N	\N	0.11	\N
Zambia	2014	4.35	8.20	0.71	53.06	0.81	-0.02	0.81	0.69	0.33	0.61	0.02	-0.40	2.52	0.58	\N	0.53	0.62	\N	\N	\N	\N	\N	0.11	\N
Zambia	2015	4.84	8.20	0.69	53.80	0.76	-0.05	0.87	0.69	0.38	0.63	0.04	-0.39	3.08	0.64	0.57	0.53	0.67	\N	\N	\N	\N	\N	0.11	\N
Zambia	2016	4.35	8.20	0.77	54.30	0.81	0.11	0.77	0.73	0.37	0.70	-0.08	-0.46	3.20	0.74	\N	0.53	0.68	\N	\N	\N	\N	\N	0.11	\N
Zambia	2017	3.93	8.21	0.74	54.80	0.82	0.13	0.74	0.68	0.39	0.72	-0.11	-0.49	2.65	0.67	\N	0.53	0.61	\N	\N	\N	\N	\N	0.11	\N
Zambia	2018	4.04	8.22	0.72	55.30	0.79	0.04	0.81	0.70	0.35	0.61	\N	\N	2.78	0.69	\N	0.53	0.62	\N	\N	\N	\N	\N	0.11	\N
Zimbabwe	2006	3.83	7.37	0.82	41.58	0.43	-0.06	0.90	0.72	0.30	0.32	-1.24	-1.57	2.01	0.53	\N	0.43	\N	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2007	3.28	7.31	0.83	42.86	0.46	-0.06	0.95	0.66	0.26	0.23	-1.34	-1.65	1.93	0.59	\N	0.43	\N	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2008	3.17	7.10	0.84	44.14	0.34	-0.07	0.96	0.63	0.25	0.18	-1.38	-1.70	1.69	0.53	\N	0.43	\N	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2009	4.06	7.20	0.81	45.42	0.41	-0.06	0.93	0.74	0.22	0.29	-1.35	-1.72	2.02	0.50	\N	0.43	0.55	0.15	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2010	4.68	7.30	0.86	46.70	0.66	-0.07	0.83	0.75	0.12	0.47	-1.29	-1.69	1.51	0.32	\N	0.43	0.68	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2011	4.85	7.42	0.86	48.12	0.63	-0.06	0.83	0.78	0.21	0.43	-1.20	-1.62	1.76	0.36	0.43	0.43	0.51	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2012	4.96	7.53	0.90	49.54	0.47	-0.08	0.86	0.67	0.18	0.41	-1.13	-1.56	1.85	0.37	\N	0.43	0.49	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2013	4.69	7.57	0.80	50.96	0.58	-0.08	0.83	0.71	0.18	0.53	-1.03	-1.53	1.96	0.42	\N	0.43	0.56	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2014	4.18	7.56	0.77	52.38	0.64	-0.05	0.82	0.73	0.24	0.57	-0.99	-1.48	2.08	0.50	\N	0.43	0.60	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2015	3.70	7.56	0.74	53.80	0.67	-0.10	0.81	0.72	0.18	0.59	-0.89	-1.36	2.20	0.59	\N	0.43	0.66	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2016	3.74	7.54	0.77	54.40	0.73	-0.07	0.72	0.74	0.21	0.70	-0.90	-1.37	2.78	0.74	\N	0.43	0.60	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2017	3.64	7.55	0.75	55.00	0.75	-0.07	0.75	0.81	0.22	0.68	-0.99	-1.35	2.66	0.73	\N	0.43	0.58	\N	\N	\N	\N	0.12	\N	0.08
Zimbabwe	2018	3.62	7.55	0.78	55.60	0.76	-0.04	0.84	0.71	0.21	0.55	\N	\N	2.50	0.69	\N	0.43	0.54	\N	\N	\N	\N	0.12	\N	0.08
\.


--
-- Data for Name: score; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.score (country, score, whiskerhigh, whiskerlow, dystopia, gdp, social, healthy, choices, generosity, corruption) FROM stdin;
Finland	7.769	7.830	7.708	2.714	1.340	1.587	0.986	0.596	0.153	0.393
Denmark	7.600	7.667	7.534	2.393	1.383	1.573	0.996	0.592	0.252	0.410
Norway	7.554	7.616	7.492	2.241	1.488	1.582	1.028	0.603	0.271	0.341
Iceland	7.494	7.613	7.374	2.401	1.380	1.624	1.026	0.591	0.354	0.118
Netherlands	7.488	7.542	7.433	2.393	1.396	1.522	0.999	0.557	0.322	0.298
Switzerland	7.480	7.553	7.408	2.272	1.452	1.526	1.052	0.572	0.263	0.343
Sweden	7.343	7.416	7.270	2.246	1.387	1.487	1.009	0.574	0.267	0.373
New Zealand	7.307	7.383	7.232	2.127	1.303	1.557	1.026	0.585	0.330	0.380
Canada	7.278	7.357	7.200	2.193	1.365	1.505	1.039	0.584	0.285	0.308
Austria	7.246	7.313	7.179	2.378	1.376	1.475	1.016	0.532	0.244	0.226
Australia	7.228	7.315	7.141	2.094	1.372	1.548	1.036	0.557	0.332	0.290
Costa Rica	7.167	7.254	7.081	2.933	1.034	1.441	0.963	0.558	0.144	0.093
Israel	7.139	7.206	7.071	2.665	1.276	1.455	1.029	0.371	0.261	0.082
Luxembourg	7.090	7.152	7.028	1.954	1.609	1.479	1.012	0.526	0.194	0.316
United Kingdom	7.054	7.126	6.982	2.112	1.333	1.538	0.996	0.450	0.348	0.278
Ireland	7.021	7.102	6.941	1.845	1.499	1.553	0.999	0.516	0.298	0.310
Germany	6.985	7.045	6.925	2.150	1.373	1.454	0.987	0.495	0.261	0.265
Belgium	6.923	6.988	6.858	2.235	1.356	1.504	0.986	0.473	0.160	0.210
United States	6.892	6.986	6.798	2.266	1.433	1.457	0.874	0.454	0.280	0.128
Czech Republic	6.852	6.921	6.783	2.636	1.269	1.487	0.920	0.457	0.046	0.036
United Arab Emirates	6.825	6.901	6.748	2.145	1.503	1.310	0.825	0.598	0.262	0.182
Malta	6.726	6.810	6.642	1.816	1.300	1.520	0.999	0.564	0.375	0.151
Mexico	6.595	6.687	6.502	2.761	1.070	1.323	0.861	0.433	0.074	0.073
France	6.592	6.667	6.518	2.021	1.324	1.472	1.045	0.436	0.111	0.183
Taiwan Province of China	6.446	6.528	6.365	2.045	1.368	1.430	0.914	0.351	0.242	0.097
Chile	6.444	6.534	6.354	2.397	1.159	1.369	0.920	0.357	0.187	0.056
Guatemala	6.436	6.549	6.323	2.833	0.800	1.269	0.746	0.535	0.175	0.078
Saudi Arabia	6.375	6.481	6.268	2.169	1.403	1.357	0.795	0.439	0.080	0.132
Qatar	6.374	6.568	6.181	1.565	1.684	1.313	0.871	0.555	0.220	0.167
Spain	6.354	6.432	6.276	1.929	1.286	1.484	1.062	0.362	0.153	0.079
Panama	6.321	6.433	6.209	2.141	1.149	1.442	0.910	0.516	0.109	0.054
Brazil	6.300	6.403	6.197	2.480	1.004	1.439	0.802	0.390	0.099	0.086
Uruguay	6.293	6.388	6.198	2.014	1.124	1.465	0.891	0.523	0.127	0.150
Singapore	6.262	6.324	6.200	0.807	1.572	1.463	1.141	0.556	0.271	0.453
El Salvador	6.253	6.362	6.144	2.831	0.794	1.242	0.789	0.430	0.093	0.074
Italy	6.223	6.306	6.141	1.984	1.294	1.488	1.039	0.231	0.158	0.030
Bahrain	6.199	6.324	6.075	1.698	1.362	1.368	0.871	0.536	0.255	0.110
Slovakia	6.198	6.275	6.120	2.097	1.246	1.504	0.881	0.334	0.121	0.014
Trinidad and Tobago	6.192	6.416	5.968	2.081	1.231	1.477	0.713	0.489	0.185	0.016
Poland	6.182	6.269	6.094	2.003	1.206	1.438	0.884	0.483	0.117	0.050
Uzbekistan	6.174	6.279	6.069	1.951	0.745	1.529	0.756	0.631	0.322	0.240
Lithuania	6.149	6.236	6.062	2.202	1.238	1.515	0.818	0.291	0.043	0.042
Colombia	6.125	6.229	6.020	2.286	0.985	1.410	0.841	0.470	0.099	0.034
Slovenia	6.118	6.209	6.026	1.618	1.258	1.523	0.953	0.564	0.144	0.057
Nicaragua	6.105	6.218	5.992	2.490	0.694	1.325	0.835	0.435	0.200	0.127
Kosovo	6.100	6.199	6.001	2.469	0.882	1.232	0.758	0.489	0.262	0.006
Argentina	6.086	6.192	5.981	2.096	1.092	1.432	0.881	0.471	0.066	0.050
Romania	6.070	6.163	5.976	2.302	1.162	1.232	0.825	0.462	0.083	0.005
Cyprus	6.046	6.149	5.942	1.880	1.263	1.223	1.042	0.406	0.190	0.041
Ecuador	6.028	6.130	5.925	2.225	0.912	1.312	0.868	0.498	0.126	0.087
Kuwait	6.021	6.148	5.893	1.661	1.500	1.319	0.808	0.493	0.142	0.097
Thailand	6.008	6.103	5.913	1.777	1.050	1.409	0.828	0.557	0.359	0.028
Latvia	5.940	6.011	5.869	2.073	1.187	1.465	0.812	0.264	0.075	0.064
South Korea	5.895	5.984	5.805	1.949	1.301	1.219	1.036	0.159	0.175	0.056
Estonia	5.893	5.965	5.822	1.496	1.237	1.528	0.874	0.495	0.103	0.161
Jamaica	5.890	6.126	5.653	2.125	0.831	1.478	0.831	0.490	0.107	0.028
Mauritius	5.888	5.991	5.785	1.795	1.120	1.402	0.798	0.498	0.215	0.060
Japan	5.886	5.970	5.802	1.399	1.327	1.419	1.088	0.445	0.069	0.140
Honduras	5.860	5.987	5.734	2.323	0.642	1.236	0.828	0.507	0.246	0.078
Kazakhstan	5.809	5.890	5.727	1.746	1.173	1.508	0.729	0.410	0.146	0.096
Bolivia	5.779	5.876	5.683	2.376	0.776	1.209	0.706	0.511	0.137	0.064
Hungary	5.758	5.853	5.663	2.020	1.201	1.410	0.828	0.199	0.081	0.020
Paraguay	5.743	5.837	5.648	1.857	0.855	1.475	0.777	0.514	0.184	0.080
North Cyprus	5.718	5.819	5.616	1.390	1.263	1.252	1.042	0.417	0.191	0.162
Peru	5.697	5.811	5.583	2.044	0.960	1.274	0.854	0.455	0.083	0.027
Portugal	5.693	5.792	5.593	1.462	1.221	1.431	0.999	0.508	0.047	0.025
Pakistan	5.653	5.732	5.574	2.924	0.677	0.886	0.535	0.313	0.220	0.098
Russia	5.648	5.713	5.583	1.839	1.183	1.452	0.726	0.334	0.082	0.031
Philippines	5.631	5.744	5.519	2.092	0.807	1.293	0.657	0.558	0.117	0.107
Serbia	5.603	5.705	5.501	1.904	1.004	1.383	0.854	0.282	0.137	0.039
Moldova	5.529	5.604	5.453	2.350	0.685	1.328	0.739	0.245	0.181	0.000
Libya	5.525	5.646	5.404	1.804	1.044	1.303	0.673	0.416	0.133	0.152
Montenegro	5.523	5.621	5.425	1.822	1.051	1.361	0.871	0.197	0.142	0.080
Tajikistan	5.467	5.568	5.366	2.397	0.493	1.098	0.718	0.389	0.230	0.144
Croatia	5.432	5.510	5.354	1.660	1.155	1.266	0.914	0.296	0.119	0.022
Hong Kong S.A.R. of China	5.430	5.523	5.337	0.609	1.438	1.277	1.122	0.440	0.258	0.287
Dominican Republic	5.425	5.559	5.291	1.519	1.015	1.401	0.779	0.497	0.113	0.101
Bosnia and Herzegovina	5.386	5.477	5.296	1.905	0.945	1.212	0.845	0.212	0.263	0.006
Turkey	5.373	5.466	5.280	1.636	1.183	1.360	0.808	0.195	0.083	0.106
Malaysia	5.339	5.461	5.216	1.326	1.221	1.171	0.828	0.508	0.260	0.024
Belarus	5.323	5.392	5.253	1.531	1.067	1.465	0.789	0.235	0.094	0.142
Greece	5.287	5.382	5.191	1.848	1.181	1.156	0.999	0.067	0.000	0.034
Mongolia	5.285	5.362	5.208	1.550	0.948	1.531	0.667	0.317	0.235	0.038
Macedonia	5.274	5.365	5.182	1.595	0.983	1.294	0.838	0.345	0.185	0.034
Nigeria	5.265	5.389	5.140	2.530	0.696	1.111	0.245	0.426	0.215	0.041
Kyrgyzstan	5.261	5.348	5.173	1.719	0.551	1.438	0.723	0.508	0.300	0.023
Turkmenistan	5.247	5.302	5.191	1.334	1.052	1.538	0.657	0.394	0.244	0.028
Algeria	5.211	5.304	5.119	1.992	1.002	1.160	0.785	0.086	0.073	0.114
Morocco	5.208	5.308	5.108	2.314	0.801	0.782	0.782	0.418	0.036	0.076
Azerbaijan	5.208	5.279	5.136	1.680	1.043	1.147	0.769	0.351	0.035	0.182
Lebanon	5.197	5.284	5.110	1.762	0.987	1.224	0.815	0.216	0.166	0.027
Indonesia	5.192	5.300	5.085	1.382	0.931	1.203	0.660	0.491	0.498	0.028
China	5.191	5.240	5.141	1.466	1.029	1.125	0.893	0.521	0.058	0.100
Vietnam	5.175	5.247	5.103	1.474	0.741	1.346	0.851	0.543	0.147	0.073
Bhutan	5.082	5.196	4.969	1.350	0.813	1.321	0.604	0.457	0.370	0.167
Cameroon	5.044	5.170	4.918	2.649	0.549	0.910	0.331	0.381	0.187	0.037
Bulgaria	5.011	5.098	4.924	1.195	1.092	1.513	0.815	0.311	0.081	0.004
Ghana	4.996	5.137	4.856	2.367	0.611	0.868	0.486	0.381	0.245	0.040
Ivory Coast	4.944	5.072	4.815	2.739	0.569	0.808	0.232	0.352	0.154	0.090
Nepal	4.913	5.031	4.794	1.751	0.446	1.226	0.677	0.439	0.285	0.089
Jordan	4.906	5.019	4.792	1.406	0.837	1.225	0.815	0.383	0.110	0.130
Benin	4.883	5.022	4.745	3.049	0.393	0.437	0.397	0.349	0.175	0.082
Congo (Brazzaville)	4.812	4.955	4.668	2.262	0.673	0.799	0.508	0.372	0.105	0.093
Gabon	4.799	4.912	4.687	1.596	1.057	1.183	0.571	0.295	0.043	0.055
Laos	4.796	4.881	4.711	1.473	0.764	1.030	0.551	0.547	0.266	0.164
South Africa	4.722	4.838	4.607	1.369	0.960	1.351	0.469	0.389	0.130	0.055
Albania	4.719	4.829	4.608	1.461	0.947	0.848	0.874	0.383	0.178	0.027
Venezuela	4.707	4.835	4.579	1.250	0.960	1.427	0.805	0.154	0.064	0.047
Cambodia	4.700	4.810	4.589	1.465	0.574	1.122	0.637	0.609	0.232	0.062
Palestinian Territories	4.696	4.806	4.587	1.727	0.657	1.247	0.672	0.225	0.103	0.066
Senegal	4.681	4.764	4.598	2.009	0.450	1.134	0.571	0.292	0.153	0.072
Somalia	4.668	4.811	4.525	2.629	0.000	0.698	0.268	0.559	0.243	0.270
Namibia	4.639	4.777	4.501	1.443	0.879	1.313	0.477	0.401	0.070	0.056
Niger	4.628	4.765	4.490	2.742	0.138	0.774	0.366	0.318	0.188	0.102
Burkina Faso	4.587	4.695	4.479	2.275	0.331	1.056	0.380	0.255	0.177	0.113
Armenia	4.559	4.652	4.467	1.398	0.850	1.055	0.815	0.283	0.095	0.064
Iran	4.548	4.659	4.437	1.121	1.100	0.842	0.785	0.305	0.270	0.125
Guinea	4.534	4.667	4.402	2.325	0.380	0.829	0.375	0.332	0.207	0.086
Georgia	4.519	4.603	4.435	1.662	0.886	0.666	0.752	0.346	0.043	0.164
Gambia	4.516	4.668	4.365	2.023	0.308	0.939	0.428	0.382	0.269	0.167
Kenya	4.509	4.626	4.391	1.576	0.512	0.983	0.581	0.431	0.372	0.053
Mauritania	4.490	4.591	4.389	2.005	0.570	1.167	0.489	0.066	0.106	0.088
Mozambique	4.466	4.642	4.290	2.058	0.204	0.986	0.390	0.494	0.197	0.138
Tunisia	4.461	4.548	4.373	1.444	0.921	1.000	0.815	0.167	0.059	0.055
Bangladesh	4.456	4.538	4.373	1.406	0.562	0.928	0.723	0.527	0.166	0.143
Iraq	4.437	4.610	4.264	1.362	1.043	0.980	0.574	0.241	0.148	0.089
Congo (Kinshasa)	4.418	4.543	4.293	2.308	0.094	1.125	0.357	0.269	0.212	0.053
Mali	4.390	4.498	4.283	2.061	0.385	1.105	0.308	0.327	0.153	0.052
Sierra Leone	4.374	4.510	4.238	2.416	0.268	0.841	0.242	0.309	0.252	0.045
Sri Lanka	4.366	4.490	4.242	0.559	0.949	1.265	0.831	0.470	0.244	0.047
Myanmar	4.360	4.442	4.279	0.652	0.710	1.181	0.555	0.525	0.566	0.172
Chad	4.350	4.484	4.215	2.591	0.350	0.766	0.192	0.174	0.198	0.078
Ukraine	4.332	4.430	4.235	1.008	0.820	1.390	0.739	0.178	0.187	0.010
Ethiopia	4.286	4.365	4.206	1.731	0.336	1.033	0.532	0.344	0.209	0.100
Swaziland	4.212	4.392	4.031	1.730	0.811	1.149	0.000	0.313	0.074	0.135
Uganda	4.189	4.319	4.060	1.677	0.332	1.069	0.443	0.356	0.252	0.060
Egypt	4.166	4.252	4.079	1.187	0.913	1.039	0.644	0.241	0.076	0.067
Zambia	4.107	4.232	3.981	1.280	0.578	1.058	0.426	0.431	0.247	0.087
Togo	4.085	4.197	3.972	2.273	0.275	0.572	0.410	0.293	0.177	0.085
India	4.015	4.062	3.968	1.126	0.755	0.765	0.588	0.498	0.200	0.085
Liberia	3.975	4.115	3.836	1.902	0.073	0.922	0.443	0.370	0.233	0.033
Comoros	3.973	4.196	3.749	1.941	0.274	0.757	0.505	0.142	0.275	0.078
Madagascar	3.933	4.033	3.833	1.831	0.274	0.916	0.555	0.148	0.169	0.041
Lesotho	3.802	3.963	3.641	1.417	0.489	1.169	0.168	0.359	0.107	0.093
Burundi	3.775	3.985	3.565	2.325	0.046	0.447	0.380	0.220	0.176	0.180
Zimbabwe	3.663	3.780	3.546	1.149	0.366	1.114	0.433	0.361	0.151	0.089
Haiti	3.597	3.751	3.443	1.581	0.323	0.688	0.449	0.026	0.419	0.110
Botswana	3.488	3.611	3.365	0.183	1.041	1.145	0.538	0.455	0.025	0.100
Syria	3.462	3.664	3.260	1.541	0.619	0.378	0.440	0.013	0.331	0.141
Malawi	3.410	3.525	3.294	1.413	0.191	0.560	0.495	0.443	0.218	0.089
Yemen	3.380	3.479	3.281	1.139	0.287	1.163	0.463	0.143	0.108	0.077
Rwanda	3.334	3.425	3.242	0.467	0.359	0.711	0.614	0.555	0.217	0.411
Tanzania	3.231	3.347	3.114	0.531	0.476	0.885	0.499	0.417	0.276	0.147
Afghanistan	3.203	3.278	3.129	1.793	0.350	0.517	0.361	0.000	0.158	0.025
Central African Republic	3.083	3.227	2.939	2.456	0.026	0.000	0.105	0.225	0.235	0.035
South Sudan	2.853	3.005	2.701	1.374	0.306	0.575	0.295	0.010	0.202	0.091
\.


--
-- Name: codes codes_pkey; Type: CONSTRAINT; Schema: public; Owner: happex
--

ALTER TABLE ONLY public.codes
    ADD CONSTRAINT codes_pkey PRIMARY KEY (name);


--
-- Name: happy happy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.happy
    ADD CONSTRAINT happy_pkey PRIMARY KEY (country, year);


--
-- Name: score score_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.score
    ADD CONSTRAINT score_pkey PRIMARY KEY (country);


--
-- Name: TABLE happy; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.happy TO happex;


--
-- Name: TABLE score; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.score TO happex;


--
-- PostgreSQL database dump complete
--

