--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-4)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coin (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url text NOT NULL,
    price character varying(255) NOT NULL
);


ALTER TABLE public.coin OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coin_id_seq OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coin_id_seq OWNED BY public.coin.id;


--
-- Name: coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);


--
-- Data for Name: coin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coin (id, name, url, price) FROM stdin;
1	Bitcoin	https://coinmarketcap.com/currencies/bitcoin/	9202.99
2	Ethereum	https://coinmarketcap.com/currencies/ethereum/	229.41
3	Tether	https://coinmarketcap.com/currencies/tether/	1.00
4	XRP	https://coinmarketcap.com/currencies/xrp/	0.177025
5	Bitcoin Cash	https://coinmarketcap.com/currencies/bitcoin-cash/	224.98
6	Bitcoin SV	https://coinmarketcap.com/currencies/bitcoin-sv/	155.46
7	Litecoin	https://coinmarketcap.com/currencies/litecoin/	41.92
8	Binance Coin	https://coinmarketcap.com/currencies/binance-coin/	15.53
9	Crypto.com Coin	https://coinmarketcap.com/currencies/crypto-com-coin/	0.126806
10	EOS	https://coinmarketcap.com/currencies/eos/	2.37
11	Cardano	https://coinmarketcap.com/currencies/cardano/	0.084310
12	Tezos	https://coinmarketcap.com/currencies/tezos/	2.41
13	Chainlink	https://coinmarketcap.com/currencies/chainlink/	4.62
14	Stellar	https://coinmarketcap.com/currencies/stellar/	0.067387
15	UNUS SED LEO	https://coinmarketcap.com/currencies/unus-sed-leo/	1.27
16	Monero	https://coinmarketcap.com/currencies/monero/	64.15
17	TRON	https://coinmarketcap.com/currencies/tron/	0.016465
18	USD Coin	https://coinmarketcap.com/currencies/usd-coin/	1.00
19	Huobi Token	https://coinmarketcap.com/currencies/huobi-token/	4.15
20	Neo	https://coinmarketcap.com/currencies/neo/	10.06
21	Ethereum Classic	https://coinmarketcap.com/currencies/ethereum-classic/	5.73
22	Dash	https://coinmarketcap.com/currencies/dash/	68.05
23	IOTA	https://coinmarketcap.com/currencies/iota/	0.226367
24	Compound	https://coinmarketcap.com/currencies/compound/	212.81
25	Cosmos	https://coinmarketcap.com/currencies/cosmos/	2.63
26	Zcash	https://coinmarketcap.com/currencies/zcash/	52.02
27	VeChain	https://coinmarketcap.com/currencies/vechain/	0.008751
28	Maker	https://coinmarketcap.com/currencies/maker/	456.02
29	HedgeTrade	https://coinmarketcap.com/currencies/hedgetrade/	1.51
30	Ontology	https://coinmarketcap.com/currencies/ontology/	0.572840
31	NEM	https://coinmarketcap.com/currencies/nem/	0.042299
32	Basic Attention Token	https://coinmarketcap.com/currencies/basic-attention-token/	0.253304
33	OKB	https://coinmarketcap.com/currencies/okb/	5.06
34	Dogecoin	https://coinmarketcap.com/currencies/dogecoin/	0.002311
35	FTX Token	https://coinmarketcap.com/currencies/ftx-token/	2.92
36	DigiByte	https://coinmarketcap.com/currencies/digibyte/	0.020186
37	Paxos Standard	https://coinmarketcap.com/currencies/paxos-standard/	1.00
38	0x	https://coinmarketcap.com/currencies/0x/	0.339943
39	Kyber Network	https://coinmarketcap.com/currencies/kyber-network/	1.26
40	OMG Network	https://coinmarketcap.com/currencies/omg/	1.47
41	The Midas Touch Gold	https://coinmarketcap.com/currencies/the-midas-touch-gold/	0.051463
42	THETA	https://coinmarketcap.com/currencies/theta/	0.219684
43	Bitcoin Gold	https://coinmarketcap.com/currencies/bitcoin-gold/	10.71
44	Hedera Hashgraph	https://coinmarketcap.com/currencies/hedera-hashgraph/	0.038551
45	Augur	https://coinmarketcap.com/currencies/augur/	16.51
46	Zilliqa	https://coinmarketcap.com/currencies/zilliqa/	0.017324
47	Synthetix Network Token	https://coinmarketcap.com/currencies/synthetix-network-token/	2.04
48	Aave	https://coinmarketcap.com/currencies/aave/	0.134189
49	Binance USD	https://coinmarketcap.com/currencies/binance-usd/	1.00
50	Decred	https://coinmarketcap.com/currencies/decred/	14.13
51	Hyperion	https://coinmarketcap.com/currencies/hyperion/	0.516491
52	Algorand	https://coinmarketcap.com/currencies/algorand/	0.209770
53	ICON	https://coinmarketcap.com/currencies/icon/	0.294729
54	Qtum	https://coinmarketcap.com/currencies/qtum/	1.65
55	TrueUSD	https://coinmarketcap.com/currencies/trueusd/	1.00
56	Lisk	https://coinmarketcap.com/currencies/lisk/	1.14
57	Enjin Coin	https://coinmarketcap.com/currencies/enjin-coin/	0.167377
58	Bitcoin Diamond	https://coinmarketcap.com/currencies/bitcoin-diamond/	0.722313
59	Dai	https://coinmarketcap.com/currencies/multi-collateral-dai/	1.01
60	Siacoin	https://coinmarketcap.com/currencies/siacoin/	0.003064
61	Ren	https://coinmarketcap.com/currencies/ren/	0.147608
62	Nano	https://coinmarketcap.com/currencies/nano/	0.934089
63	Nexo	https://coinmarketcap.com/currencies/nexo/	0.221954
64	Ravencoin	https://coinmarketcap.com/currencies/ravencoin/	0.018918
65	Verge	https://coinmarketcap.com/currencies/verge/	0.007505
66	HUSD	https://coinmarketcap.com/currencies/husd/	1.00
67	Waves	https://coinmarketcap.com/currencies/waves/	1.13
68	Celsius	https://coinmarketcap.com/currencies/celsius/	0.465360
69	MonaCoin	https://coinmarketcap.com/currencies/monacoin/	1.68
70	DxChain Token	https://coinmarketcap.com/currencies/dxchain-token/	0.002065
71	Quant	https://coinmarketcap.com/currencies/quant/	8.43
72	ZB Token	https://coinmarketcap.com/currencies/zb-token/	0.218301
73	Flexacoin	https://coinmarketcap.com/currencies/flexacoin/	0.003163
74	Holo	https://coinmarketcap.com/currencies/holo/	0.000533
75	IOST	https://coinmarketcap.com/currencies/iostoken/	0.005598
76	Divi	https://coinmarketcap.com/currencies/divi/	0.047100
77	Loopring	https://coinmarketcap.com/currencies/loopring/	0.076241
78	SwissBorg	https://coinmarketcap.com/currencies/swissborg/	0.112112
79	Terra	https://coinmarketcap.com/currencies/terra-luna/	0.206069
80	Nervos Network	https://coinmarketcap.com/currencies/nervos-network/	0.004335
81	Bancor	https://coinmarketcap.com/currencies/bancor/	1.12
82	Status	https://coinmarketcap.com/currencies/status/	0.021962
83	Komodo	https://coinmarketcap.com/currencies/komodo/	0.618227
84	Steem	https://coinmarketcap.com/currencies/steem/	0.199920
85	Bytom	https://coinmarketcap.com/currencies/bytom/	0.064907
86	KuCoin Shares	https://coinmarketcap.com/currencies/kucoin-shares/	0.868852
87	MCO	https://coinmarketcap.com/currencies/crypto-com/	4.32
88	Matic Network	https://coinmarketcap.com/currencies/matic-network/	0.019187
89	Electroneum	https://coinmarketcap.com/currencies/electroneum/	0.006553
90	Hive	https://coinmarketcap.com/currencies/hive-blockchain/	0.218068
91	Blockstack	https://coinmarketcap.com/currencies/blockstack/	0.134646
92	Horizen	https://coinmarketcap.com/currencies/horizen/	6.78
93	BitShares	https://coinmarketcap.com/currencies/bitshares/	0.023000
94	BitTorrent	https://coinmarketcap.com/currencies/bittorrent/	0.000297
95	WAX	https://coinmarketcap.com/currencies/wax/	0.051161
96	Elrond	https://coinmarketcap.com/currencies/elrond/	0.006405
97	Energi	https://coinmarketcap.com/currencies/energi/	2.02
98	Numeraire	https://coinmarketcap.com/currencies/numeraire/	22.07
99	Decentraland	https://coinmarketcap.com/currencies/decentraland/	0.038724
100	ABBC Coin	https://coinmarketcap.com/currencies/abbc-coin/	0.097026
101	Chiliz	https://coinmarketcap.com/currencies/chiliz/	0.011771
102	NULS	https://coinmarketcap.com/currencies/nuls/	0.529267
103	v.systems	https://coinmarketcap.com/currencies/v-systems/	0.024993
104	Golem	https://coinmarketcap.com/currencies/golem-network-tokens/	0.051146
105	PAX Gold	https://coinmarketcap.com/currencies/pax-gold/	1798.40
106	RSK Infrastructure Framework	https://coinmarketcap.com/currencies/rsk-infrastructure-framework/	0.080558
107	HyperCash	https://coinmarketcap.com/currencies/hypercash/	1.10
108	iExec RLC	https://coinmarketcap.com/currencies/rlc/	0.612078
109	aelf	https://coinmarketcap.com/currencies/aelf/	0.086667
110	Ardor	https://coinmarketcap.com/currencies/ardor/	0.047167
111	SOLVE	https://coinmarketcap.com/currencies/solve/	0.136712
112	Reserve Rights	https://coinmarketcap.com/currencies/reserve-rights/	0.006687
113	Stratis	https://coinmarketcap.com/currencies/stratis/	0.454728
114	Zcoin	https://coinmarketcap.com/currencies/zcoin/	4.24
115	Aragon	https://coinmarketcap.com/currencies/aragon/	1.39
116	MaidSafeCoin	https://coinmarketcap.com/currencies/maidsafecoin/	0.096355
117	Aion	https://coinmarketcap.com/currencies/aion/	0.096388
118	Unibright	https://coinmarketcap.com/currencies/unibright/	0.278095
119	Aeternity	https://coinmarketcap.com/currencies/aeternity/	0.131033
120	Kava	https://coinmarketcap.com/currencies/kava/	1.21
121	Dragonchain	https://coinmarketcap.com/currencies/dragonchain/	0.118121
122	CyberVein	https://coinmarketcap.com/currencies/cybervein/	0.037717
123	Digitex Futures	https://coinmarketcap.com/currencies/digitex-futures/	0.045879
124	Xensor	https://coinmarketcap.com/currencies/xensor/	0.034620
125	TomoChain	https://coinmarketcap.com/currencies/tomochain/	0.529037
126	Swipe	https://coinmarketcap.com/currencies/swipe/	0.559082
127	WaykiChain	https://coinmarketcap.com/currencies/waykichain/	0.194479
128	DAD	https://coinmarketcap.com/currencies/dad/	0.307537
129	STASIS EURO	https://coinmarketcap.com/currencies/stasis-euro/	1.12
130	Power Ledger	https://coinmarketcap.com/currencies/power-ledger/	0.084248
131	Ark	https://coinmarketcap.com/currencies/ark/	0.289202
132	Pundi X	https://coinmarketcap.com/currencies/pundi-x/	0.000150
133	ReddCoin	https://coinmarketcap.com/currencies/reddcoin/	0.001189
134	Insolar	https://coinmarketcap.com/currencies/insolar/	0.847032
135	Super Zero Protocol	https://coinmarketcap.com/currencies/super-zero-protocol/	0.123461
136	Crypterium	https://coinmarketcap.com/currencies/crpt/	0.333967
137	Gatechain Token	https://coinmarketcap.com/currencies/gatechain-token/	0.484783
138	GXChain	https://coinmarketcap.com/currencies/gxchain/	0.501987
139	Orbs	https://coinmarketcap.com/currencies/orbs/	0.015039
140	Theta Fuel	https://coinmarketcap.com/currencies/theta-fuel/	0.008127
141	Streamr	https://coinmarketcap.com/currencies/streamr/	0.045907
142	Ripio Credit Network	https://coinmarketcap.com/currencies/ripio-credit-network/	0.059989
143	Thunder Token	https://coinmarketcap.com/currencies/thunder-token/	0.005347
144	Seele-N	https://coinmarketcap.com/currencies/seele/	0.041262
145	Harmony	https://coinmarketcap.com/currencies/harmony/	0.004545
146	Huobi Pool Token	https://coinmarketcap.com/currencies/huobi-pool-token/	0.005408
147	BHEX Token	https://coinmarketcap.com/currencies/bhex-token/	0.137831
148	Cortex	https://coinmarketcap.com/currencies/cortex/	0.107277
149	Haven Protocol	https://coinmarketcap.com/currencies/haven-protocol/	2.08
150	Molecular Future	https://coinmarketcap.com/currencies/molecular-future/	0.310500
151	Gnosis	https://coinmarketcap.com/currencies/gnosis-gno/	24.03
152	Beam	https://coinmarketcap.com/currencies/beam/	0.405329
153	IoTeX	https://coinmarketcap.com/currencies/iotex/	0.004768
154	Elastos	https://coinmarketcap.com/currencies/elastos/	1.39
155	Ocean Protocol	https://coinmarketcap.com/currencies/ocean-protocol/	0.075919
156	Wirex Token	https://coinmarketcap.com/currencies/wirex-token/	0.009610
157	Storj	https://coinmarketcap.com/currencies/storj/	0.153443
158	Wanchain	https://coinmarketcap.com/currencies/wanchain/	0.196634
159	FunFair	https://coinmarketcap.com/currencies/funfair/	0.003587
160	Acute Angle Cloud	https://coinmarketcap.com/currencies/acute-angle-cloud/	0.093046
161	12Ships	https://coinmarketcap.com/currencies/12ships/	0.004689
162	PIVX	https://coinmarketcap.com/currencies/pivx/	0.406401
163	MX Token	https://coinmarketcap.com/currencies/mx-token/	0.124221
164	Waltonchain	https://coinmarketcap.com/currencies/waltonchain/	0.327059
165	Project Pai	https://coinmarketcap.com/currencies/project-pai/	0.015428
166	Band Protocol	https://coinmarketcap.com/currencies/band-protocol/	1.11
167	WINk	https://coinmarketcap.com/currencies/wink-tronbet/	0.000071
168	BOSAGORA	https://coinmarketcap.com/currencies/bosagora/	0.078441
169	Kusama	https://coinmarketcap.com/currencies/kusama/	7.07
170	Fusion	https://coinmarketcap.com/currencies/fusion/	0.461441
171	Fetch.ai	https://coinmarketcap.com/currencies/fetch/	0.028089
172	Nash Exchange	https://coinmarketcap.com/currencies/nash-exchange/	0.881118
173	Request	https://coinmarketcap.com/currencies/request/	0.026086
174	Aurora	https://coinmarketcap.com/currencies/aurora/	0.003126
175	Metal	https://coinmarketcap.com/currencies/metal/	0.309713
176	TrueChain	https://coinmarketcap.com/currencies/truechain/	0.254408
177	Tachyon Protocol	https://coinmarketcap.com/currencies/tachyon-protocol/	0.075514
178	Origin Protocol	https://coinmarketcap.com/currencies/origin-protocol/	0.269920
179	Polymath	https://coinmarketcap.com/currencies/polymath-network/	0.038530
180	XinFin Network	https://coinmarketcap.com/currencies/xinfin-network/	0.003410
181	Function X	https://coinmarketcap.com/currencies/function-x/	0.086863
182	Grin	https://coinmarketcap.com/currencies/grin/	0.417159
183	Aidos Kuneen	https://coinmarketcap.com/currencies/aidos-kuneen/	0.762687
184	Nebulas	https://coinmarketcap.com/currencies/nebulas-token/	0.366218
185	Loom Network	https://coinmarketcap.com/currencies/loom-network/	0.019605
186	BitKan	https://coinmarketcap.com/currencies/bitkan/	0.002912
187	Gas	https://coinmarketcap.com/currencies/gas/	1.80
188	Melon	https://coinmarketcap.com/currencies/melon/	14.24
189	Civic	https://coinmarketcap.com/currencies/civic/	0.026279
190	Ignis	https://coinmarketcap.com/currencies/ignis/	0.022874
191	Utrust	https://coinmarketcap.com/currencies/utrust/	0.038436
192	Nimiq	https://coinmarketcap.com/currencies/nimiq/	0.002804
193	Syscoin	https://coinmarketcap.com/currencies/syscoin/	0.029143
194	Ankr	https://coinmarketcap.com/currencies/ankr/	0.003302
195	Enigma	https://coinmarketcap.com/currencies/enigma/	0.226981
196	Populous	https://coinmarketcap.com/currencies/populous/	0.314563
197	Vertcoin	https://coinmarketcap.com/currencies/vertcoin/	0.300285
198	IoT Chain	https://coinmarketcap.com/currencies/iot-chain/	0.190776
199	IRISnet	https://coinmarketcap.com/currencies/irisnet/	0.022198
200	Dent	https://coinmarketcap.com/currencies/dent/	0.000196
201	Innovative Bioresearch Classic	https://coinmarketcap.com/currencies/innovative-bioresearch-classic/	0.000618
202	Acash Coin	https://coinmarketcap.com/currencies/acash-coin/	0.202105
203	HEX	https://coinmarketcap.com/currencies/hex/	0.003219
204	INO COIN	https://coinmarketcap.com/currencies/ino-coin/	2.04
205	Counos X	https://coinmarketcap.com/currencies/counos-x/	20.45
206	MINDOL	https://coinmarketcap.com/currencies/mindol/	1.86
207	VestChain	https://coinmarketcap.com/currencies/vestchain/	0.034551
208	ExtStock Token	https://coinmarketcap.com/currencies/extstock-token/	0.427566
209	TNC Coin	https://coinmarketcap.com/currencies/tnc-coin/	0.092966
210	BitBay	https://coinmarketcap.com/currencies/bitbay/	0.202910
211	PlayFuel	https://coinmarketcap.com/currencies/playfuel/	0.400581
212	MimbleWimbleCoin	https://coinmarketcap.com/currencies/mimblewimblecoin/	16.40
213	Largo Coin	https://coinmarketcap.com/currencies/largo-coin/	9.95
214	Zelwin	https://coinmarketcap.com/currencies/zelwin/	4.32
215	Insight Chain	https://coinmarketcap.com/currencies/insight-chain/	0.444404
216	ThoreCoin	https://coinmarketcap.com/currencies/thorecoin/	1780.73
217	Velas	https://coinmarketcap.com/currencies/velas/	0.084869
218	Baer Chain	https://coinmarketcap.com/currencies/baer-chain/	0.640930
219	GlitzKoin	https://coinmarketcap.com/currencies/glitzkoin/	0.389993
220	Homeros	https://coinmarketcap.com/currencies/homeros/	0.434797
221	Cryptonex	https://coinmarketcap.com/currencies/cryptonex/	1.64
222	botXcoin	https://coinmarketcap.com/currencies/botxcoin/	0.055853
223	Metaverse Dualchain Network Architecture	https://coinmarketcap.com/currencies/metaverse-dualchain-network-architecture/	0.006393
224	Elamachain	https://coinmarketcap.com/currencies/elamachain/	0.155065
225	Advanced Internet Blocks	https://coinmarketcap.com/currencies/advanced-internet-blocks/	0.003487
226	Mixin	https://coinmarketcap.com/currencies/mixin/	153.52
227	TAGZ5	https://coinmarketcap.com/currencies/tagz5/	0.192509
228	Counos Coin	https://coinmarketcap.com/currencies/counos-coin/	4.95
229	Centrality	https://coinmarketcap.com/currencies/centrality/	0.077344
230	QCash	https://coinmarketcap.com/currencies/qcash/	0.141814
231	Idea Chain Coin	https://coinmarketcap.com/currencies/idea-chain-coin/	3.00
232	ERC20	https://coinmarketcap.com/currencies/erc20/	0.051744
233	THORChain	https://coinmarketcap.com/currencies/thorchain/	0.364954
234	NewYork Exchange	https://coinmarketcap.com/currencies/newyork-exchange/	9.17
235	Wrapped Bitcoin	https://coinmarketcap.com/currencies/wrapped-bitcoin/	9262.45
236	Beldex	https://coinmarketcap.com/currencies/beldex/	0.053730
237	Sologenic	https://coinmarketcap.com/currencies/sologenic/	0.234709
238	Joule	https://coinmarketcap.com/currencies/joule/	0.045230
239	BitcoinHD	https://coinmarketcap.com/currencies/bitcoinhd/	7.43
240	Davinci Coin	https://coinmarketcap.com/currencies/davinci-coin/	0.010171
241	Tap	https://coinmarketcap.com/currencies/tap/	0.085966
242	APIX	https://coinmarketcap.com/currencies/apix/	0.428611
243	Bitbook Gambling	https://coinmarketcap.com/currencies/bitbook-gambling/	0.117728
244	Tratin	https://coinmarketcap.com/currencies/tratin/	0.000374
245	Egoras	https://coinmarketcap.com/currencies/egoras/	0.000641
246	BTU Protocol	https://coinmarketcap.com/currencies/btu-protocol/	0.458699
247	FABRK	https://coinmarketcap.com/currencies/fabrk/	0.008564
248	Bankera	https://coinmarketcap.com/currencies/bankera/	0.001651
249	Bytecoin	https://coinmarketcap.com/currencies/bytecoin-bcn/	0.000214
250	Breezecoin	https://coinmarketcap.com/currencies/breezecoin/	0.387855
251	WhiteCoin	https://coinmarketcap.com/currencies/whitecoin/	0.152611
252	STEM CELL COIN	https://coinmarketcap.com/currencies/stem-cell-coin/	0.117738
253	Eidoo	https://coinmarketcap.com/currencies/eidoo/	0.641862
254	CRYPTOBUCKS	https://coinmarketcap.com/currencies/cryptobucks/	0.008560
255	Buggyra Coin Zero	https://coinmarketcap.com/currencies/buggyra-coin-zero/	0.016602
256	Bloomzed Token	https://coinmarketcap.com/currencies/bloomzed-token/	1.56
257	Bitball Treasure	https://coinmarketcap.com/currencies/bitball-treasure/	66.81
258	USDK	https://coinmarketcap.com/currencies/usdk/	1.01
259	ZEON	https://coinmarketcap.com/currencies/zeon/	0.001061
260	IDEX	https://coinmarketcap.com/currencies/idex/	0.052036
261	Vitae	https://coinmarketcap.com/currencies/vitae/	1.38
262	PLATINCOIN	https://coinmarketcap.com/currencies/platincoin/	5.38
263	inSure	https://coinmarketcap.com/currencies/insure/	0.007510
264	PRIZM	https://coinmarketcap.com/currencies/prizm/	0.015172
265	UNI COIN	https://coinmarketcap.com/currencies/uni-coin/	0.433334
266	Qubitica	https://coinmarketcap.com/currencies/qubitica/	30.37
267	BitMax Token	https://coinmarketcap.com/currencies/bitmax-token/	0.036939
268	NEXT	https://coinmarketcap.com/currencies/next/	0.593571
269	XeniosCoin	https://coinmarketcap.com/currencies/xenioscoin/	0.315080
270	Poseidon Network	https://coinmarketcap.com/currencies/poseidon-network/	0.010436
271	sUSD	https://coinmarketcap.com/currencies/susd/	0.993488
272	Folgory Coin	https://coinmarketcap.com/currencies/folgory-coin/	1.40
273	Hellenic Coin	https://coinmarketcap.com/currencies/helleniccoin/	0.312284
274	CasinoCoin	https://coinmarketcap.com/currencies/casinocoin/	0.000543
275	Handshake	https://coinmarketcap.com/currencies/handshake/	0.076638
276	WeShow Token	https://coinmarketcap.com/currencies/weshow-token/	0.044415
277	Chimpion	https://coinmarketcap.com/currencies/chimpion/	0.646127
278	1irstcoin	https://coinmarketcap.com/currencies/1irstcoin/	0.572311
279	Massnet	https://coinmarketcap.com/currencies/massnet/	0.267718
280	Rocket Pool	https://coinmarketcap.com/currencies/rocket-pool/	1.92
281	GHOST	https://coinmarketcap.com/currencies/ghost/	1.45
282	AgaveCoin	https://coinmarketcap.com/currencies/agavecoin/	0.049716
283	BigONE Token	https://coinmarketcap.com/currencies/bigone-token/	0.002024
284	CRYPTO20	https://coinmarketcap.com/currencies/c20/	0.463712
285	Dynamic Trading Rights	https://coinmarketcap.com/currencies/dynamic-trading-rights/	0.012036
286	Ultiledger	https://coinmarketcap.com/currencies/ultiledger/	0.013364
287	WOM Protocol	https://coinmarketcap.com/currencies/wom-protocol/	0.178373
288	Stakenet	https://coinmarketcap.com/currencies/stakenet/	0.172206
289	Ecoreal Estate	https://coinmarketcap.com/currencies/ecoreal-estate/	0.083820
290	Karatgold Coin	https://coinmarketcap.com/currencies/karatgold-coin/	0.003795
291	CryptalDash	https://coinmarketcap.com/currencies/cryptaldash/	0.016048
292	Uquid Coin	https://coinmarketcap.com/currencies/uquid-coin/	1.60
293	Bonorum	https://coinmarketcap.com/currencies/bonorum/	42.35
294	Apollo Currency	https://coinmarketcap.com/currencies/apollo-currency/	0.001072
295	Machine Xchange Coin	https://coinmarketcap.com/currencies/machine-xchange-coin/	0.006249
296	CWV Chain	https://coinmarketcap.com/currencies/cwv-chain/	0.004416
297	CONTRACOIN	https://coinmarketcap.com/currencies/contracoin/	0.950158
298	Loki	https://coinmarketcap.com/currencies/loki/	0.315472
299	Jewel	https://coinmarketcap.com/currencies/jewel/	0.279133
300	Obyte	https://coinmarketcap.com/currencies/obyte/	20.26
301	Solana	https://coinmarketcap.com/currencies/solana/	0.872454
302	OriginTrail	https://coinmarketcap.com/currencies/origintrail/	0.054495
303	MovieBloc	https://coinmarketcap.com/currencies/moviebloc/	0.001854
304	Bit-Z Token	https://coinmarketcap.com/currencies/bit-z-token/	0.114795
305	Elitium	https://coinmarketcap.com/currencies/elitium/	0.878501
306	SingularityNET	https://coinmarketcap.com/currencies/singularitynet/	0.017649
307	Factom	https://coinmarketcap.com/currencies/factom/	1.56
308	BHPCoin	https://coinmarketcap.com/currencies/bhp-coin/	0.713296
309	BORA	https://coinmarketcap.com/currencies/bora/	0.020035
310	Tierion	https://coinmarketcap.com/currencies/tierion/	0.033461
311	Envion	https://coinmarketcap.com/currencies/envion/	0.111688
312	WazirX	https://coinmarketcap.com/currencies/wazirx/	0.125171
313	Groestlcoin	https://coinmarketcap.com/currencies/groestlcoin/	0.184465
314	General Attention Currency	https://coinmarketcap.com/currencies/general-attention-currency/	1.39
315	Cryptoindex.com 100	https://coinmarketcap.com/currencies/cryptoindex-com-100/	0.222020
316	ILCoin	https://coinmarketcap.com/currencies/ilcoin/	0.027001
317	LBRY Credits	https://coinmarketcap.com/currencies/library-credit/	0.031770
318	Time New Bank	https://coinmarketcap.com/currencies/time-new-bank/	0.004153
319	Neutrino Dollar	https://coinmarketcap.com/currencies/neutrino-dollar/	1.00
320	AMO Coin	https://coinmarketcap.com/currencies/amo-coin/	0.000764
321	Everipedia	https://coinmarketcap.com/currencies/everipedia/	0.001712
322	DeviantCoin	https://coinmarketcap.com/currencies/deviantcoin/	0.473957
323	Cindicator	https://coinmarketcap.com/currencies/cindicator/	0.006569
324	Celer Network	https://coinmarketcap.com/currencies/celer-network/	0.003499
325	Bitcoin 2	https://coinmarketcap.com/currencies/bitcoin2/	0.756548
326	StormX	https://coinmarketcap.com/currencies/stormx/	0.001917
327	Quantstamp	https://coinmarketcap.com/currencies/quantstamp/	0.021087
328	Invictus Hyperion Fund	https://coinmarketcap.com/currencies/invictus-hyperion-fund/	0.109370
329	ChainX	https://coinmarketcap.com/currencies/chainx/	2.28
330	PlayChip	https://coinmarketcap.com/currencies/playchip/	0.000925
331	Ampleforth	https://coinmarketcap.com/currencies/ampleforth/	2.31
332	Newton	https://coinmarketcap.com/currencies/newton/	0.000629
333	Dragon Coins	https://coinmarketcap.com/currencies/dragon-coins/	0.037047
334	COTI	https://coinmarketcap.com/currencies/coti/	0.024905
335	SaluS	https://coinmarketcap.com/currencies/salus/	12.56
336	TrustVerse	https://coinmarketcap.com/currencies/trustverse/	0.037625
337	LTO Network	https://coinmarketcap.com/currencies/lto-network/	0.056286
338	Ultra	https://coinmarketcap.com/currencies/ultra/	0.045176
339	ZBG Token	https://coinmarketcap.com/currencies/zbg-token/	0.043917
340	Travala.com	https://coinmarketcap.com/currencies/travala/	0.318639
341	VideoCoin	https://coinmarketcap.com/currencies/videocoin/	0.106383
342	SynchroBitcoin	https://coinmarketcap.com/currencies/synchrobitcoin/	0.162350
343	Lambda	https://coinmarketcap.com/currencies/lambda/	0.018006
344	FLETA	https://coinmarketcap.com/currencies/fleta/	0.011482
345	Nexus	https://coinmarketcap.com/currencies/nexus/	0.179406
346	XMax	https://coinmarketcap.com/currencies/xmax/	0.000693
347	CONUN	https://coinmarketcap.com/currencies/conun/	0.004052
348	QASH	https://coinmarketcap.com/currencies/qash/	0.032925
349	Rakon	https://coinmarketcap.com/currencies/rakon/	0.085947
350	Unobtanium	https://coinmarketcap.com/currencies/unobtanium/	55.86
351	GoChain	https://coinmarketcap.com/currencies/gochain/	0.011439
352	RChain	https://coinmarketcap.com/currencies/rchain/	0.023294
353	Chromia	https://coinmarketcap.com/currencies/chromia/	0.034023
354	Spectre.ai Dividend Token	https://coinmarketcap.com/currencies/spectre-dividend/	0.134723
355	TTC	https://coinmarketcap.com/currencies/ttc/	0.025524
356	Sentinel Protocol	https://coinmarketcap.com/currencies/sentinel-protocol/	0.027206
357	PeepCoin	https://coinmarketcap.com/currencies/peepcoin/	0.000093
358	Wixlar	https://coinmarketcap.com/currencies/wixlar/	0.004551
359	Carry	https://coinmarketcap.com/currencies/carry/	0.002074
360	Voyager Token	https://coinmarketcap.com/currencies/voyager-token/	0.048473
361	Fantom	https://coinmarketcap.com/currencies/fantom/	0.005938
362	Kleros	https://coinmarketcap.com/currencies/kleros/	0.023253
363	Contentos	https://coinmarketcap.com/currencies/contentos/	0.008495
364	Nxt	https://coinmarketcap.com/currencies/nxt/	0.010681
365	Einsteinium	https://coinmarketcap.com/currencies/einsteinium/	0.048393
366	FIBOS	https://coinmarketcap.com/currencies/fibos/	0.009985
367	MediBloc	https://coinmarketcap.com/currencies/medibloc/	0.004134
368	TOP	https://coinmarketcap.com/currencies/top/	0.002062
369	Cred	https://coinmarketcap.com/currencies/libra-credit/	0.012568
370	QuarkChain	https://coinmarketcap.com/currencies/quarkchain/	0.006091
371	Proton	https://coinmarketcap.com/currencies/proton/	0.016530
372	Orchid	https://coinmarketcap.com/currencies/orchid/	0.156251
373	Veritaseum	https://coinmarketcap.com/currencies/veritaseum/	4.77
374	Monolith	https://coinmarketcap.com/currencies/monolith/	0.313258
375	Arcblock	https://coinmarketcap.com/currencies/arcblock/	0.103301
376	Bread	https://coinmarketcap.com/currencies/bread/	0.114658
377	Raiden Network Token	https://coinmarketcap.com/currencies/raiden-network-token/	0.199586
378	Emirex Token	https://coinmarketcap.com/currencies/emirex-token/	0.408862
379	Anchor	https://coinmarketcap.com/currencies/anchor/	0.791061
380	V-ID	https://coinmarketcap.com/currencies/v-id/	0.214234
381	Zenon	https://coinmarketcap.com/currencies/zenon/	2.43
382	MicroBitcoin	https://coinmarketcap.com/currencies/microbitcoin/	0.000053
383	Gemini Dollar	https://coinmarketcap.com/currencies/gemini-dollar/	1.00
384	KARMA	https://coinmarketcap.com/currencies/karma-eos/	0.001835
385	BitForex Token	https://coinmarketcap.com/currencies/bitforex-token/	0.002334
386	NKN	https://coinmarketcap.com/currencies/nkn/	0.021227
387	ARPA Chain	https://coinmarketcap.com/currencies/arpa-chain/	0.013348
388	DEAPcoin	https://coinmarketcap.com/currencies/deapcoin/	0.011172
389	Asch	https://coinmarketcap.com/currencies/asch/	0.105538
390	Telcoin	https://coinmarketcap.com/currencies/telcoin/	0.000208
391	Kin	https://coinmarketcap.com/currencies/kin/	0.000006
392	Content Value Network	https://coinmarketcap.com/currencies/content-value-network/	0.011478
393	HyperDAO	https://coinmarketcap.com/currencies/hyperdao/	0.028544
394	ShareToken	https://coinmarketcap.com/currencies/sharetoken/	0.008000
395	Standard Tokenization Protocol	https://coinmarketcap.com/currencies/standard-tokenization-protocol/	0.013717
396	Tellor	https://coinmarketcap.com/currencies/tellor/	7.43
397	Valor Token	https://coinmarketcap.com/currencies/valor-token/	0.474453
398	CyberMiles	https://coinmarketcap.com/currencies/cybermiles/	0.011829
399	Aeon	https://coinmarketcap.com/currencies/aeon/	0.592985
400	The Force Protocol	https://coinmarketcap.com/currencies/the-force-protocol/	0.030085
401	LiquidApps	https://coinmarketcap.com/currencies/liquid-apps/	0.013688
402	Hxro	https://coinmarketcap.com/currencies/hxro/	0.090198
403	Sport and Leisure	https://coinmarketcap.com/currencies/sport-and-leisure/	0.013765
404	Neblio	https://coinmarketcap.com/currencies/neblio/	0.573272
405	Diamond Platform Token	https://coinmarketcap.com/currencies/diamond-platform-token/	5.26
406	HYCON	https://coinmarketcap.com/currencies/hycon/	0.003999
407	Nectar	https://coinmarketcap.com/currencies/nectar/	0.109546
408	Santiment Network Token	https://coinmarketcap.com/currencies/santiment/	0.142577
409	FirstBlood	https://coinmarketcap.com/currencies/firstblood/	0.104837
410	Metadium	https://coinmarketcap.com/currencies/metadium/	0.007198
411	Tael	https://coinmarketcap.com/currencies/tael/	0.105676
412	Dimension Chain	https://coinmarketcap.com/currencies/dimension-chain/	0.036253
413	Aladdin	https://coinmarketcap.com/currencies/aladdin/	0.000204
414	Skycoin	https://coinmarketcap.com/currencies/skycoin/	0.490791
415	Ethereum Meta	https://coinmarketcap.com/currencies/ethereum-meta/	0.000177
416	Constellation	https://coinmarketcap.com/currencies/constellation/	0.006965
417	LATOKEN	https://coinmarketcap.com/currencies/latoken/	0.023028
418	Game.com	https://coinmarketcap.com/currencies/game/	0.011414
419	Bibox Token	https://coinmarketcap.com/currencies/bibox-token/	0.090534
420	Burst	https://coinmarketcap.com/currencies/burst/	0.004076
421	Aencoin	https://coinmarketcap.com/currencies/aencoin/	0.030764
422	AdEx	https://coinmarketcap.com/currencies/adx-net/	0.096821
423	DigixDAO	https://coinmarketcap.com/currencies/digixdao/	43.96
424	B2BX	https://coinmarketcap.com/currencies/b2bx/	0.426241
425	Blocknet	https://coinmarketcap.com/currencies/blocknet/	1.20
426	NavCoin	https://coinmarketcap.com/currencies/nav-coin/	0.120564
427	DMarket	https://coinmarketcap.com/currencies/dmarket/	0.145659
428	Moeda Loyalty Points	https://coinmarketcap.com/currencies/moeda-loyalty-points/	0.421617
429	Safex Token	https://coinmarketcap.com/currencies/safex-token/	0.004378
430	Mainframe	https://coinmarketcap.com/currencies/mainframe/	0.000872
431	MixMarvel	https://coinmarketcap.com/currencies/mixmarvel/	0.004129
432	#MetaHash	https://coinmarketcap.com/currencies/metahash/	0.004207
433	ShipChain	https://coinmarketcap.com/currencies/shipchain/	0.016943
434	AirSwap	https://coinmarketcap.com/currencies/airswap/	0.053548
435	TROY	https://coinmarketcap.com/currencies/troy/	0.003359
436	Metaverse ETP	https://coinmarketcap.com/currencies/metaverse/	0.101431
437	Electra	https://coinmarketcap.com/currencies/electra/	0.000276
438	Bezant	https://coinmarketcap.com/currencies/bezant/	0.009554
439	VNX Exchange	https://coinmarketcap.com/currencies/vnx-exchange/	0.280353
440	Propy	https://coinmarketcap.com/currencies/propy/	0.111075
441	Morpheus.Network	https://coinmarketcap.com/currencies/morpheus-network/	0.230203
442	Cocos-BCX	https://coinmarketcap.com/currencies/cocos-bcx/	0.000318
443	Gifto	https://coinmarketcap.com/currencies/gifto/	0.011254
444	Nestree	https://coinmarketcap.com/currencies/nestree/	0.008600
445	Dusk Network	https://coinmarketcap.com/currencies/dusk-network/	0.030806
446	Safe	https://coinmarketcap.com/currencies/safe/	0.360179
447	QuickX Protocol	https://coinmarketcap.com/currencies/quickx-protocol/	0.014916
448	EDC Blockchain [old]	https://coinmarketcap.com/currencies/edc-blockchain-old/	0.002781
449	JUST	https://coinmarketcap.com/currencies/just/	0.005179
450	XTRABYTES	https://coinmarketcap.com/currencies/xtrabytes/	0.016946
451	Dero	https://coinmarketcap.com/currencies/dero/	0.734387
452	Polis	https://coinmarketcap.com/currencies/polis/	0.732768
453	CoinEx Token	https://coinmarketcap.com/currencies/coinex-token/	0.010598
454	Aergo	https://coinmarketcap.com/currencies/aergo/	0.026767
455	Quantum Resistant Ledger	https://coinmarketcap.com/currencies/quantum-resistant-ledger/	0.098651
456	Moss Coin	https://coinmarketcap.com/currencies/moss-coin/	0.019206
457	VIDY	https://coinmarketcap.com/currencies/vidy/	0.001133
458	ChronoCoin	https://coinmarketcap.com/currencies/chronocoin/	0.003125
459	Particl	https://coinmarketcap.com/currencies/particl/	0.759818
460	Po.et	https://coinmarketcap.com/currencies/poet/	0.002203
461	YOU COIN	https://coinmarketcap.com/currencies/you-coin/	0.012372
462	LINA	https://coinmarketcap.com/currencies/lina/	0.023440
463	Atomic Wallet Coin	https://coinmarketcap.com/currencies/atomic-wallet-coin/	0.662760
464	REPO	https://coinmarketcap.com/currencies/repo/	0.061818
465	VITE	https://coinmarketcap.com/currencies/vite/	0.014264
466	TenX	https://coinmarketcap.com/currencies/tenx/	0.045243
467	Darico Ecosystem Coin	https://coinmarketcap.com/currencies/darcio-ecosystem-coin/	0.105014
468	DREP	https://coinmarketcap.com/currencies/drep/	0.002686
469	OST	https://coinmarketcap.com/currencies/ost/	0.008773
470	FNB Protocol	https://coinmarketcap.com/currencies/fnb-protocol/	0.002771
471	Prometeus	https://coinmarketcap.com/currencies/prometeus/	1.00
472	Quark	https://coinmarketcap.com/currencies/quark/	0.024562
473	IONChain	https://coinmarketcap.com/currencies/ionchain/	0.053672
474	Peercoin	https://coinmarketcap.com/currencies/peercoin/	0.246034
475	ODEM	https://coinmarketcap.com/currencies/odem/	0.029406
476	MOAC	https://coinmarketcap.com/currencies/moac/	0.103044
477	Digix Gold Token	https://coinmarketcap.com/currencies/digix-gold-token/	54.56
478	Kcash	https://coinmarketcap.com/currencies/kcash/	0.014335
479	Perlin	https://coinmarketcap.com/currencies/perlin/	0.018041
480	Achain	https://coinmarketcap.com/currencies/achain/	0.006527
481	Effect.AI	https://coinmarketcap.com/currencies/effect-ai/	0.025094
482	Ivy	https://coinmarketcap.com/currencies/ivy/	0.007041
483	Wings	https://coinmarketcap.com/currencies/wings/	0.064593
484	SingularDTV	https://coinmarketcap.com/currencies/singulardtv/	0.010447
485	GreenPower	https://coinmarketcap.com/currencies/greenpower/	0.001926
486	IQeon	https://coinmarketcap.com/currencies/iqeon/	1.13
487	Endor Protocol	https://coinmarketcap.com/currencies/endor-protocol/	0.004370
488	United Traders Token	https://coinmarketcap.com/currencies/uttoken/	0.164823
489	EveryCoin	https://coinmarketcap.com/currencies/everycoin/	0.000657
490	GameCredits	https://coinmarketcap.com/currencies/gamecredits/	0.087592
491	ROOBEE	https://coinmarketcap.com/currencies/roobee/	0.003692
492	GAPS	https://coinmarketcap.com/currencies/gaps/	0.607153
493	Bluzelle	https://coinmarketcap.com/currencies/bluzelle/	0.026045
494	Origo	https://coinmarketcap.com/currencies/origo/	0.013743
495	Contents Protocol	https://coinmarketcap.com/currencies/contents-protocol/	0.001933
496	GNY	https://coinmarketcap.com/currencies/gny/	0.030726
497	DAOstack	https://coinmarketcap.com/currencies/daostack/	0.122411
498	Dune Network	https://coinmarketcap.com/currencies/dune-network/	0.012779
499	T.OS	https://coinmarketcap.com/currencies/t-os/	0.006874
500	Credits	https://coinmarketcap.com/currencies/credits/	0.031295
501	Telos	https://coinmarketcap.com/currencies/telos/	0.021879
502	USDQ	https://coinmarketcap.com/currencies/usdq/	1.04
503	HitChain	https://coinmarketcap.com/currencies/hitchain/	0.000093
504	Namecoin	https://coinmarketcap.com/currencies/namecoin/	0.388599
505	Ergo	https://coinmarketcap.com/currencies/ergo/	0.346102
506	suterusu	https://coinmarketcap.com/currencies/suterusu/	0.005605
507	Steem Dollars	https://coinmarketcap.com/currencies/steem-dollars/	0.969479
508	Universa	https://coinmarketcap.com/currencies/universa/	0.003021
509	Egretia	https://coinmarketcap.com/currencies/egretia/	0.001318
510	BnkToTheFuture	https://coinmarketcap.com/currencies/bnktothefuture/	0.007612
511	Monero Classic	https://coinmarketcap.com/currencies/monero-classic/	0.292095
512	CoinMetro Token	https://coinmarketcap.com/currencies/coinmetro-token/	0.026397
513	Levolution	https://coinmarketcap.com/currencies/levolution/	0.135361
514	All Sports	https://coinmarketcap.com/currencies/all-sports/	0.003665
515	SIRIN LABS Token	https://coinmarketcap.com/currencies/sirin-labs-token/	0.011149
516	Zano	https://coinmarketcap.com/currencies/zano/	0.536636
517	Neumark	https://coinmarketcap.com/currencies/neumark/	0.141965
518	CargoX	https://coinmarketcap.com/currencies/cargox/	0.034480
519	FOAM	https://coinmarketcap.com/currencies/foam/	0.018001
520	BLOCKv	https://coinmarketcap.com/currencies/blockv/	0.001800
521	Ruff	https://coinmarketcap.com/currencies/ruff/	0.005468
522	EDUCare	https://coinmarketcap.com/currencies/educare/	0.007354
523	Robotina	https://coinmarketcap.com/currencies/robotina/	0.017535
524	QLC Chain	https://coinmarketcap.com/currencies/qlink/	0.022186
525	PressOne	https://coinmarketcap.com/currencies/pressone/	0.018618
526	Lightning Bitcoin	https://coinmarketcap.com/currencies/lightning-bitcoin/	1.36
527	Cartesi	https://coinmarketcap.com/currencies/cartesi/	0.035416
528	XYO	https://coinmarketcap.com/currencies/xyo/	0.000403
529	U Network	https://coinmarketcap.com/currencies/u-network/	0.000738
530	Mithril	https://coinmarketcap.com/currencies/mithril/	0.005882
531	Eminer	https://coinmarketcap.com/currencies/eminer/	0.004065
532	Auctus	https://coinmarketcap.com/currencies/auctus/	0.077426
533	SonoCoin	https://coinmarketcap.com/currencies/sonocoin/	0.180174
534	Revain	https://coinmarketcap.com/currencies/revain/	0.010619
535	UnlimitedIP	https://coinmarketcap.com/currencies/unlimitedip/	0.003970
536	Genesis Vision	https://coinmarketcap.com/currencies/genesis-vision/	1.14
537	Atlas Protocol	https://coinmarketcap.com/currencies/atlas-protocol/	0.001959
538	SmartMesh	https://coinmarketcap.com/currencies/smartmesh/	0.003751
539	Tokenomy	https://coinmarketcap.com/currencies/tokenomy/	0.025124
540	SALT	https://coinmarketcap.com/currencies/salt/	0.062579
541	DigitalBits	https://coinmarketcap.com/currencies/digitalbits/	0.014729
542	qiibee	https://coinmarketcap.com/currencies/qiibee/	0.006874
543	CryptoFranc	https://coinmarketcap.com/currencies/cryptofranc/	1.06
544	ALQO	https://coinmarketcap.com/currencies/alqo/	0.077260
545	Pillar	https://coinmarketcap.com/currencies/pillar/	0.019176
546	DDKoin	https://coinmarketcap.com/currencies/ddkoin/	2.89
547	INT Chain	https://coinmarketcap.com/currencies/int-chain/	0.011002
548	Compound Coin	https://coinmarketcap.com/currencies/compound-coin/	0.000092
549	LCX	https://coinmarketcap.com/currencies/lcx/	0.009291
550	Hydro Protocol	https://coinmarketcap.com/currencies/hydro-protocol/	0.006992
551	Wagerr	https://coinmarketcap.com/currencies/wagerr/	0.025780
552	Cosmo Coin	https://coinmarketcap.com/currencies/cosmo-coin/	0.007309
553	StakeCubeCoin	https://coinmarketcap.com/currencies/stakecubecoin/	0.726501
554	King DAG	https://coinmarketcap.com/currencies/king-dag/	0.101805
555	Vid	https://coinmarketcap.com/currencies/vid/	0.176121
556	Everex	https://coinmarketcap.com/currencies/everex/	0.214031
557	Metrix Coin	https://coinmarketcap.com/currencies/metrix-coin/	0.000275
558	SymVerse	https://coinmarketcap.com/currencies/symverse/	0.071541
559	Zel	https://coinmarketcap.com/currencies/zel/	0.044459
560	ProximaX	https://coinmarketcap.com/currencies/proximax/	0.000779
561	doc.com Token	https://coinmarketcap.com/currencies/doc-com-token/	0.006221
562	BackPacker Coin	https://coinmarketcap.com/currencies/backpacker-coin/	1.02
563	WePower	https://coinmarketcap.com/currencies/wepower/	0.007650
564	OTOCASH	https://coinmarketcap.com/currencies/otocash/	0.216877
565	NOIA Network	https://coinmarketcap.com/currencies/noia-network/	0.017467
566	GHOSTPRISM	https://coinmarketcap.com/currencies/ghostprism/	2.11
567	Castweet	https://coinmarketcap.com/currencies/castweet/	2.65
568	ECC	https://coinmarketcap.com/currencies/eccoin/	0.000183
569	Viacoin	https://coinmarketcap.com/currencies/viacoin/	0.197062
570	Polybius	https://coinmarketcap.com/currencies/polybius/	1.15
571	AmonD	https://coinmarketcap.com/currencies/amond/	0.005682
572	NPCoin	https://coinmarketcap.com/currencies/npcoin/	0.062321
573	Ternio	https://coinmarketcap.com/currencies/ternio/	0.007881
574	Metronome	https://coinmarketcap.com/currencies/metronome/	0.424743
575	ETERNAL TOKEN	https://coinmarketcap.com/currencies/eternal-token/	0.048087
576	Ambrosus	https://coinmarketcap.com/currencies/amber/	0.012458
577	Switcheo	https://coinmarketcap.com/currencies/switcheo/	0.008547
578	Baz Token	https://coinmarketcap.com/currencies/baz-token/	4.07
579	Cashaa	https://coinmarketcap.com/currencies/cashaa/	0.007515
580	DAPS Coin	https://coinmarketcap.com/currencies/daps-coin/	0.000084
581	Ferrum Network	https://coinmarketcap.com/currencies/ferrum-network/	0.032210
582	VNDC	https://coinmarketcap.com/currencies/vndc/	0.000043
583	YOYOW	https://coinmarketcap.com/currencies/yoyow/	0.009096
584	AppCoins	https://coinmarketcap.com/currencies/appcoins/	0.040411
585	Pirate Chain	https://coinmarketcap.com/currencies/pirate-chain/	0.026836
586	TE-FOOD	https://coinmarketcap.com/currencies/te-food/	0.008214
587	USDJ	https://coinmarketcap.com/currencies/usdj/	0.999970
588	Gulden	https://coinmarketcap.com/currencies/gulden/	0.008157
589	bitCNY	https://coinmarketcap.com/currencies/bitcny/	0.142779
590	SwftCoin	https://coinmarketcap.com/currencies/swftcoin/	0.001041
591	SmartCash	https://coinmarketcap.com/currencies/smartcash/	0.002947
592	Cloudbric	https://coinmarketcap.com/currencies/cloudbric/	0.007468
593	Observer	https://coinmarketcap.com/currencies/observer/	0.001875
594	Ubiq	https://coinmarketcap.com/currencies/ubiq/	0.096048
595	High Performance Blockchain	https://coinmarketcap.com/currencies/high-performance-blockchain/	0.093813
596	OAX	https://coinmarketcap.com/currencies/oax/	0.054665
597	Akropolis	https://coinmarketcap.com/currencies/akropolis/	0.003084
598	Everus	https://coinmarketcap.com/currencies/everus/	0.008707
599	VeriDocGlobal	https://coinmarketcap.com/currencies/veridocglobal/	0.000486
600	0Chain	https://coinmarketcap.com/currencies/0chain/	0.099822
601	Dock	https://coinmarketcap.com/currencies/dock/	0.006637
602	Sense	https://coinmarketcap.com/currencies/sense/	0.007863
603	Mooncoin	https://coinmarketcap.com/currencies/mooncoin/	0.000018
604	Jibrel Network	https://coinmarketcap.com/currencies/jibrel-network/	0.023269
605	Digital Asset Guarantee Token	https://coinmarketcap.com/currencies/digital-asset-guarantee-token/	0.118194
606	Blox	https://coinmarketcap.com/currencies/blox/	0.005787
607	district0x	https://coinmarketcap.com/currencies/district0x/	0.006353
608	LINKA	https://coinmarketcap.com/currencies/linka/	0.005472
609	VIBE	https://coinmarketcap.com/currencies/vibe/	0.014480
610	Pluton	https://coinmarketcap.com/currencies/pluton/	4.40
611	FLO	https://coinmarketcap.com/currencies/flo/	0.024470
612	BitCapitalVendor	https://coinmarketcap.com/currencies/bitcapitalvendor/	0.003862
613	Covesting	https://coinmarketcap.com/currencies/covesting/	0.202962
614	GET Protocol	https://coinmarketcap.com/currencies/get-protocol/	0.318225
615	OneRoot Network	https://coinmarketcap.com/currencies/oneroot-network/	0.012694
616	CryptoVerificationCoin	https://coinmarketcap.com/currencies/cryptoverificationcoin/	6.17
617	ZrCoin	https://coinmarketcap.com/currencies/zrcoin/	0.717771
618	TokenClub	https://coinmarketcap.com/currencies/tokenclub/	0.006542
619	Peculium	https://coinmarketcap.com/currencies/peculium/	0.001739
620	Matrix AI Network	https://coinmarketcap.com/currencies/matrix-ai-network/	0.016457
621	Bitcoin Atom	https://coinmarketcap.com/currencies/bitcoin-atom/	0.191454
622	Selfkey	https://coinmarketcap.com/currencies/selfkey/	0.001136
623	Etheroll	https://coinmarketcap.com/currencies/etheroll/	0.498786
624	Ondori	https://coinmarketcap.com/currencies/ondori/	0.000092
625	HTMLCOIN	https://coinmarketcap.com/currencies/html-coin/	0.000065
626	Tripio	https://coinmarketcap.com/currencies/tripio/	0.000919
627	Paypex	https://coinmarketcap.com/currencies/paypex/	0.050323
628	TaaS	https://coinmarketcap.com/currencies/taas/	0.420815
629	Aeron	https://coinmarketcap.com/currencies/aeron/	0.169845
630	SunContract	https://coinmarketcap.com/currencies/suncontract/	0.027625
631	BOX Token	https://coinmarketcap.com/currencies/box-token/	0.034012
632	Measurable Data Token	https://coinmarketcap.com/currencies/measurable-data-token/	0.009043
633	apM Coin	https://coinmarketcap.com/currencies/apm-coin/	0.067451
634	Hi Mutual Society	https://coinmarketcap.com/currencies/hi-mutual-society/	0.008340
635	Sentivate	https://coinmarketcap.com/currencies/sentivate/	0.001397
636	Insights Network	https://coinmarketcap.com/currencies/insights-network/	0.017047
637	Bitcoin Rhodium	https://coinmarketcap.com/currencies/bitcoin-rhodium/	3.45
638	Lykke	https://coinmarketcap.com/currencies/lykke/	0.010553
639	1SG	https://coinmarketcap.com/currencies/1sg/	1.50
640	ColossusXT	https://coinmarketcap.com/currencies/colossusxt/	0.000275
641	POA	https://coinmarketcap.com/currencies/poa/	0.011918
642	DigitalNote	https://coinmarketcap.com/currencies/digitalnote/	0.000447
643	Verasity	https://coinmarketcap.com/currencies/verasity/	0.000846
644	Agrocoin	https://coinmarketcap.com/currencies/agrocoin/	0.026800
645	Waves Enterprise	https://coinmarketcap.com/currencies/waves-enterprise/	0.095426
646	LockTrip	https://coinmarketcap.com/currencies/lockchain/	0.218189
647	Hydro	https://coinmarketcap.com/currencies/hydrogen/	0.000294
648	Presearch	https://coinmarketcap.com/currencies/presearch/	0.020420
649	Sakura Bloom	https://coinmarketcap.com/currencies/sakura-bloom/	0.001246
650	Etherparty	https://coinmarketcap.com/currencies/etherparty/	0.003208
651	MVL	https://coinmarketcap.com/currencies/mvl/	0.000383
652	Agrello	https://coinmarketcap.com/currencies/agrello-delta/	0.036919
653	Bitcore	https://coinmarketcap.com/currencies/bitcore/	0.177951
654	EURBASE	https://coinmarketcap.com/currencies/eurbase/	1.09
655	Q DAO Governance token v1.0	https://coinmarketcap.com/currencies/q-dao-governance-token/	44.68
656	VeriBlock	https://coinmarketcap.com/currencies/veriblock/	0.005007
657	Flash	https://coinmarketcap.com/currencies/flash/	0.003483
658	Kryll	https://coinmarketcap.com/currencies/kryll/	0.109749
659	Lunyr	https://coinmarketcap.com/currencies/lunyr/	1.36
660	Global Social Chain	https://coinmarketcap.com/currencies/global-social-chain/	0.005572
661	SONM	https://coinmarketcap.com/currencies/sonm/	0.008615
662	Genaro Network	https://coinmarketcap.com/currencies/genaro-network/	0.011938
663	GoCrypto Token	https://coinmarketcap.com/currencies/gocrypto-token/	0.015127
664	QunQun	https://coinmarketcap.com/currencies/qunqun/	0.004225
665	Morpheus Labs	https://coinmarketcap.com/currencies/morpheus-labs/	0.008732
666	Cryptocean	https://coinmarketcap.com/currencies/cryptocean/	0.370411
667	Monetha	https://coinmarketcap.com/currencies/monetha/	0.007476
668	Earneo	https://coinmarketcap.com/currencies/earneo/	0.006383
669	DATA	https://coinmarketcap.com/currencies/data/	0.000260
670	Credo	https://coinmarketcap.com/currencies/credo/	0.005398
671	TrueFlip	https://coinmarketcap.com/currencies/trueflip/	0.474606
672	Dentacoin	https://coinmarketcap.com/currencies/dentacoin/	0.000004
673	BaaSid	https://coinmarketcap.com/currencies/baasid/	0.000604
674	Viberate	https://coinmarketcap.com/currencies/viberate/	0.015334
675	BitGreen	https://coinmarketcap.com/currencies/bitgreen/	0.266079
676	WPP TOKEN	https://coinmarketcap.com/currencies/wpp-token/	0.008477
677	DECOIN	https://coinmarketcap.com/currencies/decoin/	0.065070
678	BlockStamp	https://coinmarketcap.com/currencies/blockstamp/	0.109989
679	CUTcoin	https://coinmarketcap.com/currencies/cutcoin/	0.027599
680	BABB	https://coinmarketcap.com/currencies/babb/	0.000082
681	PlatonCoin	https://coinmarketcap.com/currencies/platoncoin/	0.487660
682	Edge	https://coinmarketcap.com/currencies/edge/	0.028621
683	NIX	https://coinmarketcap.com/currencies/nix/	0.065547
684	Xaurum	https://coinmarketcap.com/currencies/xaurum/	0.039696
685	VINchain	https://coinmarketcap.com/currencies/vinchain/	0.004781
686	Hiveterminal Token	https://coinmarketcap.com/currencies/hiveterminal-token/	0.005638
687	Jarvis Network	https://coinmarketcap.com/currencies/jarvis-network/	0.095550
688	UGAS	https://coinmarketcap.com/currencies/ugas/	0.016110
689	Tokoin	https://coinmarketcap.com/currencies/tokoin/	0.015433
690	BQT	https://coinmarketcap.com/currencies/bqt/	0.004723
691	JD Coin	https://coinmarketcap.com/currencies/jd-coin/	0.109007
692	LinkEye	https://coinmarketcap.com/currencies/linkeye/	0.004483
693	BitMart Token	https://coinmarketcap.com/currencies/bitmart-token/	0.015650
694	Era Swap	https://coinmarketcap.com/currencies/era-swap/	0.135343
695	Cardstack	https://coinmarketcap.com/currencies/cardstack/	0.001121
696	ContentBox	https://coinmarketcap.com/currencies/contentbox/	0.002847
697	EOSDT	https://coinmarketcap.com/currencies/eosdt/	0.995497
698	PCHAIN	https://coinmarketcap.com/currencies/pchain/	0.003383
699	Blockmason Credit Protocol	https://coinmarketcap.com/currencies/blockmason/	0.022546
700	MediShares	https://coinmarketcap.com/currencies/medishares/	0.003327
701	Red Pulse Phoenix	https://coinmarketcap.com/currencies/red-pulse/	0.003108
702	Litecoin Cash	https://coinmarketcap.com/currencies/litecoin-cash/	0.003758
703	Vipstar Coin	https://coinmarketcap.com/currencies/vipstar-coin/	0.000052
704	Constant	https://coinmarketcap.com/currencies/constant/	49.84
705	USDx stablecoin	https://coinmarketcap.com/currencies/usdx-stablecoin/	1.01
706	Tidex Token	https://coinmarketcap.com/currencies/tidex-token/	0.265139
707	S4FE	https://coinmarketcap.com/currencies/s4fe/	0.009382
708	Incent	https://coinmarketcap.com/currencies/incent/	0.054465
709	Origin Sport	https://coinmarketcap.com/currencies/origin-sport/	0.008311
710	Phore	https://coinmarketcap.com/currencies/phore/	0.116666
711	MintCoin	https://coinmarketcap.com/currencies/mintcoin/	0.000099
712	BitTube	https://coinmarketcap.com/currencies/bit-tube/	0.009113
713	PumaPay	https://coinmarketcap.com/currencies/pumapay/	0.000093
714	CanonChain	https://coinmarketcap.com/currencies/cononchain/	0.004215
715	Lympo	https://coinmarketcap.com/currencies/lympo/	0.002962
716	FarmaTrust	https://coinmarketcap.com/currencies/farmatrust/	0.004073
717	Sentinel	https://coinmarketcap.com/currencies/sentinel/	0.001221
797	Scry.info	https://coinmarketcap.com/currencies/scryinfo/	0.004015
718	Newscrypto	https://coinmarketcap.com/currencies/newscrypto/	0.025634
719	Futurepia	https://coinmarketcap.com/currencies/futurepia/	0.002713
720	IPChain	https://coinmarketcap.com/currencies/ipchain/	0.030035
721	EOS Force	https://coinmarketcap.com/currencies/eos-force/	0.002511
722	Counterparty	https://coinmarketcap.com/currencies/counterparty/	0.920905
723	Emercoin	https://coinmarketcap.com/currencies/emercoin/	0.052415
724	Grid+	https://coinmarketcap.com/currencies/grid/	0.061196
725	OceanEx Token	https://coinmarketcap.com/currencies/oceanex-token/	0.001135
726	Nyzo	https://coinmarketcap.com/currencies/nyzo/	0.199825
727	ThoreNext	https://coinmarketcap.com/currencies/thorenext/	0.109978
728	DeepBrain Chain	https://coinmarketcap.com/currencies/deepbrain-chain/	0.000742
729	Refereum	https://coinmarketcap.com/currencies/refereum/	0.000472
730	CEEK VR	https://coinmarketcap.com/currencies/ceek-vr/	0.004032
731	Lamden	https://coinmarketcap.com/currencies/lamden/	0.016462
732	Spectrecoin	https://coinmarketcap.com/currencies/spectrecoin/	0.089001
733	BidiPass	https://coinmarketcap.com/currencies/bidipass/	0.009238
734	Cube	https://coinmarketcap.com/currencies/cube/	0.000344
735	Beaxy	https://coinmarketcap.com/currencies/beaxy/	0.008702
736	Nuggets	https://coinmarketcap.com/currencies/nuggets/	0.001344
737	YEE	https://coinmarketcap.com/currencies/yee/	0.001683
738	Phantasma	https://coinmarketcap.com/currencies/phantasma/	0.039931
739	Content Neutrality Network	https://coinmarketcap.com/currencies/content-neutrality-network/	0.000058
740	Esportbits	https://coinmarketcap.com/currencies/esportbits/	0.097412
741	NAGA	https://coinmarketcap.com/currencies/naga/	0.031024
742	PolySwarm	https://coinmarketcap.com/currencies/polyswarm/	0.001436
743	Themis	https://coinmarketcap.com/currencies/themis/	0.003671
744	SIX	https://coinmarketcap.com/currencies/six/	0.008011
745	Feathercoin	https://coinmarketcap.com/currencies/feathercoin/	0.007651
746	Humanscape	https://coinmarketcap.com/currencies/humanscape/	0.004561
747	Litex	https://coinmarketcap.com/currencies/litex/	0.002150
748	Bitrue Coin	https://coinmarketcap.com/currencies/bitrue-coin/	0.038784
749	pEOS	https://coinmarketcap.com/currencies/peos/	0.002549
750	Spendcoin	https://coinmarketcap.com/currencies/spendcoin/	0.000925
751	Nucleus Vision	https://coinmarketcap.com/currencies/nucleus-vision/	0.000302
752	Traceability Chain	https://coinmarketcap.com/currencies/traceability-chain/	0.002420
753	Bitex Global XBX Coin	https://coinmarketcap.com/currencies/bitex-global-xbx-coin/	0.010449
754	IntelliShare	https://coinmarketcap.com/currencies/intellishare/	0.007462
755	Yap Stone	https://coinmarketcap.com/currencies/yap-stone/	0.013721
756	BOLT	https://coinmarketcap.com/currencies/bolt/	0.002064
757	Rublix	https://coinmarketcap.com/currencies/rublix/	0.098335
758	MIR COIN	https://coinmarketcap.com/currencies/mir-coin/	0.002601
759	Hashshare	https://coinmarketcap.com/currencies/hashshare/	0.021391
760	SyncFab	https://coinmarketcap.com/currencies/syncfab/	0.008545
761	OKCash	https://coinmarketcap.com/currencies/okcash/	0.026488
762	Artfinity	https://coinmarketcap.com/currencies/artfinity/	0.015907
763	Skrumble Network	https://coinmarketcap.com/currencies/skrumble-network/	0.001937
764	HoryouToken	https://coinmarketcap.com/currencies/horyoutoken/	0.001813
765	Global Cryptocurrency	https://coinmarketcap.com/currencies/global-cryptocurrency/	0.001558
766	Maincoin	https://coinmarketcap.com/currencies/maincoin/	0.006268
767	Fast Access Blockchain	https://coinmarketcap.com/currencies/fast-access-blockchain/	0.068344
768	Ixcoin	https://coinmarketcap.com/currencies/ixcoin/	0.091571
769	BOScoin	https://coinmarketcap.com/currencies/boscoin/	0.002214
770	Myriad	https://coinmarketcap.com/currencies/myriad/	0.001100
771	Credit Tag Chain	https://coinmarketcap.com/currencies/credit-tag-chain/	0.031938
772	Wowbit	https://coinmarketcap.com/currencies/wowbit/	0.006859
773	Vexanium	https://coinmarketcap.com/currencies/vexanium/	0.002691
774	EXMO Coin	https://coinmarketcap.com/currencies/exmo-coin/	0.002635
775	Safe Haven	https://coinmarketcap.com/currencies/safe-haven/	0.000629
776	Boolberry	https://coinmarketcap.com/currencies/boolberry/	0.143053
777	Cryptaur	https://coinmarketcap.com/currencies/cryptaur/	0.000151
778	Radium	https://coinmarketcap.com/currencies/radium/	0.462983
779	Isiklar Coin	https://coinmarketcap.com/currencies/isiklar-coin/	0.790344
780	Odyssey	https://coinmarketcap.com/currencies/odyssey/	0.000297
781	Teloscoin	https://coinmarketcap.com/currencies/teloscoin/	0.012020
782	Cryptopay	https://coinmarketcap.com/currencies/cryptopay/	0.026989
783	MenaPay	https://coinmarketcap.com/currencies/menapay/	0.013815
784	SINOVATE	https://coinmarketcap.com/currencies/sinovate/	0.002766
785	INLOCK	https://coinmarketcap.com/currencies/inlock/	0.001549
786	PlayCoin [ERC20]	https://coinmarketcap.com/currencies/playcoin-erc20/	0.001849
787	Blackmoon	https://coinmarketcap.com/currencies/blackmoon/	0.033847
788	Naka Bodhi Token	https://coinmarketcap.com/currencies/naka-bodhi-token/	0.030346
789	Zipper	https://coinmarketcap.com/currencies/zip/	0.000111
790	GridCoin	https://coinmarketcap.com/currencies/gridcoin/	0.004472
791	Mobius	https://coinmarketcap.com/currencies/mobius/	0.003477
792	RSK Smart Bitcoin	https://coinmarketcap.com/currencies/rsk-smart-bitcoin/	9134.44
793	Lition	https://coinmarketcap.com/currencies/lition/	0.050319
794	Unikoin Gold	https://coinmarketcap.com/currencies/unikoin-gold/	0.012091
795	MargiX	https://coinmarketcap.com/currencies/margix/	0.015061
796	Penta	https://coinmarketcap.com/currencies/penta/	0.000085
798	ChatCoin	https://coinmarketcap.com/currencies/chatcoin/	0.002526
799	VNT Chain	https://coinmarketcap.com/currencies/vnt-chain/	0.000642
800	DOS Network	https://coinmarketcap.com/currencies/dos-network/	0.005178
801	carVertical	https://coinmarketcap.com/currencies/carvertical/	0.000227
802	PotCoin	https://coinmarketcap.com/currencies/potcoin/	0.007711
803	Winding Tree	https://coinmarketcap.com/currencies/winding-tree/	0.080184
804	AMLT	https://coinmarketcap.com/currencies/amlt/	0.006889
805	CanYaCoin	https://coinmarketcap.com/currencies/canyacoin/	0.017912
806	Vetri	https://coinmarketcap.com/currencies/vetri/	0.005504
807	Rotharium	https://coinmarketcap.com/currencies/rotharium/	0.498744
808	Fatcoin	https://coinmarketcap.com/currencies/fatcoin/	0.013241
809	Apex	https://coinmarketcap.com/currencies/apex/	0.003214
810	BlackCoin	https://coinmarketcap.com/currencies/blackcoin/	0.027627
811	Infinitecoin	https://coinmarketcap.com/currencies/infinitecoin/	0.000018
812	Unification	https://coinmarketcap.com/currencies/unification/	0.047944
813	TokenPay	https://coinmarketcap.com/currencies/tokenpay/	0.079287
814	Trade Token X	https://coinmarketcap.com/currencies/trade-token-x/	0.019325
815	Trias	https://coinmarketcap.com/currencies/trias/	0.000715
816	Loopring [NEO]	https://coinmarketcap.com/currencies/loopring-neo/	0.014425
817	Aryacoin	https://coinmarketcap.com/currencies/aryacoin/	0.010187
818	VeriCoin	https://coinmarketcap.com/currencies/vericoin/	0.049470
819	Pundi X NEM	https://coinmarketcap.com/currencies/pundi-x-nem/	0.000088
820	PIBBLE	https://coinmarketcap.com/currencies/pibble/	0.000139
821	CashBet Coin	https://coinmarketcap.com/currencies/cashbet-coin/	0.010409
822	Kambria	https://coinmarketcap.com/currencies/kambria/	0.001318
823	NewYorkCoin	https://coinmarketcap.com/currencies/newyorkcoin/	0.000011
824	Cajutel	https://coinmarketcap.com/currencies/cajutel/	1.19
825	Abyss Token	https://coinmarketcap.com/currencies/abyss-token/	0.007044
826	OneLedger	https://coinmarketcap.com/currencies/oneledger/	0.003935
827	Sharder	https://coinmarketcap.com/currencies/sharder/	0.005649
828	bitUSD	https://coinmarketcap.com/currencies/bitusd/	0.823315
829	Mysterium	https://coinmarketcap.com/currencies/mysterium/	0.067245
830	Stealth	https://coinmarketcap.com/currencies/stealth/	0.043939
831	Blue Whale EXchange	https://coinmarketcap.com/currencies/blue-whale-exchange/	0.036612
832	UCA Coin	https://coinmarketcap.com/currencies/uca-coin/	0.002005
833	Raven Protocol	https://coinmarketcap.com/currencies/raven-protocol/	0.000370
834	BetProtocol	https://coinmarketcap.com/currencies/betprotocol/	0.000855
835	Eterbase Coin	https://coinmarketcap.com/currencies/eterbase-coin/	0.001587
836	Snetwork	https://coinmarketcap.com/currencies/snetwork/	0.007469
837	Change	https://coinmarketcap.com/currencies/change/	0.078322
838	Spectre.ai Utility Token	https://coinmarketcap.com/currencies/spectre-utility/	0.062753
839	Chrono.tech	https://coinmarketcap.com/currencies/chrono-tech/	2.16
840	Kuai Token	https://coinmarketcap.com/currencies/kuai-token/	0.143610
841	Restart Energy MWAT	https://coinmarketcap.com/currencies/restart-energy-mwat/	0.003362
842	ZumCoin	https://coinmarketcap.com/currencies/zumcoin/	0.001532
843	NaPoleonX	https://coinmarketcap.com/currencies/napoleonx/	0.061647
844	Mcashchain	https://coinmarketcap.com/currencies/mcashchain/	0.002054
845	Flowchain	https://coinmarketcap.com/currencies/flowchain/	1.99
846	WinCash	https://coinmarketcap.com/currencies/wincash/	0.991078
847	X8X Token	https://coinmarketcap.com/currencies/x8x-token/	0.018396
848	1World	https://coinmarketcap.com/currencies/1world/	0.060121
849	Callisto Network	https://coinmarketcap.com/currencies/callisto-network/	0.000581
850	Global Digital Content	https://coinmarketcap.com/currencies/global-digital-content/	0.000461
851	Gleec	https://coinmarketcap.com/currencies/gleec/	0.117198
852	Crown	https://coinmarketcap.com/currencies/crown/	0.058214
853	MultiVAC	https://coinmarketcap.com/currencies/multivac/	0.000326
854	THEKEY	https://coinmarketcap.com/currencies/thekey/	0.000233
855	Databroker	https://coinmarketcap.com/currencies/databroker/	0.018805
856	Tolar	https://coinmarketcap.com/currencies/tolar/	0.005726
857	TERA	https://coinmarketcap.com/currencies/tera/	0.001712
858	DEX	https://coinmarketcap.com/currencies/dex/	0.007515
859	Pascal	https://coinmarketcap.com/currencies/pascal/	0.044842
860	Peerplays	https://coinmarketcap.com/currencies/peerplays-ppy/	0.317871
861	Bloom	https://coinmarketcap.com/currencies/bloomtoken/	0.026503
862	Curecoin	https://coinmarketcap.com/currencies/curecoin/	0.057499
863	Pivot Token	https://coinmarketcap.com/currencies/pivot-token/	0.000275
864	BOOM	https://coinmarketcap.com/currencies/boom/	0.001796
865	Sumokoin	https://coinmarketcap.com/currencies/sumokoin/	0.060236
866	Bidesk	https://coinmarketcap.com/currencies/bidesk/	0.175058
867	Bean Cash	https://coinmarketcap.com/currencies/bean-cash/	0.000378
868	Streamity	https://coinmarketcap.com/currencies/streamity/	0.026377
869	Pandacoin	https://coinmarketcap.com/currencies/pandacoin-pnd/	0.000042
870	MESEFA	https://coinmarketcap.com/currencies/mesefa/	3.18
871	Colu Local Network	https://coinmarketcap.com/currencies/colu-local-network/	0.013675
872	CoinDeal Token	https://coinmarketcap.com/currencies/coindeal-token/	0.029027
873	DAEX	https://coinmarketcap.com/currencies/daex/	0.003831
874	ZClassic	https://coinmarketcap.com/currencies/zclassic/	0.152829
875	Blockport	https://coinmarketcap.com/currencies/blockport/	0.023279
876	Azbit	https://coinmarketcap.com/currencies/azbit/	0.000017
877	Xaya	https://coinmarketcap.com/currencies/xaya/	0.030833
878	PegNet	https://coinmarketcap.com/currencies/pegnet/	0.000735
879	CoinPoker	https://coinmarketcap.com/currencies/coinpoker/	0.004899
880	LikeCoin	https://coinmarketcap.com/currencies/likecoin/	0.003889
881	PayBX	https://coinmarketcap.com/currencies/paybx/	0.004676
882	e-Gulden	https://coinmarketcap.com/currencies/e-gulden/	0.074868
883	GoWithMi	https://coinmarketcap.com/currencies/gowithmi/	0.000471
884	Swarm	https://coinmarketcap.com/currencies/swarm-fund/	0.016375
885	Quanta Utility Token	https://coinmarketcap.com/currencies/quanta-utility-token/	0.000035
886	Gene Source Code Chain	https://coinmarketcap.com/currencies/gene-source-code-chain/	0.003382
887	AIDUS TOKEN	https://coinmarketcap.com/currencies/aidus-token/	0.002897
888	Rubycoin	https://coinmarketcap.com/currencies/rubycoin/	0.045849
889	CommerceBlock	https://coinmarketcap.com/currencies/commerceblock/	0.007231
890	X-CASH	https://coinmarketcap.com/currencies/x-cash/	0.000023
891	Primas	https://coinmarketcap.com/currencies/primas/	0.023960
892	NuBits	https://coinmarketcap.com/currencies/nubits/	0.114282
893	Bismuth	https://coinmarketcap.com/currencies/bismuth/	0.090806
894	Rise	https://coinmarketcap.com/currencies/rise/	0.008157
895	Smartlands	https://coinmarketcap.com/currencies/smartlands/	0.243509
896	Stronghold Token	https://coinmarketcap.com/currencies/stronghold-token/	0.000357
897	HOMIHELP	https://coinmarketcap.com/currencies/homihelp/	9.46
898	Asian Fintech	https://coinmarketcap.com/currencies/asian-fintech/	0.004912
899	Denarius	https://coinmarketcap.com/currencies/denarius-d/	0.166787
900	Midas	https://coinmarketcap.com/currencies/midas/	0.911308
901	Education Ecosystem	https://coinmarketcap.com/currencies/education-ecosystem/	0.005472
902	Netbox Coin	https://coinmarketcap.com/currencies/netbox-coin/	0.022105
903	RealTract	https://coinmarketcap.com/currencies/realtract/	0.000114
904	Nasdacoin	https://coinmarketcap.com/currencies/nasdacoin/	0.054392
905	Airbloc	https://coinmarketcap.com/currencies/airbloc/	0.004796
906	ROAD	https://coinmarketcap.com/currencies/road/	0.015234
907	I/O Coin	https://coinmarketcap.com/currencies/iocoin/	0.066122
908	FansTime	https://coinmarketcap.com/currencies/fanstime/	0.000418
909	Amoveo	https://coinmarketcap.com/currencies/amoveo/	17.50
910	DAOBet	https://coinmarketcap.com/currencies/daobet/	0.007102
911	LNX Protocol	https://coinmarketcap.com/currencies/lnx-protocol/	0.004369
912	Remme	https://coinmarketcap.com/currencies/remme/	0.001255
913	Flixxo	https://coinmarketcap.com/currencies/flixxo/	0.014024
914	Okschain	https://coinmarketcap.com/currencies/okschain/	0.001032
915	Caspian	https://coinmarketcap.com/currencies/caspian/	0.002606
916	Color Platform	https://coinmarketcap.com/currencies/color-platform/	0.008528
917	GoldMint	https://coinmarketcap.com/currencies/goldmint/	0.608821
918	Blockchain Certified Data Token	https://coinmarketcap.com/currencies/blockchain-certified-data-token/	0.031843
919	COS	https://coinmarketcap.com/currencies/cos/	0.005904
920	Krios	https://coinmarketcap.com/currencies/krios/	0.005425
921	Iconiq Lab Token	https://coinmarketcap.com/currencies/iconiq-lab-token/	0.298146
922	SpaceChain	https://coinmarketcap.com/currencies/spacechain/	0.002229
923	Electronic Energy Coin	https://coinmarketcap.com/currencies/electronic-energy-coin/	0.002614
924	Leverj	https://coinmarketcap.com/currencies/leverj/	0.009535
925	Substratum	https://coinmarketcap.com/currencies/substratum/	0.002935
926	Diamond	https://coinmarketcap.com/currencies/diamond/	0.320359
927	Block-Chain.com	https://coinmarketcap.com/currencies/block-chain-com/	0.005407
928	NativeCoin	https://coinmarketcap.com/currencies/native-coin/	0.047551
929	42-coin	https://coinmarketcap.com/currencies/42-coin/	26573.37
930	DreamTeam Token	https://coinmarketcap.com/currencies/dreamteam-token/	0.030547
931	WeOwn	https://coinmarketcap.com/currencies/we-own/	0.011168
932	IHT Real Estate Protocol	https://coinmarketcap.com/currencies/iht-real-estate-protocol/	0.001125
933	Adshares	https://coinmarketcap.com/currencies/adshares/	0.031900
934	ParkinGo	https://coinmarketcap.com/currencies/parkingo/	0.057936
935	Dynamic	https://coinmarketcap.com/currencies/dynamic/	0.073665
936	REAL	https://coinmarketcap.com/currencies/real/	0.109979
937	nOS	https://coinmarketcap.com/currencies/nos/	0.010766
938	indaHash	https://coinmarketcap.com/currencies/indahash/	0.002756
939	Sparkpoint	https://coinmarketcap.com/currencies/sparkpoint/	0.000179
940	Blocktrade Token	https://coinmarketcap.com/currencies/blocktrade-token/	0.019448
941	Axe	https://coinmarketcap.com/currencies/axe/	0.205241
942	TRONCLASSIC	https://coinmarketcap.com/currencies/tronclassic/	0.000002
943	Fountain	https://coinmarketcap.com/currencies/fountain/	0.012049
944	Hubii Network	https://coinmarketcap.com/currencies/hubii-network/	0.068798
945	ATLANT	https://coinmarketcap.com/currencies/atlant/	0.019494
946	BANKEX	https://coinmarketcap.com/currencies/bankex/	0.002639
947	Nexty	https://coinmarketcap.com/currencies/nexty/	0.000007
948	Bottos	https://coinmarketcap.com/currencies/bottos/	0.001928
949	Hashgard	https://coinmarketcap.com/currencies/hashgard/	0.000016
950	Egoras Dollar	https://coinmarketcap.com/currencies/egoras-dollar/	0.138028
951	Clams	https://coinmarketcap.com/currencies/clams/	0.250093
952	Clipper Coin	https://coinmarketcap.com/currencies/clipper-coin/	0.000351
953	Vision Industry Token	https://coinmarketcap.com/currencies/vision-industry-token/	0.000334
954	iEthereum	https://coinmarketcap.com/currencies/iethereum/	0.057122
955	MEXC Token	https://coinmarketcap.com/currencies/mexc-token/	0.001091
956	Ether Zero	https://coinmarketcap.com/currencies/ether-zero/	0.005978
957	ATC Coin	https://coinmarketcap.com/currencies/atc-coin/	0.002658
958	HyperExchange	https://coinmarketcap.com/currencies/hyperexchange/	0.017145
959	SafeCapital	https://coinmarketcap.com/currencies/safecapital/	0.609916
960	Veil	https://coinmarketcap.com/currencies/veil/	0.014214
961	Banano	https://coinmarketcap.com/currencies/banano/	0.000958
962	Tixl	https://coinmarketcap.com/currencies/tixl/	20.99
963	AI Doctor	https://coinmarketcap.com/currencies/aidoc/	0.001790
964	Footballcoin	https://coinmarketcap.com/currencies/footballcoin/	0.002653
965	YGGDRASH	https://coinmarketcap.com/currencies/yeed/	0.000182
966	Switch	https://coinmarketcap.com/currencies/switch/	0.087279
967	Terracoin	https://coinmarketcap.com/currencies/terracoin/	0.042920
968	Banca	https://coinmarketcap.com/currencies/banca/	0.000055
969	Datum	https://coinmarketcap.com/currencies/datum/	0.000976
970	Pigeoncoin	https://coinmarketcap.com/currencies/pigeoncoin/	0.000176
971	Coineal Token	https://coinmarketcap.com/currencies/coineal-token/	0.003423
972	NoLimitCoin	https://coinmarketcap.com/currencies/nolimitcoin/	0.001573
973	MB8 Coin	https://coinmarketcap.com/currencies/mb8-coin/	0.005954
974	PUBLISH	https://coinmarketcap.com/currencies/publish/	0.003839
975	Linkey	https://coinmarketcap.com/currencies/linkey/	0.019138
976	PAC Global	https://coinmarketcap.com/currencies/pac-global/	0.000125
977	Zenswap Network Token	https://coinmarketcap.com/currencies/zenswap-network-token/	0.000079
978	IG Gold	https://coinmarketcap.com/currencies/ig-gold/	0.000106
979	Aventus	https://coinmarketcap.com/currencies/aventus/	0.156516
980	CPChain	https://coinmarketcap.com/currencies/cpchain/	0.002486
981	PLANET	https://coinmarketcap.com/currencies/planet/	0.046835
982	TurtleCoin	https://coinmarketcap.com/currencies/turtlecoin/	0.000012
983	Bitcoin Confidential	https://coinmarketcap.com/currencies/bitcoin-confidential/	0.000127
984	SolarCoin	https://coinmarketcap.com/currencies/solarcoin/	0.015764
985	Humaniq	https://coinmarketcap.com/currencies/humaniq/	0.004991
986	DomRaider	https://coinmarketcap.com/currencies/domraider/	0.001557
987	EXRNchain	https://coinmarketcap.com/currencies/exrnchain/	0.000010
988	Eden	https://coinmarketcap.com/currencies/eden/	0.001531
989	Edgeless	https://coinmarketcap.com/currencies/edgeless/	0.007828
990	Medicalchain	https://coinmarketcap.com/currencies/medical-chain/	0.002961
991	Semux	https://coinmarketcap.com/currencies/semux/	0.071788
992	SafeCoin	https://coinmarketcap.com/currencies/safecoin/	0.032859
993	VegaWallet Token	https://coinmarketcap.com/currencies/vegawallet-token/	0.056627
994	SnowGem	https://coinmarketcap.com/currencies/snowgem/	0.034712
995	EncrypGen	https://coinmarketcap.com/currencies/encrypgen/	0.013499
996	Ormeus Coin	https://coinmarketcap.com/currencies/ormeus-coin/	0.025192
997	Dinastycoin	https://coinmarketcap.com/currencies/dinastycoin/	0.000458
998	KickToken	https://coinmarketcap.com/currencies/kick-token/	0.000016
999	eosDAC	https://coinmarketcap.com/currencies/eosdac/	0.001342
1000	TEMCO	https://coinmarketcap.com/currencies/temco/	0.000269
1001	Noku	https://coinmarketcap.com/currencies/noku/	0.036854
1002	EUNO	https://coinmarketcap.com/currencies/euno/	0.024828
1003	MassGrid	https://coinmarketcap.com/currencies/massgrid/	0.011161
1004	Merculet	https://coinmarketcap.com/currencies/merculet/	0.000212
1005	PetroDollar	https://coinmarketcap.com/currencies/petrodollar/	0.013609
1006	DeepOnion	https://coinmarketcap.com/currencies/deeponion/	0.054021
1007	BOMB	https://coinmarketcap.com/currencies/bomb/	0.940195
1008	Liquidity Network	https://coinmarketcap.com/currencies/liquidity-network/	0.016151
1009	Mindexcoin	https://coinmarketcap.com/currencies/mindexcoin/	0.001257
1010	Opacity	https://coinmarketcap.com/currencies/opacity/	0.006628
1011	Amon	https://coinmarketcap.com/currencies/amon/	0.001421
1012	QChi	https://coinmarketcap.com/currencies/qchi/	0.025994
1013	MonetaryUnit	https://coinmarketcap.com/currencies/monetaryunit/	0.004307
1014	Spiking	https://coinmarketcap.com/currencies/spiking/	0.001885
1015	Ubex	https://coinmarketcap.com/currencies/ubex/	0.000262
1016	Titan Coin	https://coinmarketcap.com/currencies/titan-coin/	0.000916
1017	Primecoin	https://coinmarketcap.com/currencies/primecoin/	0.025704
1018	MEET.ONE	https://coinmarketcap.com/currencies/meetone/	0.000434
1019	Omni	https://coinmarketcap.com/currencies/omni/	1.48
1020	SpankChain	https://coinmarketcap.com/currencies/spankchain/	0.002754
1021	NuShares	https://coinmarketcap.com/currencies/nushares/	0.000297
1022	Nework	https://coinmarketcap.com/currencies/nework/	0.005534
1023	ADAMANT Messenger	https://coinmarketcap.com/currencies/adamant-messenger/	0.009641
1024	MobileGo	https://coinmarketcap.com/currencies/mobilego/	0.008132
1025	ToaCoin	https://coinmarketcap.com/currencies/toacoin/	0.000090
1026	DABANKING	https://coinmarketcap.com/currencies/dabanking/	0.165489
1027	LHT	https://coinmarketcap.com/currencies/lighthouse-token/	0.016015
1028	GeoCoin	https://coinmarketcap.com/currencies/geocoin/	0.246993
1029	Ecobit	https://coinmarketcap.com/currencies/ecobit/	0.001764
1030	adbank	https://coinmarketcap.com/currencies/adbank/	0.001037
1031	Beetle Coin	https://coinmarketcap.com/currencies/beetle-coin/	0.003391
1032	Open Platform	https://coinmarketcap.com/currencies/open-platform/	0.000738
1033	ZUM TOKEN	https://coinmarketcap.com/currencies/zum-token/	0.000049
1034	Experty	https://coinmarketcap.com/currencies/experty/	0.028384
1035	COVA	https://coinmarketcap.com/currencies/cova/	0.000306
1036	Matryx	https://coinmarketcap.com/currencies/matryx/	0.032867
1037	CloakCoin	https://coinmarketcap.com/currencies/cloakcoin/	0.139577
1038	Sessia	https://coinmarketcap.com/currencies/sessia/	0.112861
1039	Zero	https://coinmarketcap.com/currencies/zero/	0.091313
1040	LUKSO	https://coinmarketcap.com/currencies/lukso/	0.261709
1041	Conceal	https://coinmarketcap.com/currencies/conceal/	0.093742
1042	Rate3	https://coinmarketcap.com/currencies/rate3/	0.000851
1043	PayPie	https://coinmarketcap.com/currencies/paypie/	0.009146
1044	FintruX Network	https://coinmarketcap.com/currencies/fintrux-network/	0.007935
1045	Bitsdaq	https://coinmarketcap.com/currencies/bitsdaq/	0.000280
1046	ProChain	https://coinmarketcap.com/currencies/prochain/	0.015072
1047	Digital Gold	https://coinmarketcap.com/currencies/digital-gold/	54.71
1048	Ouroboros	https://coinmarketcap.com/currencies/ouroboros/	0.023500
1049	Locus Chain	https://coinmarketcap.com/currencies/locus-chain/	0.000865
1050	HalalChain	https://coinmarketcap.com/currencies/qitmeer/	0.001885
1051	Neurotoken	https://coinmarketcap.com/currencies/neurotoken/	0.009219
1052	Delphy	https://coinmarketcap.com/currencies/delphy/	0.011549
1053	PAYCENT	https://coinmarketcap.com/currencies/paycent/	0.008396
1054	EchoLink	https://coinmarketcap.com/currencies/echolink/	0.001427
1055	STK	https://coinmarketcap.com/currencies/stk/	0.002085
1056	Brickblock	https://coinmarketcap.com/currencies/brickblock/	0.009430
1057	BitcoinZ	https://coinmarketcap.com/currencies/bitcoinz/	0.000097
1058	POPCHAIN	https://coinmarketcap.com/currencies/popchain/	0.000786
1059	Plair	https://coinmarketcap.com/currencies/plair/	0.000035
1060	LUXCoin	https://coinmarketcap.com/currencies/luxcoin/	0.074900
1061	Pinkcoin	https://coinmarketcap.com/currencies/pinkcoin/	0.001650
1062	Hush	https://coinmarketcap.com/currencies/hush/	0.073467
1063	Bitswift	https://coinmarketcap.com/currencies/bitswift/	0.176372
1064	Cappasity	https://coinmarketcap.com/currencies/cappasity/	0.001254
1065	Vites	https://coinmarketcap.com/currencies/vites/	0.000018
1066	2key.network	https://coinmarketcap.com/currencies/2key-network/	0.033754
1067	BonusCloud	https://coinmarketcap.com/currencies/bonuscloud/	0.000222
1068	Zebi Token	https://coinmarketcap.com/currencies/zebi-token/	0.001572
1069	UNIVERSAL CASH	https://coinmarketcap.com/currencies/ucash/	0.000064
1070	Maecenas	https://coinmarketcap.com/currencies/maecenas/	0.011251
1071	SoMee.Social	https://coinmarketcap.com/currencies/ongsocial/	0.007982
1072	Lunes	https://coinmarketcap.com/currencies/lunes/	0.004334
1073	Mercury	https://coinmarketcap.com/currencies/mercury/	0.006507
1074	Nexxo	https://coinmarketcap.com/currencies/nexxo/	0.003009
1075	SHIELD	https://coinmarketcap.com/currencies/shield-xsh/	0.001256
1076	Mallcoin	https://coinmarketcap.com/currencies/mallcoin/	0.003645
1077	Business Credit Substitute	https://coinmarketcap.com/currencies/business-credit-substitute/	0.361254
1078	CannabisCoin	https://coinmarketcap.com/currencies/cannabiscoin/	0.008256
1079	QuadrantProtocol	https://coinmarketcap.com/currencies/quadrantprotocol/	0.001780
1080	CoTrader	https://coinmarketcap.com/currencies/cotrader/	0.000040
1081	Dovu	https://coinmarketcap.com/currencies/dovu/	0.001380
1082	Bitblocks	https://coinmarketcap.com/currencies/bitblocks/	0.002679
1083	NEXT.coin	https://coinmarketcap.com/currencies/next-coin/	0.100813
1084	DACSEE	https://coinmarketcap.com/currencies/dacsee/	0.000822
1085	MalwareChain	https://coinmarketcap.com/currencies/malwarechain/	0.278563
1086	Dimecoin	https://coinmarketcap.com/currencies/dimecoin/	0.000001
1087	HEAT	https://coinmarketcap.com/currencies/heat-ledger/	0.013513
1088	Gold Bits Coin	https://coinmarketcap.com/currencies/gold-bits-coin/	0.005792
1089	Internxt	https://coinmarketcap.com/currencies/internxt/	0.972951
1090	Coinsbit Token	https://coinmarketcap.com/currencies/coinsbit-token/	0.000458
1091	NOW Token	https://coinmarketcap.com/currencies/now-token/	0.007337
1092	NeoWorld Cash	https://coinmarketcap.com/currencies/neoworld-cash/	0.000027
1093	CrypticCoin	https://coinmarketcap.com/currencies/crypticcoin/	0.000237
1094	Insureum	https://coinmarketcap.com/currencies/insureum/	0.002810
1095	USDX	https://coinmarketcap.com/currencies/usdx/	0.159395
1096	Xriba	https://coinmarketcap.com/currencies/xriba/	0.006000
1097	Lisk Machine Learning	https://coinmarketcap.com/currencies/lisk-machine-learning/	0.004991
1098	KuboCoin	https://coinmarketcap.com/currencies/kubocoin/	0.000007
1099	Snovian.Space	https://coinmarketcap.com/currencies/snov/	0.001618
1100	ZeuxCoin	https://coinmarketcap.com/currencies/zeuxcoin/	0.003119
1101	Lendingblock	https://coinmarketcap.com/currencies/lendingblock/	0.000753
1102	SureRemit	https://coinmarketcap.com/currencies/sureremit/	0.001183
1103	Halo Platform	https://coinmarketcap.com/currencies/halo-platform/	0.000096
1104	Webflix Token	https://coinmarketcap.com/currencies/webflix-token/	0.000264
1105	Merebel	https://coinmarketcap.com/currencies/merebel/	0.095096
1106	StableUSD	https://coinmarketcap.com/currencies/stableusd/	1.02
1107	Howdoo	https://coinmarketcap.com/currencies/howdoo/	0.006008
1108	Rivetz	https://coinmarketcap.com/currencies/rivetz/	0.022302
1109	0xBitcoin	https://coinmarketcap.com/currencies/0xbtc/	0.101993
1110	Proxeus	https://coinmarketcap.com/currencies/proxeus/	0.002752
1111	Scala	https://coinmarketcap.com/currencies/scala/	0.000068
1112	Alpha Token	https://coinmarketcap.com/currencies/alpha-token/	0.018579
1113	HashBX	https://coinmarketcap.com/currencies/hashsbx/	0.000911
1114	FREE Coin	https://coinmarketcap.com/currencies/free-coin/	6.54e-8
1115	GlobalBoost-Y	https://coinmarketcap.com/currencies/globalboost-y/	0.031435
1116	SafeInsure	https://coinmarketcap.com/currencies/safeinsure/	0.035096
1117	ZVCHAIN	https://coinmarketcap.com/currencies/zvchain/	0.000834
1118	Upfiring	https://coinmarketcap.com/currencies/upfiring/	0.025996
1119	WeTrust	https://coinmarketcap.com/currencies/trust/	0.006051
1120	Skychain	https://coinmarketcap.com/currencies/skychain/	0.074419
1121	Moneytoken	https://coinmarketcap.com/currencies/moneytoken/	0.000059
1122	Pylon Network	https://coinmarketcap.com/currencies/pylon-network/	1.01
1123	Raise	https://coinmarketcap.com/currencies/raise/	0.040197
1124	Espers	https://coinmarketcap.com/currencies/espers/	0.000024
1125	Tarush	https://coinmarketcap.com/currencies/tarush/	0.000092
1126	Qwertycoin	https://coinmarketcap.com/currencies/qwertycoin/	0.000004
1127	Sphere	https://coinmarketcap.com/currencies/sphere/	0.043716
1128	ICE ROCK MINING	https://coinmarketcap.com/currencies/ice-rock-mining/	0.034560
1129	Uptrennd	https://coinmarketcap.com/currencies/uptrennd/	0.003752
1130	ATN	https://coinmarketcap.com/currencies/atn/	0.006415
1131	FuzeX	https://coinmarketcap.com/currencies/fuzex/	0.000588
1132	BitBall	https://coinmarketcap.com/currencies/bitball/	0.002783
1133	Pirl	https://coinmarketcap.com/currencies/pirl/	0.007291
1134	Bitcoin Plus	https://coinmarketcap.com/currencies/bitcoin-plus/	3.73
1135	Phoenixcoin	https://coinmarketcap.com/currencies/phoenixcoin/	0.006690
1136	GMB	https://coinmarketcap.com/currencies/gmb/	0.001022
1137	Zippie	https://coinmarketcap.com/currencies/zippie/	0.001943
1138	FYDcoin	https://coinmarketcap.com/currencies/fydcoin/	0.001127
1139	Shivom	https://coinmarketcap.com/currencies/shivom/	0.000573
1140	Playkey	https://coinmarketcap.com/currencies/playkey/	0.037179
1141	Auroracoin	https://coinmarketcap.com/currencies/auroracoin/	0.028883
1142	Stox	https://coinmarketcap.com/currencies/stox/	0.010008
1143	Megacoin	https://coinmarketcap.com/currencies/megacoin/	0.013289
1144	Faceter	https://coinmarketcap.com/currencies/faceter/	0.001092
1145	WinStars.live	https://coinmarketcap.com/currencies/winstars-live/	0.027125
1146	MIB Coin	https://coinmarketcap.com/currencies/mib-coin/	0.005425
1147	IQ.cash	https://coinmarketcap.com/currencies/iqcash/	0.046023
1148	Coinsuper Ecosystem Network	https://coinmarketcap.com/currencies/coinsuper-ecosystem-network/	0.001391
1149	Cryptobuyer	https://coinmarketcap.com/currencies/cryptobuyer/	0.008870
1150	Nebula AI	https://coinmarketcap.com/currencies/nebula-ai/	0.000399
1151	OracleChain	https://coinmarketcap.com/currencies/oraclechain/	0.016627
1152	StrongHands	https://coinmarketcap.com/currencies/stronghands/	0.000030
1153	ESBC	https://coinmarketcap.com/currencies/esbc/	0.020847
1154	TouchCon	https://coinmarketcap.com/currencies/touchcon/	0.004842
1155	Vezt	https://coinmarketcap.com/currencies/vezt/	0.012313
1156	SBank	https://coinmarketcap.com/currencies/sbank/	0.085522
1157	AICHAIN	https://coinmarketcap.com/currencies/aichain/	0.000918
1158	Crypto Sports	https://coinmarketcap.com/currencies/crypto-sports/	0.178806
1159	Auxilium	https://coinmarketcap.com/currencies/auxilium/	0.004147
1160	Ink	https://coinmarketcap.com/currencies/ink/	0.001053
1161	ZIMBOCASH	https://coinmarketcap.com/currencies/zimbocash/	0.004415
1162	Bulwark	https://coinmarketcap.com/currencies/bulwark/	0.032676
1163	SmileyCoin	https://coinmarketcap.com/currencies/smileycoin/	0.000031
1164	MineBee	https://coinmarketcap.com/currencies/minebee/	0.000266
1165	Cashbery Coin	https://coinmarketcap.com/currencies/cashbery-coin/	0.007240
1166	Olive	https://coinmarketcap.com/currencies/olive/	0.001744
1167	Proton Token	https://coinmarketcap.com/currencies/proton-token/	0.000058
1168	ImageCoin	https://coinmarketcap.com/currencies/imagecoin/	0.050682
1169	GAMB	https://coinmarketcap.com/currencies/gamb/	0.000122
1170	Honest	https://coinmarketcap.com/currencies/honest/	0.005641
1171	ATMChain	https://coinmarketcap.com/currencies/attention-token-of-media/	0.000101
1172	Eureka Coin	https://coinmarketcap.com/currencies/eureka-coin/	0.007045
1173	BitScreener Token	https://coinmarketcap.com/currencies/bitscreener-token/	0.003408
1174	TurtleNetwork	https://coinmarketcap.com/currencies/turtlenetwork/	0.005269
1175	Bitcoin Free Cash	https://coinmarketcap.com/currencies/bitcoin-free-cash/	0.354192
1176	Swace	https://coinmarketcap.com/currencies/swace/	0.000899
1177	eBitcoin	https://coinmarketcap.com/currencies/ebtcnew/	0.024319
1178	PIXEL	https://coinmarketcap.com/currencies/pixel/	0.012333
1179	Expanse	https://coinmarketcap.com/currencies/expanse/	0.024345
1180	Typerium	https://coinmarketcap.com/currencies/typerium/	0.000282
1181	Shift	https://coinmarketcap.com/currencies/shift/	0.032719
1182	ZPER	https://coinmarketcap.com/currencies/zper/	0.000341
1183	Lobstex	https://coinmarketcap.com/currencies/lobstex/	0.022796
1184	Rapids	https://coinmarketcap.com/currencies/rapids/	0.000046
1185	Swap	https://coinmarketcap.com/currencies/swap/	0.050459
1186	MidasProtocol	https://coinmarketcap.com/currencies/midasprotocol/	0.001744
1187	DEEX	https://coinmarketcap.com/currencies/deex/	0.007783
1188	Bitcoin Private	https://coinmarketcap.com/currencies/bitcoin-private/	0.091576
1189	DecentBet	https://coinmarketcap.com/currencies/decent-bet/	0.002318
1190	PHI Token	https://coinmarketcap.com/currencies/phi-token/	0.074671
1191	Bancacy	https://coinmarketcap.com/currencies/bancacy/	0.003208
1192	BiblePay	https://coinmarketcap.com/currencies/biblepay/	0.000182
1193	RED	https://coinmarketcap.com/currencies/red/	0.003304
1194	Sapien	https://coinmarketcap.com/currencies/sapien/	0.001882
1195	BitNewChain	https://coinmarketcap.com/currencies/bitnewchain/	0.002370
1196	Project WITH	https://coinmarketcap.com/currencies/project-with/	0.001267
1197	CVCoin	https://coinmarketcap.com/currencies/cvcoin/	0.034192
1198	HiCoin	https://coinmarketcap.com/currencies/hicoin/	0.000095
1199	Karbo	https://coinmarketcap.com/currencies/karbo/	0.049113
1200	BitCrystals	https://coinmarketcap.com/currencies/bitcrystals/	0.018315
1201	OVCODE	https://coinmarketcap.com/currencies/ovcode/	0.009430
1202	PANTHEON X	https://coinmarketcap.com/currencies/pantheon-x/	0.004157
1203	TEAM (TokenStars)	https://coinmarketcap.com/currencies/tokenstars/	0.034680
1204	NeuroChain	https://coinmarketcap.com/currencies/neurochain/	0.000955
1205	Orbitcoin	https://coinmarketcap.com/currencies/orbitcoin/	0.127666
1206	TraDove B2BCoin	https://coinmarketcap.com/currencies/b2bcoin/	0.000820
1207	Starbase	https://coinmarketcap.com/currencies/starbase/	0.002187
1208	Safex Cash	https://coinmarketcap.com/currencies/safex-cash/	0.008343
1209	Sentient Coin	https://coinmarketcap.com/currencies/consensus/	0.000302
1210	Epic Cash	https://coinmarketcap.com/currencies/epic-cash/	0.052031
1211	Waves Community Token	https://coinmarketcap.com/currencies/waves-community-token/	0.040478
1212	BitDegree	https://coinmarketcap.com/currencies/bitdegree/	0.001051
1213	Bob's Repair	https://coinmarketcap.com/currencies/bobs-repair/	0.002194
1214	FLIP	https://coinmarketcap.com/currencies/flip/	0.007186
1215	Niobium Coin	https://coinmarketcap.com/currencies/niobium-coin/	0.006486
1216	AMATEN	https://coinmarketcap.com/currencies/amaten/	0.071036
1217	DATx	https://coinmarketcap.com/currencies/datx/	0.000278
1218	Ethereum Gold	https://coinmarketcap.com/currencies/ethereum-gold/	0.019139
1219	Trinity Network Credit	https://coinmarketcap.com/currencies/trinity-network-credit/	0.001158
1220	EBCoin	https://coinmarketcap.com/currencies/ebcoin/	0.000083
1221	Graviocoin	https://coinmarketcap.com/currencies/graviocoin/	0.000333
1222	Quiztok	https://coinmarketcap.com/currencies/quiztok/	0.011773
1223	Enecuum	https://coinmarketcap.com/currencies/enecuum/	0.007546
1224	DPRating	https://coinmarketcap.com/currencies/dprating/	0.000147
1225	Manna	https://coinmarketcap.com/currencies/manna/	0.000563
1226	BZEdge	https://coinmarketcap.com/currencies/bzedge/	0.000124
1227	BitCash	https://coinmarketcap.com/currencies/bitcash/	0.016690
1228	Novacoin	https://coinmarketcap.com/currencies/novacoin/	0.158369
1229	Smartshare	https://coinmarketcap.com/currencies/smartshare/	0.000079
1230	Jarvis+	https://coinmarketcap.com/currencies/jarvis/	0.003752
1231	DECENT	https://coinmarketcap.com/currencies/decent/	0.007149
1232	CryCash	https://coinmarketcap.com/currencies/crycash/	0.076371
1233	BUZZCoin	https://coinmarketcap.com/currencies/buzzcoin/	0.000018
1234	Infinitus Token	https://coinmarketcap.com/currencies/infinitus-token/	0.026824
1235	TigerCash	https://coinmarketcap.com/currencies/tigercash/	0.006484
1236	Playgroundz	https://coinmarketcap.com/currencies/playgroundz/	0.012705
1237	XEL	https://coinmarketcap.com/currencies/xel/	0.003941
1238	Seal Network	https://coinmarketcap.com/currencies/seal-network/	0.000696
1239	Golos Blockchain	https://coinmarketcap.com/currencies/golos-blockchain/	0.001453
1240	HEROcoin	https://coinmarketcap.com/currencies/herocoin/	0.001905
1241	Sentinel Chain	https://coinmarketcap.com/currencies/sentinel-chain/	0.001812
1242	Blue Protocol	https://coinmarketcap.com/currencies/ethereum-blue/	0.009687
1243	0xcert	https://coinmarketcap.com/currencies/0xcert/	0.001034
1244	ODUWA	https://coinmarketcap.com/currencies/oduwa/	0.150062
1245	SIBCoin	https://coinmarketcap.com/currencies/sibcoin/	0.019053
1246	Zeepin	https://coinmarketcap.com/currencies/zeepin/	0.000703
1247	Fortuna	https://coinmarketcap.com/currencies/fortuna/	0.000724
1248	Almeela	https://coinmarketcap.com/currencies/almeela/	0.092927
1249	Alphacat	https://coinmarketcap.com/currencies/alphacat/	0.000122
1250	EurocoinToken	https://coinmarketcap.com/currencies/eurocoin-token/	0.090070
1251	Vodi X	https://coinmarketcap.com/currencies/vodi-x/	0.000637
1252	Helix	https://coinmarketcap.com/currencies/helix/	0.012481
1253	Trittium	https://coinmarketcap.com/currencies/trittium/	0.002627
1254	On.Live	https://coinmarketcap.com/currencies/on-live/	0.015601
1255	Zap	https://coinmarketcap.com/currencies/zap/	0.002561
1256	Arbidex	https://coinmarketcap.com/currencies/arbidex/	0.016486
1257	AllSafe	https://coinmarketcap.com/currencies/allsafe/	0.036662
1258	Patientory	https://coinmarketcap.com/currencies/patientory/	0.004788
1259	HOQU	https://coinmarketcap.com/currencies/hoqu/	0.001959
1260	smARTOFGIVING	https://coinmarketcap.com/currencies/smartofgiving/	0.004491
1261	HashCoin	https://coinmarketcap.com/currencies/hashcoin/	0.000026
1262	Sociall	https://coinmarketcap.com/currencies/sociall/	0.019569
1263	AidCoin	https://coinmarketcap.com/currencies/aidcoin/	0.007125
1264	ZENZO	https://coinmarketcap.com/currencies/zenzo/	0.024169
1265	BetterBetting	https://coinmarketcap.com/currencies/betterbetting/	0.001137
1266	SnodeCoin	https://coinmarketcap.com/currencies/snodecoin/	0.007511
1267	SPINDLE	https://coinmarketcap.com/currencies/spindle/	0.000092
1268	IDEX Membership	https://coinmarketcap.com/currencies/idex-membership/	160.54
1269	Electrify.Asia	https://coinmarketcap.com/currencies/electrifyasia/	0.000605
1270	Minereum	https://coinmarketcap.com/currencies/minereum/	0.034460
1271	VeriSafe	https://coinmarketcap.com/currencies/verisafe/	0.000029
1272	OLXA	https://coinmarketcap.com/currencies/olxa/	0.000235
1273	The ChampCoin	https://coinmarketcap.com/currencies/the-champcoin/	0.001809
1274	Evedo	https://coinmarketcap.com/currencies/evedo/	0.023783
1275	wave edu coin	https://coinmarketcap.com/currencies/wave-edu-coin/	0.002250
1276	TV-TWO	https://coinmarketcap.com/currencies/tv-two/	0.000708
1277	Eristica	https://coinmarketcap.com/currencies/eristica/	0.001833
1278	WebDollar	https://coinmarketcap.com/currencies/webdollar/	0.000032
1279	SpectrumCash	https://coinmarketcap.com/currencies/spectrumcash/	0.000096
1280	Actinium	https://coinmarketcap.com/currencies/actinium/	0.014195
1281	Noir	https://coinmarketcap.com/currencies/noir/	0.015393
1282	Block-Logic	https://coinmarketcap.com/currencies/block-logic/	0.013656
1283	LocalCoinSwap	https://coinmarketcap.com/currencies/local-coin-swap/	0.005957
1284	Ubricoin	https://coinmarketcap.com/currencies/ubricoin/	0.000133
1285	Birake	https://coinmarketcap.com/currencies/birake/	0.003535
1286	Bittwatt	https://coinmarketcap.com/currencies/bittwatt/	0.001008
1287	Ties.DB	https://coinmarketcap.com/currencies/tiesdb/	0.007539
1288	Qredit	https://coinmarketcap.com/currencies/qredit/	0.000457
1289	HUNT	https://coinmarketcap.com/currencies/hunt/	0.002759
1290	Internet of People	https://coinmarketcap.com/currencies/internet-of-people/	0.022331
1291	Ulord	https://coinmarketcap.com/currencies/ulord/	0.004140
1292	MARK.SPACE	https://coinmarketcap.com/currencies/mark-space/	0.000370
1293	LanaCoin	https://coinmarketcap.com/currencies/lanacoin/	0.000173
1294	Max Property Group	https://coinmarketcap.com/currencies/max-property-group/	0.002070
1295	TrezarCoin	https://coinmarketcap.com/currencies/trezarcoin/	0.001382
1296	x42 Protocol	https://coinmarketcap.com/currencies/x42-protocol/	0.015672
1297	Qbao	https://coinmarketcap.com/currencies/qbao/	0.004455
1298	OBITS	https://coinmarketcap.com/currencies/obits/	0.020071
1299	Paytomat	https://coinmarketcap.com/currencies/paytomat/	0.001752
1300	XPA	https://coinmarketcap.com/currencies/xpa/	0.005015
1301	VeriumReserve	https://coinmarketcap.com/currencies/veriumreserve/	0.101363
1302	ION	https://coinmarketcap.com/currencies/ion/	0.021458
1303	Winco	https://coinmarketcap.com/currencies/winco/	0.000595
1304	Martkist	https://coinmarketcap.com/currencies/martkist/	0.024997
1305	HempCoin	https://coinmarketcap.com/currencies/hempcoin/	0.001100
1306	FortKnoxster	https://coinmarketcap.com/currencies/fortknoxster/	0.001881
1307	Swarm City	https://coinmarketcap.com/currencies/swarm-city/	0.032762
1308	XcelToken Plus	https://coinmarketcap.com/currencies/xceltoken-plus/	0.000037
1309	RedFOX Labs	https://coinmarketcap.com/currencies/redfox-labs/	0.002060
1310	ExclusiveCoin	https://coinmarketcap.com/currencies/exclusivecoin/	0.047497
1311	Essentia	https://coinmarketcap.com/currencies/essentia/	0.000317
1312	VouchForMe	https://coinmarketcap.com/currencies/insurepal/	0.001198
1313	Zeitcoin	https://coinmarketcap.com/currencies/zeitcoin/	0.000007
1314	Ubcoin Market	https://coinmarketcap.com/currencies/ubcoin-market/	0.000804
1315	PTON	https://coinmarketcap.com/currencies/pton/	0.000018
1316	Solaris	https://coinmarketcap.com/currencies/solaris/	0.146729
1317	Master Contract Token	https://coinmarketcap.com/currencies/master-contract-token/	0.000478
1318	EXMR FDN	https://coinmarketcap.com/currencies/exmr-fdn/	0.042996
1319	Zilla	https://coinmarketcap.com/currencies/zilla/	0.004505
1320	Digital Insurance Token	https://coinmarketcap.com/currencies/digital-insurance-token/	0.001200
1321	BeatzCoin	https://coinmarketcap.com/currencies/beatzcoin/	0.000174
1322	MyWish	https://coinmarketcap.com/currencies/mywish/	0.027980
1323	View	https://coinmarketcap.com/currencies/view/	0.007607
1324	Thrive Token	https://coinmarketcap.com/currencies/thrive-token/	0.002569
1325	iDealCash	https://coinmarketcap.com/currencies/idealcash/	0.000183
1326	Equal	https://coinmarketcap.com/currencies/equal/	0.000792
1327	IP Exchange	https://coinmarketcap.com/currencies/ip-exchange/	0.000275
1328	Nerva	https://coinmarketcap.com/currencies/nerva/	0.015214
1329	Membrana	https://coinmarketcap.com/currencies/membrana/	0.001912
1330	FujiCoin	https://coinmarketcap.com/currencies/fujicoin/	0.000092
1331	CoinFi	https://coinmarketcap.com/currencies/coinfi/	0.001275
1332	Bitzeny	https://coinmarketcap.com/currencies/bitzeny/	0.003391
1333	Memetic / PepeCoin	https://coinmarketcap.com/currencies/memetic/	0.008523
1334	FNKOS	https://coinmarketcap.com/currencies/fnkos/	0.001627
1335	JET8	https://coinmarketcap.com/currencies/jet8/	0.000341
1336	Social Send	https://coinmarketcap.com/currencies/social-send/	0.004601
1337	Bitfex	https://coinmarketcap.com/currencies/bitfex/	0.002200
1338	Pakcoin	https://coinmarketcap.com/currencies/pakcoin/	0.003624
1339	TOKPIE	https://coinmarketcap.com/currencies/tokpie/	0.013485
1340	eXPerience Chain	https://coinmarketcap.com/currencies/experience-chain/	0.000003
1341	EncryptoTel [WAVES]	https://coinmarketcap.com/currencies/encryptotel/	0.003941
1342	Motocoin	https://coinmarketcap.com/currencies/motocoin/	0.012432
1343	FedoraCoin	https://coinmarketcap.com/currencies/fedoracoin/	0.000001
1344	Alchemint Standards	https://coinmarketcap.com/currencies/alchemint-standards/	0.000764
1345	savedroid	https://coinmarketcap.com/currencies/savedroid/	0.000090
1346	Rapidz	https://coinmarketcap.com/currencies/rapidz/	0.000308
1347	Celeum	https://coinmarketcap.com/currencies/celeum/	0.053888
1348	KekCoin	https://coinmarketcap.com/currencies/kekcoin/	0.022362
1349	ebakus	https://coinmarketcap.com/currencies/ebakus/	0.002586
1350	Zen Protocol	https://coinmarketcap.com/currencies/zen-protocol/	0.010359
1351	CryptoBonusMiles	https://coinmarketcap.com/currencies/cryptobonusmiles/	0.000047
1352	EverGreenCoin	https://coinmarketcap.com/currencies/evergreencoin/	0.016286
1353	BioCoin	https://coinmarketcap.com/currencies/biocoin/	0.000274
1354	Friendz	https://coinmarketcap.com/currencies/friends/	0.000443
1355	StarCoin	https://coinmarketcap.com/currencies/starcointv/	0.000153
1356	TrueFeedBack	https://coinmarketcap.com/currencies/truefeedback/	0.000107
1357	Zeusshield	https://coinmarketcap.com/currencies/zeusshield/	0.000197
1358	Jobchain	https://coinmarketcap.com/currencies/jobchain/	0.000059
1359	IXT	https://coinmarketcap.com/currencies/ixledger/	0.006356
1360	FlypMe	https://coinmarketcap.com/currencies/flypme/	0.012831
1361	UpToken	https://coinmarketcap.com/currencies/uptoken/	0.001538
1362	adToken	https://coinmarketcap.com/currencies/adtoken/	0.000283
1363	Global Awards Token	https://coinmarketcap.com/currencies/global-awards-token/	0.000328
1364	Cubiex	https://coinmarketcap.com/currencies/cubiex/	0.002799
1365	Privatix	https://coinmarketcap.com/currencies/privatix/	0.203093
1366	NANJCOIN	https://coinmarketcap.com/currencies/nanjcoin/	0.000011
1367	Scorum Coins	https://coinmarketcap.com/currencies/scorum-coins/	0.007518
1368	FidentiaX	https://coinmarketcap.com/currencies/fidentiax/	0.002081
1369	Trollcoin	https://coinmarketcap.com/currencies/trollcoin/	0.000367
1370	Bridge Protocol	https://coinmarketcap.com/currencies/bridge-protocol/	0.000965
1371	Datawallet	https://coinmarketcap.com/currencies/datawallet/	0.000553
1372	MyBit	https://coinmarketcap.com/currencies/mybit/	0.001394
1373	DopeCoin	https://coinmarketcap.com/currencies/dopecoin/	0.001833
1374	Coinlancer	https://coinmarketcap.com/currencies/coinlancer/	0.002670
1375	FSBT API Token	https://coinmarketcap.com/currencies/fsbt-api-token/	0.060496
1376	Maximine Coin	https://coinmarketcap.com/currencies/maximine-coin/	0.000129
1377	GoByte	https://coinmarketcap.com/currencies/gobyte/	0.028782
1378	MinexCoin	https://coinmarketcap.com/currencies/minexcoin/	0.033178
1379	BlitzPredict	https://coinmarketcap.com/currencies/blitzpredict/	0.000558
1380	Bitcoin Incognito	https://coinmarketcap.com/currencies/bitcoin-incognito/	0.016039
1381	OWNDATA	https://coinmarketcap.com/currencies/owndata/	0.000019
1382	Patron	https://coinmarketcap.com/currencies/patron/	0.000518
1383	Neutron	https://coinmarketcap.com/currencies/neutron/	0.005193
1384	DIMCOIN	https://coinmarketcap.com/currencies/dimcoin/	0.000097
1385	CryptoPing	https://coinmarketcap.com/currencies/cryptoping/	0.022546
1386	Goldcoin	https://coinmarketcap.com/currencies/goldcoin/	0.004857
1387	HorusPay	https://coinmarketcap.com/currencies/horuspay/	0.000229
1388	HelloGold	https://coinmarketcap.com/currencies/hellogold/	0.000753
1389	Opus	https://coinmarketcap.com/currencies/opus/	0.001413
1390	TrumpCoin	https://coinmarketcap.com/currencies/trumpcoin/	0.029628
1391	Jetcoin	https://coinmarketcap.com/currencies/jetcoin/	0.024707
1392	Blockparty (BOXX Token)	https://coinmarketcap.com/currencies/blockparty-boxx-token/	0.005981
1393	Bounty0x	https://coinmarketcap.com/currencies/bounty0x/	0.000833
1394	Ryo Currency	https://coinmarketcap.com/currencies/ryo-currency/	0.008941
1395	Giant	https://coinmarketcap.com/currencies/giant-coin/	0.024249
1396	GoldFund	https://coinmarketcap.com/currencies/goldfund/	0.001239
1397	AC3	https://coinmarketcap.com/currencies/ac3/	0.000386
1398	uPlexa	https://coinmarketcap.com/currencies/uplexa/	0.000089
1399	Atlantis Blue Digital Token	https://coinmarketcap.com/currencies/atlantis-blue-digital-token/	0.001039
1400	EventChain	https://coinmarketcap.com/currencies/eventchain/	0.006020
1401	Maverick Chain	https://coinmarketcap.com/currencies/maverick-chain/	0.001741
1402	CoinUs	https://coinmarketcap.com/currencies/coinus/	0.000542
1403	3DCoin	https://coinmarketcap.com/currencies/3dcoin/	0.002624
1404	TCASH	https://coinmarketcap.com/currencies/tcash/	0.005223
1405	Aston	https://coinmarketcap.com/currencies/aston/	0.000222
1406	Ultimate Secure Cash	https://coinmarketcap.com/currencies/ultimate-secure-cash/	0.017505
1407	Ink Protocol	https://coinmarketcap.com/currencies/ink-protocol/	0.000452
1408	TrueDeck	https://coinmarketcap.com/currencies/truedeck/	0.005888
1409	CaixaPay	https://coinmarketcap.com/currencies/caixapay/	0.002291
1410	CREDIT	https://coinmarketcap.com/currencies/credit/	0.000008
1411	Masari	https://coinmarketcap.com/currencies/masari/	0.012966
1412	Leadcoin	https://coinmarketcap.com/currencies/leadcoin/	0.000228
1413	AudioCoin	https://coinmarketcap.com/currencies/audiocoin/	0.000182
1414	Silent Notary	https://coinmarketcap.com/currencies/silent-notary/	0.000002
1415	Arionum	https://coinmarketcap.com/currencies/arionum/	0.001100
1416	Monkey Project	https://coinmarketcap.com/currencies/monkey-project/	0.016222
1417	Moneynet	https://coinmarketcap.com/currencies/moneynet/	0.000047
1418	Amino Network	https://coinmarketcap.com/currencies/amino-network/	0.003449
1419	Shadow Token	https://coinmarketcap.com/currencies/shadow-token/	0.024712
1420	Veros	https://coinmarketcap.com/currencies/veros/	0.140815
1421	Crowd Machine	https://coinmarketcap.com/currencies/crowd-machine/	0.000365
1422	EtherSportz	https://coinmarketcap.com/currencies/ethersportz/	0.063395
1423	Blockpass	https://coinmarketcap.com/currencies/blockpass/	0.001023
1424	W Green Pay	https://coinmarketcap.com/currencies/w-green-pay/	0.010301
1425	Mithril Ore	https://coinmarketcap.com/currencies/mithril-ore/	13.04
1426	eBoost	https://coinmarketcap.com/currencies/eboostcoin/	0.001689
1427	Bezop	https://coinmarketcap.com/currencies/bezop/	0.003024
1428	CryptoCarbon	https://coinmarketcap.com/currencies/cryptocarbon/	0.006782
1429	LiteDoge	https://coinmarketcap.com/currencies/litedoge/	0.000010
1430	EnergiToken	https://coinmarketcap.com/currencies/energitoken/	0.000090
1431	Tokenbox	https://coinmarketcap.com/currencies/tokenbox/	0.014378
1432	Matchpool	https://coinmarketcap.com/currencies/guppy/	0.002200
1433	DubaiCoin	https://coinmarketcap.com/currencies/dubaicoin-dbix/	0.038676
1434	Bolivarcoin	https://coinmarketcap.com/currencies/bolivarcoin/	0.011282
1435	Graft	https://coinmarketcap.com/currencies/graft/	0.000275
1436	Ether-1	https://coinmarketcap.com/currencies/ether-1/	0.003329
1437	LIFE	https://coinmarketcap.com/currencies/life/	0.000002
1438	Indorse Token	https://coinmarketcap.com/currencies/indorse-token/	0.004137
1439	Truegame	https://coinmarketcap.com/currencies/tgame/	0.001866
1440	GoNetwork	https://coinmarketcap.com/currencies/gonetwork/	0.002134
1441	EvenCoin	https://coinmarketcap.com/currencies/evencoin/	0.004905
1442	Matrexcoin	https://coinmarketcap.com/currencies/matrexcoin/	0.008890
1443	Startcoin	https://coinmarketcap.com/currencies/startcoin/	0.003392
1444	OSA Token	https://coinmarketcap.com/currencies/osa-token/	0.000110
1445	imbrex	https://coinmarketcap.com/currencies/imbrex/	0.017553
1446	Primalbase Token	https://coinmarketcap.com/currencies/primalbase/	121.43
1447	Devery	https://coinmarketcap.com/currencies/devery/	0.002412
1448	Omnitude	https://coinmarketcap.com/currencies/omnitude/	0.002336
1449	Innovative Bioresearch Coin	https://coinmarketcap.com/currencies/innovative-bioresearch-coin/	0.398088
1450	Freicoin	https://coinmarketcap.com/currencies/freicoin/	0.002652
1451	WOLLO	https://coinmarketcap.com/currencies/wollo/	0.003454
1452	Utrum	https://coinmarketcap.com/currencies/utrum/	0.002289
1453	TrakInvest	https://coinmarketcap.com/currencies/trakinvest/	0.001762
1454	SWYFT	https://coinmarketcap.com/currencies/swyft/	0.208212
1455	Maxcoin	https://coinmarketcap.com/currencies/maxcoin/	0.002383
1456	Relex	https://coinmarketcap.com/currencies/relex/	0.000077
1457	Blur	https://coinmarketcap.com/currencies/blur/	0.025662
1458	InvestDigital	https://coinmarketcap.com/currencies/investdigital/	0.002232
1459	OptiToken	https://coinmarketcap.com/currencies/optitoken/	0.004957
1460	MTC Mesh Network	https://coinmarketcap.com/currencies/mtc-mesh-network/	0.000363
1461	Daneel	https://coinmarketcap.com/currencies/daneel/	0.006889
1462	PlayGame	https://coinmarketcap.com/currencies/playgame/	0.000139
1463	Chronologic	https://coinmarketcap.com/currencies/chronologic/	0.143932
1464	Carboneum [C8] Token	https://coinmarketcap.com/currencies/carboneum-c8-token/	0.002623
1465	AdHive	https://coinmarketcap.com/currencies/adhive/	0.001032
1466	Synergy	https://coinmarketcap.com/currencies/synergy/	0.027586
1467	DAV Coin	https://coinmarketcap.com/currencies/dav-coin/	0.000193
1468	MorCrypto Coin	https://coinmarketcap.com/currencies/morcrypto-coin/	0.006269
1469	Swing	https://coinmarketcap.com/currencies/swing/	0.028293
1470	Scanetchain	https://coinmarketcap.com/currencies/scanetchain/	0.000156
1471	WandX	https://coinmarketcap.com/currencies/wandx/	0.010597
1472	Dether	https://coinmarketcap.com/currencies/dether/	0.001520
1473	Menlo One	https://coinmarketcap.com/currencies/menlo-one/	0.000430
1474	Bigbom	https://coinmarketcap.com/currencies/bigbom/	0.000381
1475	DeVault	https://coinmarketcap.com/currencies/devault/	0.000541
1476	Kuende	https://coinmarketcap.com/currencies/kuende/	0.000142
1477	Alt.Estate token	https://coinmarketcap.com/currencies/alt-estate-token/	0.000174
1478	Ignition	https://coinmarketcap.com/currencies/ignition/	0.096093
1479	Bee Token	https://coinmarketcap.com/currencies/bee-token/	0.000527
1480	Catex Token	https://coinmarketcap.com/currencies/catex-token/	0.000158
1481	Fox Trading	https://coinmarketcap.com/currencies/fox-trading/	0.014108
1482	Helium Chain	https://coinmarketcap.com/currencies/helium-chain/	0.009073
1483	Energycoin	https://coinmarketcap.com/currencies/energycoin/	0.001005
1484	bitEUR	https://coinmarketcap.com/currencies/biteur/	1.13
1485	InflationCoin	https://coinmarketcap.com/currencies/inflationcoin/	0.000003
1486	Gravity	https://coinmarketcap.com/currencies/gravity/	0.000090
1487	Energo	https://coinmarketcap.com/currencies/energo/	0.000201
1488	DOWCOIN	https://coinmarketcap.com/currencies/dowcoin/	0.010096
1489	Ritocoin	https://coinmarketcap.com/currencies/ritocoin/	0.000085
1490	ZCore	https://coinmarketcap.com/currencies/zcore/	0.019522
1491	Quasarcoin	https://coinmarketcap.com/currencies/quasarcoin/	0.000704
1492	Rentberry	https://coinmarketcap.com/currencies/rentberry/	0.000390
1493	Decentralized Machine Learning	https://coinmarketcap.com/currencies/decentralized-machine-learning/	0.000431
1494	RealChain	https://coinmarketcap.com/currencies/realchain/	0.000232
1495	Peony	https://coinmarketcap.com/currencies/peony/	0.032857
1496	ONOToken	https://coinmarketcap.com/currencies/onotoken/	0.000007
1497	MFCoin	https://coinmarketcap.com/currencies/mfcoin/	0.005551
1498	Kuverit	https://coinmarketcap.com/currencies/kuverit/	0.000055
1499	RightMesh	https://coinmarketcap.com/currencies/rightmesh/	0.001626
1500	Limitless VIP	https://coinmarketcap.com/currencies/limitless-vip/	0.000092
1501	StarterCoin	https://coinmarketcap.com/currencies/startercoin/	0.000335
1502	Lampix	https://coinmarketcap.com/currencies/lampix/	0.000843
1503	Monarch	https://coinmarketcap.com/currencies/monarch/	0.003282
1504	Hyper Speed Network	https://coinmarketcap.com/currencies/hyper-speed-network/	0.000926
1505	The Currency Analytics	https://coinmarketcap.com/currencies/the-currency-analytics/	0.000830
1506	BoutsPro	https://coinmarketcap.com/currencies/boutspro/	0.001452
1507	Bitcoin CZ	https://coinmarketcap.com/currencies/bitcoin-cz/	0.038316
1508	eSDChain	https://coinmarketcap.com/currencies/esdchain/	0.001133
1509	Cobinhood	https://coinmarketcap.com/currencies/cobinhood/	0.000270
1510	Helex	https://coinmarketcap.com/currencies/helex/	1.57
1511	Bitnation	https://coinmarketcap.com/currencies/bitnation/	0.000004
1512	Bitcloud	https://coinmarketcap.com/currencies/bitcloud/	0.003208
1513	Litecoin Plus	https://coinmarketcap.com/currencies/litecoin-plus/	0.038951
1514	MMOCoin	https://coinmarketcap.com/currencies/mmocoin/	0.001746
1515	Gems	https://coinmarketcap.com/currencies/gems-protocol/	0.000089
1516	Agrolot	https://coinmarketcap.com/currencies/agrolot/	0.001200
1517	BoatPilot Token	https://coinmarketcap.com/currencies/boat-pilot-token/	0.001440
1518	Birdchain	https://coinmarketcap.com/currencies/birdchain/	0.000653
1519	Parachute	https://coinmarketcap.com/currencies/parachute/	0.000232
1520	Pesetacoin	https://coinmarketcap.com/currencies/pesetacoin/	0.000737
1521	ZMINE	https://coinmarketcap.com/currencies/zmine/	0.000642
1522	Emphy	https://coinmarketcap.com/currencies/emphy/	0.013011
1523	Bethereum	https://coinmarketcap.com/currencies/bethereum/	0.000183
1524	Eroscoin	https://coinmarketcap.com/currencies/eroscoin/	0.000550
1525	CryptoAds Marketplace	https://coinmarketcap.com/currencies/cryptoads-marketplace/	0.007119
1526	InsaneCoin	https://coinmarketcap.com/currencies/insanecoin-insn/	0.004124
1527	Storiqa	https://coinmarketcap.com/currencies/storiqa/	0.000009
1528	Rupiah Token	https://coinmarketcap.com/currencies/rupiah-token/	0.000069
1529	Business Credit Alliance Chain	https://coinmarketcap.com/currencies/business-credit-alliance-chain/	0.000199
1530	Yocoin	https://coinmarketcap.com/currencies/yocoin/	0.000267
1531	Emerald Crypto	https://coinmarketcap.com/currencies/emerald/	0.005141
1532	WIZBL	https://coinmarketcap.com/currencies/wizbl/	0.000642
1533	Swapcoinz	https://coinmarketcap.com/currencies/swapcoinz/	0.009073
1534	CROAT	https://coinmarketcap.com/currencies/croat/	0.001191
1535	BLOC.MONEY	https://coinmarketcap.com/currencies/bloc-money/	0.006232
1536	LEOcoin	https://coinmarketcap.com/currencies/leocoin/	0.062963
1537	SignatureChain	https://coinmarketcap.com/currencies/signature-chain/	0.000123
1538	Verify	https://coinmarketcap.com/currencies/verify/	0.006886
1539	GravityCoin	https://coinmarketcap.com/currencies/gravitycoin/	0.022656
1540	Grimm	https://coinmarketcap.com/currencies/grimm/	0.001937
1541	BitClave	https://coinmarketcap.com/currencies/bitclave/	0.000183
1542	Zennies	https://coinmarketcap.com/currencies/zennies/	0.000092
1543	Dropil	https://coinmarketcap.com/currencies/dropil/	0.000004
1544	BBSCoin	https://coinmarketcap.com/currencies/bbscoin/	9.16e-7
1545	Artis Turba	https://coinmarketcap.com/currencies/artis-turba/	0.003124
1546	Digitalcoin	https://coinmarketcap.com/currencies/digitalcoin/	0.002566
1547	BEAT	https://coinmarketcap.com/currencies/beat/	0.000730
1548	Vidulum	https://coinmarketcap.com/currencies/vidulum/	0.012549
1549	KZ Cash	https://coinmarketcap.com/currencies/kz-cash/	0.057081
1550	Adelphoi	https://coinmarketcap.com/currencies/adelphoi/	0.004307
1551	Civitas	https://coinmarketcap.com/currencies/civitas/	0.011692
1552	PWR Coin	https://coinmarketcap.com/currencies/powercoin/	0.000009
1553	MktCoin	https://coinmarketcap.com/currencies/mktcoin/	0.000073
1554	Oxycoin	https://coinmarketcap.com/currencies/oxycoin/	0.000095
1555	ACE (TokenStars)	https://coinmarketcap.com/currencies/ace/	0.007272
1556	PDATA	https://coinmarketcap.com/currencies/pdata/	0.000198
1557	CyberFM	https://coinmarketcap.com/currencies/cyberfm/	0.000002
1558	Atonomi	https://coinmarketcap.com/currencies/atonomi/	0.000175
1559	Bitgesell	https://coinmarketcap.com/currencies/bitgesell/	0.033212
1560	Dynamite	https://coinmarketcap.com/currencies/dynamite/	0.231536
1561	HeartBout	https://coinmarketcap.com/currencies/heartbout/	0.001607
1562	SwiftCash	https://coinmarketcap.com/currencies/swiftcash/	0.000550
1563	Profile Utility Token	https://coinmarketcap.com/currencies/profile-utility-token/	0.001860
1564	BitBar	https://coinmarketcap.com/currencies/bitbar/	1.81
1565	AiLink Token	https://coinmarketcap.com/currencies/ailink-token/	0.000016
1566	Unify	https://coinmarketcap.com/currencies/unify/	0.004491
1567	BitSend	https://coinmarketcap.com/currencies/bitsend/	0.002939
1568	Bata	https://coinmarketcap.com/currencies/bata/	0.015961
1569	AquariusCoin	https://coinmarketcap.com/currencies/aquariuscoin/	0.027419
1570	PAL Network	https://coinmarketcap.com/currencies/pal-network/	0.000183
1571	Signals Network	https://coinmarketcap.com/currencies/signals-network/	0.000905
1572	Bonpay	https://coinmarketcap.com/currencies/bonpay/	0.007057
1573	CaluraCoin	https://coinmarketcap.com/currencies/caluracoin/	0.007424
1574	Global Currency Reserve	https://coinmarketcap.com/currencies/global-currency-reserve/	0.000733
1575	Ifoods Chain	https://coinmarketcap.com/currencies/ifoods-chain/	0.000031
1576	StrongHands Masternode	https://coinmarketcap.com/currencies/stronghands-masternode/	0.035221
1577	Vanta Network	https://coinmarketcap.com/currencies/vanta-network/	0.000041
1578	Bitradio	https://coinmarketcap.com/currencies/bitradio/	0.008511
1579	Zetacoin	https://coinmarketcap.com/currencies/zetacoin/	0.000440
1580	Gentarium	https://coinmarketcap.com/currencies/gentarium/	0.016772
1581	Gossip Coin	https://coinmarketcap.com/currencies/gossipcoin/	0.002291
1582	Golos	https://coinmarketcap.com/currencies/golos/	0.000301
1583	SRCOIN	https://coinmarketcap.com/currencies/srcoin/	0.000015
1584	Elysian	https://coinmarketcap.com/currencies/elysian/	0.000755
1585	ZINC	https://coinmarketcap.com/currencies/zinc/	0.013518
1586	Bitcoin Token	https://coinmarketcap.com/currencies/bitcoin-token/	0.007790
1587	TENA	https://coinmarketcap.com/currencies/tena/	0.027495
1588	Suretly	https://coinmarketcap.com/currencies/suretly/	0.309851
1589	Lethean	https://coinmarketcap.com/currencies/lethean/	0.000092
1590	Coin Lion	https://coinmarketcap.com/currencies/coin-lion/	0.002258
1591	XDNA	https://coinmarketcap.com/currencies/xdna/	0.010703
1592	Photon	https://coinmarketcap.com/currencies/photon/	0.000002
1593	Capricoin	https://coinmarketcap.com/currencies/capricoin/	0.036384
1594	PYRO Network	https://coinmarketcap.com/currencies/pyro-network/	0.000090
1595	Cashpayz Token	https://coinmarketcap.com/currencies/cashpayz-token/	0.014602
1596	Veles	https://coinmarketcap.com/currencies/veles/	0.058507
1597	InterValue	https://coinmarketcap.com/currencies/intervalue/	0.000557
1598	Kobocoin	https://coinmarketcap.com/currencies/kobocoin/	0.002884
1599	Universe	https://coinmarketcap.com/currencies/universe/	0.000825
1600	MicroMoney	https://coinmarketcap.com/currencies/micromoney/	0.004502
1601	PENG	https://coinmarketcap.com/currencies/peng/	0.000009
1602	Webcoin	https://coinmarketcap.com/currencies/webcoin/	0.001552
1603	EtherGem	https://coinmarketcap.com/currencies/ethergem/	0.003547
1604	Kalkulus	https://coinmarketcap.com/currencies/kalkulus/	0.003849
1605	Asgard	https://coinmarketcap.com/currencies/asgard/	0.000088
1606	PoSW Coin	https://coinmarketcap.com/currencies/posw-coin/	0.001544
1607	Fire Lotto	https://coinmarketcap.com/currencies/fire-lotto/	0.002475
1608	Wavesbet	https://coinmarketcap.com/currencies/wavesbet/	0.000002
1609	Naviaddress	https://coinmarketcap.com/currencies/naviaddress/	0.000279
1610	Cryptonite	https://coinmarketcap.com/currencies/cryptonite/	0.000095
1611	Ethereum Cash	https://coinmarketcap.com/currencies/ethereumcash/	0.004787
1612	DogeCash	https://coinmarketcap.com/currencies/dogecash/	0.018605
1613	GlobalToken	https://coinmarketcap.com/currencies/globaltoken/	0.000640
1614	Elcoin	https://coinmarketcap.com/currencies/elcoin-el/	0.005957
1615	Carboncoin	https://coinmarketcap.com/currencies/carboncoin/	0.000004
1616	Opal	https://coinmarketcap.com/currencies/opal/	0.004368
1617	SounDAC	https://coinmarketcap.com/currencies/bitshares-music/	0.004524
1618	Rupee	https://coinmarketcap.com/currencies/rupee/	0.001650
1619	LuckySevenToken	https://coinmarketcap.com/currencies/luckyseventoken/	0.000988
1620	CryptoSoul	https://coinmarketcap.com/currencies/cryptosoul/	0.000229
1621	Ethereum Gold Project	https://coinmarketcap.com/currencies/ethereum-gold-project/	0.000011
1622	Knekted	https://coinmarketcap.com/currencies/knekted/	0.000064
1623	ANON	https://coinmarketcap.com/currencies/anon/	0.008432
1624	Bitcoin Fast	https://coinmarketcap.com/currencies/bitcoin-fast/	0.005163
1625	Elementeum	https://coinmarketcap.com/currencies/elementeum/	0.012187
1626	Paragon	https://coinmarketcap.com/currencies/paragon/	0.002848
1627	LOCIcoin	https://coinmarketcap.com/currencies/locicoin/	0.001530
1628	ParallelCoin	https://coinmarketcap.com/currencies/parallelcoin/	0.200126
1629	SiaCashCoin	https://coinmarketcap.com/currencies/siacashcoin/	0.000004
1630	PiplCoin	https://coinmarketcap.com/currencies/piplcoin/	0.000383
1631	Sharpay	https://coinmarketcap.com/currencies/sharpay/	0.000060
1632	PengolinCoin	https://coinmarketcap.com/currencies/pengolincoin/	0.006231
1633	RoBET	https://coinmarketcap.com/currencies/robet/	0.078407
1634	Bitstar	https://coinmarketcap.com/currencies/bitstar/	0.002949
1635	ProxyNode	https://coinmarketcap.com/currencies/proxynode/	0.000367
1636	Kurrent	https://coinmarketcap.com/currencies/kurrent/	0.000990
1637	Plus-Coin	https://coinmarketcap.com/currencies/plus-coin/	0.000127
1638	Deutsche eMark	https://coinmarketcap.com/currencies/deutsche-emark/	0.001100
1639	HashNet BitEco	https://coinmarketcap.com/currencies/hashnet-biteco/	0.001988
1640	Klimatas	https://coinmarketcap.com/currencies/klimatas/	0.081515
1641	BlockCAT	https://coinmarketcap.com/currencies/blockcat/	0.007996
1642	Version	https://coinmarketcap.com/currencies/version/	0.000092
1643	Ethersocial	https://coinmarketcap.com/currencies/ethersocial/	0.001290
1644	bitBTC	https://coinmarketcap.com/currencies/bitbtc/	1690.50
1645	Pyrk	https://coinmarketcap.com/currencies/pyrk/	0.011743
1646	Japan Content Token	https://coinmarketcap.com/currencies/japan-content-token/	0.000193
1647	Aditus	https://coinmarketcap.com/currencies/aditus/	0.000241
1648	Neutral Dollar	https://coinmarketcap.com/currencies/neutral-dollar/	0.704487
1649	Paymon	https://coinmarketcap.com/currencies/paymon/	0.000092
1650	HeroNode	https://coinmarketcap.com/currencies/heronode/	0.000051
1651	KAASO	https://coinmarketcap.com/currencies/kaaso/	0.000580
1652	GINcoin	https://coinmarketcap.com/currencies/gincoin/	0.006829
1653	Taklimakan Network	https://coinmarketcap.com/currencies/taklimakan-network/	0.001191
1654	ATBCoin	https://coinmarketcap.com/currencies/atbcoin/	0.001294
1655	Rimbit	https://coinmarketcap.com/currencies/rimbit/	0.000275
1656	Iridium	https://coinmarketcap.com/currencies/iridium/	0.002667
1657	Fiii	https://coinmarketcap.com/currencies/fiii/	0.000111
1658	CrowdWiz	https://coinmarketcap.com/currencies/crowdwiz/	0.012400
1659	MesChain	https://coinmarketcap.com/currencies/meschain/	0.000069
1660	Arqma	https://coinmarketcap.com/currencies/arqma/	0.010075
1661	BlueCoin	https://coinmarketcap.com/currencies/bluecoin/	0.000092
1662	Commercium	https://coinmarketcap.com/currencies/commercium/	0.001189
1663	Bitcoin Interest	https://coinmarketcap.com/currencies/bitcoin-interest/	0.002841
1664	LALA World	https://coinmarketcap.com/currencies/lala-world/	0.000209
1665	Xuez	https://coinmarketcap.com/currencies/xuez/	0.013931
1666	Niobio Cash	https://coinmarketcap.com/currencies/niobio-cash/	0.000367
1667	Voise	https://coinmarketcap.com/currencies/voisecom/	0.000093
1668	CYCLEAN	https://coinmarketcap.com/currencies/cyclean/	0.000075
1669	Bitsum	https://coinmarketcap.com/currencies/bitsum/	0.000031
1670	Impleum	https://coinmarketcap.com/currencies/impleum/	0.006874
1671	INMAX	https://coinmarketcap.com/currencies/inmax/	0.032390
1672	Bitether	https://coinmarketcap.com/currencies/bitether/	0.000895
1673	CDX Network	https://coinmarketcap.com/currencies/cdx-network/	0.001556
1674	Agora	https://coinmarketcap.com/currencies/agora/	0.001331
1675	Aricoin	https://coinmarketcap.com/currencies/aricoin/	0.000367
1676	KanadeCoin	https://coinmarketcap.com/currencies/kanadecoin/	0.000009
1677	SF Capital	https://coinmarketcap.com/currencies/sf-capital/	0.000495
1678	Streamit Coin	https://coinmarketcap.com/currencies/streamit-coin/	0.003772
1679	BitRent	https://coinmarketcap.com/currencies/bitrent/	0.000059
1680	2GIVE	https://coinmarketcap.com/currencies/2give/	0.000094
1681	Guaranteed Ethurance Token Extra	https://coinmarketcap.com/currencies/guaranteed-ethurance-token-extra/	0.000161
1682	MODEL-X-coin	https://coinmarketcap.com/currencies/model-x-coin/	0.004019
1683	vSlice	https://coinmarketcap.com/currencies/vslice/	0.001444
1684	Evil Coin	https://coinmarketcap.com/currencies/evil-coin/	0.002287
1685	Hurify	https://coinmarketcap.com/currencies/hurify/	0.000197
1686	Stellar Classic	https://coinmarketcap.com/currencies/stellar-classic/	0.000063
1687	Cheesecoin	https://coinmarketcap.com/currencies/cheesecoin/	0.000119
1688	TagCoin	https://coinmarketcap.com/currencies/tagcoin/	0.007356
1689	Anoncoin	https://coinmarketcap.com/currencies/anoncoin/	0.022315
1690	Asian Dragon	https://coinmarketcap.com/currencies/asian-dragon/	0.000885
1691	Social Activity Token	https://coinmarketcap.com/currencies/social-activity-token/	0.000367
1692	Kind Ads Token	https://coinmarketcap.com/currencies/kind-ads-token/	0.001100
1693	Transcodium	https://coinmarketcap.com/currencies/transcodium/	0.000729
1694	No BS Crypto	https://coinmarketcap.com/currencies/no-bs-crypto/	0.000037
1695	FUZE Token	https://coinmarketcap.com/currencies/fuze-token/	55.70
1696	Italian Lira	https://coinmarketcap.com/currencies/italian-lira/	0.000002
1697	OPCoinX	https://coinmarketcap.com/currencies/opcoinx/	0.000275
1698	Thore Cash	https://coinmarketcap.com/currencies/thore-cash/	0.000812
1699	BLAST	https://coinmarketcap.com/currencies/blast/	0.001006
1700	VULCANO	https://coinmarketcap.com/currencies/vulcano/	0.000183
1701	GCN Coin	https://coinmarketcap.com/currencies/gcn-coin/	2.55e-7
1702	FundRequest	https://coinmarketcap.com/currencies/fundrequest/	0.000917
1703	PopularCoin	https://coinmarketcap.com/currencies/popularcoin/	0.000011
1704	ImageCash	https://coinmarketcap.com/currencies/imagecash/	0.009257
1705	Moin	https://coinmarketcap.com/currencies/moin/	0.004674
1706	UChain	https://coinmarketcap.com/currencies/uchain/	0.000142
1707	Mobile Crypto Pay Coin	https://coinmarketcap.com/currencies/mobile-crypto-pay-coin/	0.005041
1708	Connect Coin	https://coinmarketcap.com/currencies/connect-coin/	0.001111
1709	Regalcoin	https://coinmarketcap.com/currencies/regalcoin/	0.003354
1710	Bela	https://coinmarketcap.com/currencies/belacoin/	0.000912
1711	PluraCoin	https://coinmarketcap.com/currencies/pluracoin/	0.000092
1712	TOKYO	https://coinmarketcap.com/currencies/tokyo/	0.000155
1713	Ultragate	https://coinmarketcap.com/currencies/ultragate/	0.004674
1714	Thar Token	https://coinmarketcap.com/currencies/thar-token/	0.053232
1715	BTC Lite	https://coinmarketcap.com/currencies/btc-lite/	0.002200
1716	Blockburn	https://coinmarketcap.com/currencies/blockburn/	0.000060
1717	BitCoen	https://coinmarketcap.com/currencies/bitcoen/	0.005774
1718	Bitcoin Red	https://coinmarketcap.com/currencies/bitcoin-red/	0.001923
1719	XMCT	https://coinmarketcap.com/currencies/xmct/	0.000382
1720	SkinCoin	https://coinmarketcap.com/currencies/skincoin/	0.000456
1721	FirstCoin	https://coinmarketcap.com/currencies/firstcoin/	0.001274
1722	BlockMesh	https://coinmarketcap.com/currencies/blockmesh/	0.000145
1723	SelfSell	https://coinmarketcap.com/currencies/selfsell/	0.000101
1724	Netko	https://coinmarketcap.com/currencies/netko/	0.003761
1725	SuperCoin	https://coinmarketcap.com/currencies/supercoin/	0.000733
1726	GoldenPyrex	https://coinmarketcap.com/currencies/goldenpyrex/	0.003849
1727	CommunityGeneration	https://coinmarketcap.com/currencies/communitygeneration/	0.000092
1728	PUBLYTO Token	https://coinmarketcap.com/currencies/publyto-token/	0.000026
1729	Cryptojacks	https://coinmarketcap.com/currencies/cryptojacks/	0.000094
1730	Autonio	https://coinmarketcap.com/currencies/autonio/	0.000360
1731	Bitcoin Zero	https://coinmarketcap.com/currencies/bitcoin-zero/	0.001341
1732	Freyrchain	https://coinmarketcap.com/currencies/freyrchain/	0.000075
1733	REBL	https://coinmarketcap.com/currencies/rebl/	0.000215
1734	CyberMusic	https://coinmarketcap.com/currencies/cybermusic/	0.000002
1735	FantasyGold	https://coinmarketcap.com/currencies/fantasygold/	0.002291
1736	VoteCoin	https://coinmarketcap.com/currencies/votecoin/	0.000367
1737	IFX24	https://coinmarketcap.com/currencies/ifx24/	0.011958
1738	iTicoin	https://coinmarketcap.com/currencies/iticoin/	1.12
1739	HyperQuant	https://coinmarketcap.com/currencies/hyperquant/	0.000374
1740	TransferCoin	https://coinmarketcap.com/currencies/transfercoin/	0.004216
1741	Datarius Credit	https://coinmarketcap.com/currencies/datarius-credit/	0.000246
1742	Advanced Technology Coin	https://coinmarketcap.com/currencies/arcticcoin/	0.001194
1743	XGOX	https://coinmarketcap.com/currencies/xgox/	0.000014
1744	HOLD	https://coinmarketcap.com/currencies/hold/	0.000048
1745	TrueVett	https://coinmarketcap.com/currencies/truevett/	0.000189
1746	NFX Coin	https://coinmarketcap.com/currencies/nfx-coin/	0.000275
1747	Blocktix	https://coinmarketcap.com/currencies/blocktix/	0.000825
1748	Fantasy Sports	https://coinmarketcap.com/currencies/fantasy-sports/	0.007249
1749	Worldcore	https://coinmarketcap.com/currencies/worldcore/	0.000183
1750	MetaMorph	https://coinmarketcap.com/currencies/metamorph/	0.000185
1751	PutinCoin	https://coinmarketcap.com/currencies/putincoin/	0.000027
1752	Aigang	https://coinmarketcap.com/currencies/aigang/	0.001106
1753	Doge Token	https://coinmarketcap.com/currencies/doge-token/	0.000004
1754	ZeusNetwork	https://coinmarketcap.com/currencies/zeusnetwork/	4.58e-7
1755	SteepCoin	https://coinmarketcap.com/currencies/steepcoin/	0.000175
1756	EveriToken	https://coinmarketcap.com/currencies/everitoken/	0.001401
1757	HYPNOXYS	https://coinmarketcap.com/currencies/hypnoxys/	0.000002
1758	Narrative	https://coinmarketcap.com/currencies/narrative/	0.000377
1759	InternationalCryptoX	https://coinmarketcap.com/currencies/internationalcryptox/	0.000072
1760	SophiaTX	https://coinmarketcap.com/currencies/sophiatx/	0.000094
1761	Italo	https://coinmarketcap.com/currencies/italo/	0.007060
1762	Thingschain	https://coinmarketcap.com/currencies/thingschain/	0.000003
1763	Guider	https://coinmarketcap.com/currencies/guider/	0.000124
1764	Jade Currency	https://coinmarketcap.com/currencies/jade-currency/	0.000550
1765	NetKoin	https://coinmarketcap.com/currencies/netkoin/	0.000007
1766	Biotron	https://coinmarketcap.com/currencies/biotron/	0.000458
1767	Centauri	https://coinmarketcap.com/currencies/centauri/	0.000642
1768	ChessCoin	https://coinmarketcap.com/currencies/chesscoin/	0.000557
1769	BUDDY	https://coinmarketcap.com/currencies/buddy/	0.000001
1770	Eternity	https://coinmarketcap.com/currencies/eternity/	0.003589
1771	GuccioneCoin	https://coinmarketcap.com/currencies/guccionecoin/	0.001461
1772	InvestFeed	https://coinmarketcap.com/currencies/investfeed/	0.000154
1773	Linfinity	https://coinmarketcap.com/currencies/linfinity/	0.000033
1774	Payfair	https://coinmarketcap.com/currencies/payfair/	0.000741
1775	IOTW	https://coinmarketcap.com/currencies/iotw/	0.000875
1776	Bitcoiin	https://coinmarketcap.com/currencies/bitcoiin/	0.000550
1777	BitStash	https://coinmarketcap.com/currencies/bitstash/	0.000010
1778	Rubies	https://coinmarketcap.com/currencies/rubies/	0.002758
1779	TrustNote	https://coinmarketcap.com/currencies/trustnote/	0.000092
1780	More Coin	https://coinmarketcap.com/currencies/more-coin/	0.014297
1781	DraftCoin	https://coinmarketcap.com/currencies/draftcoin/	0.003275
1782	Data Transaction Token	https://coinmarketcap.com/currencies/data-transaction-token/	0.000141
1783	CYBR Token	https://coinmarketcap.com/currencies/cybr-token/	0.000739
1784	BitRewards	https://coinmarketcap.com/currencies/bitrewards/	0.000080
1785	WABnetwork	https://coinmarketcap.com/currencies/wabnetwork/	0.000003
1786	SCRIV NETWORK	https://coinmarketcap.com/currencies/scriv-network/	0.001100
1787	bitGold	https://coinmarketcap.com/currencies/bitgold/	143.14
1788	SHPING	https://coinmarketcap.com/currencies/shping/	0.000018
1789	Galilel	https://coinmarketcap.com/currencies/galilel/	0.001375
1790	PRASM	https://coinmarketcap.com/currencies/prasm/	0.000012
1791	Coinchase Token	https://coinmarketcap.com/currencies/coinchase/	0.000017
1792	APR Coin	https://coinmarketcap.com/currencies/apr-coin/	0.002016
1793	Herbalist Token	https://coinmarketcap.com/currencies/herbalist-token/	0.000003
1794	Ethouse	https://coinmarketcap.com/currencies/ethouse/	0.000367
1795	EZOOW	https://coinmarketcap.com/currencies/ezoow/	0.000002
1796	Digiwage	https://coinmarketcap.com/currencies/digiwage/	0.000550
1797	MojoCoin	https://coinmarketcap.com/currencies/mojocoin/	0.002100
1798	UNICORN Token	https://coinmarketcap.com/currencies/unicorn-token/	0.000240
1799	BitStation	https://coinmarketcap.com/currencies/bitstation/	0.000005
1800	BitWhite	https://coinmarketcap.com/currencies/bitwhite/	0.000699
1801	EDRCoin	https://coinmarketcap.com/currencies/edrcoin/	0.008432
1802	BitcoiNote	https://coinmarketcap.com/currencies/bitcoinote/	0.002108
1803	Stipend	https://coinmarketcap.com/currencies/stipend/	0.002132
1804	Soverain	https://coinmarketcap.com/currencies/soverain/	0.002991
1805	CFun	https://coinmarketcap.com/currencies/cfun/	0.000057
1806	Exosis	https://coinmarketcap.com/currencies/exosis/	0.059788
1807	PRiVCY	https://coinmarketcap.com/currencies/privcy/	0.001466
1808	xEURO	https://coinmarketcap.com/currencies/xeuro/	1.17
1809	Adzcoin	https://coinmarketcap.com/currencies/adzcoin/	0.000478
1810	Iungo	https://coinmarketcap.com/currencies/iungo/	0.000584
1811	MESG	https://coinmarketcap.com/currencies/mesg/	0.000321
1812	Arion	https://coinmarketcap.com/currencies/arion/	0.001833
1813	PureVidz	https://coinmarketcap.com/currencies/purevidz/	0.000185
1814	Joint Ventures	https://coinmarketcap.com/currencies/joint-ventures/	0.001030
1815	BitNautic Token	https://coinmarketcap.com/currencies/bitnautic-token/	0.001191
1816	JSECOIN	https://coinmarketcap.com/currencies/jsecoin/	0.000051
1817	Blocklancer	https://coinmarketcap.com/currencies/blocklancer/	0.000183
1818	AirWire	https://coinmarketcap.com/currencies/airwire/	0.000183
1819	IGToken	https://coinmarketcap.com/currencies/igtoken/	0.000006
1820	ROIyal Coin	https://coinmarketcap.com/currencies/roiyal-coin/	0.016038
1821	Micromines	https://coinmarketcap.com/currencies/micromines/	0.000001
1822	Scopuly	https://coinmarketcap.com/currencies/scopuly/	0.000009
1823	ClearPoll	https://coinmarketcap.com/currencies/clearpoll/	0.003025
1824	Abitshadow Token	https://coinmarketcap.com/currencies/abitshadow-token/	0.000122
1825	Origami	https://coinmarketcap.com/currencies/origami/	0.004883
1826	ShareX	https://coinmarketcap.com/currencies/sharex/	0.000032
1827	RefToken	https://coinmarketcap.com/currencies/reftoken/	0.020417
1828	PayCoin	https://coinmarketcap.com/currencies/paycoin2/	0.001704
1829	Waletoken	https://coinmarketcap.com/currencies/waletoken/	0.000001
1830	Authorship	https://coinmarketcap.com/currencies/authorship/	0.000201
1831	Provoco Token	https://coinmarketcap.com/currencies/provoco-token/	2.01e-8
1832	GoHelpFund	https://coinmarketcap.com/currencies/gohelpfund/	0.001650
1833	Kabberry Coin	https://coinmarketcap.com/currencies/kabberry-coin/	0.001008
1834	Parkgene	https://coinmarketcap.com/currencies/parkgene/	0.000068
1835	MarteXcoin	https://coinmarketcap.com/currencies/martexcoin/	0.004857
1836	Bitcoin Classic	https://coinmarketcap.com/currencies/bitcoin-classic/	0.033169
1837	onLEXpa	https://coinmarketcap.com/currencies/onlexpa/	0.000106
1838	Intelligent Trading Foundation	https://coinmarketcap.com/currencies/intelligent-trading-foundation/	0.001993
1839	Ellaism	https://coinmarketcap.com/currencies/ellaism/	0.001008
1840	Acoin	https://coinmarketcap.com/currencies/acoin/	0.015997
1841	Digital Money Bits	https://coinmarketcap.com/currencies/digital-money-bits/	0.000183
1842	Arepacoin	https://coinmarketcap.com/currencies/arepacoin/	0.001146
1843	Theresa May Coin	https://coinmarketcap.com/currencies/theresa-may-coin/	0.000194
1844	ELTCOIN	https://coinmarketcap.com/currencies/eltcoin/	0.000213
1845	INDINODE	https://coinmarketcap.com/currencies/indinode/	0.000018
1846	Ether Kingdoms Token	https://coinmarketcap.com/currencies/ether-kingdoms-token/	0.002487
1847	TajCoin	https://coinmarketcap.com/currencies/tajcoin/	0.001100
1848	BTCtalkcoin	https://coinmarketcap.com/currencies/btctalkcoin/	0.000286
1849	EagleX	https://coinmarketcap.com/currencies/eaglex/	0.000552
1850	ShowHand	https://coinmarketcap.com/currencies/showhand/	2.98e-7
1851	ALL BEST ICO	https://coinmarketcap.com/currencies/all-best-ico/	0.000100
1852	WITChain	https://coinmarketcap.com/currencies/witchain/	0.000009
1853	YENTEN	https://coinmarketcap.com/currencies/yenten/	0.000732
1854	EtherInc	https://coinmarketcap.com/currencies/etherinc/	0.000056
1855	Universal Currency	https://coinmarketcap.com/currencies/universal-currency/	0.001108
1856	Zealium	https://coinmarketcap.com/currencies/zealium/	0.001283
1857	GeyserCoin	https://coinmarketcap.com/currencies/geysercoin/	0.014137
1858	GenesisX	https://coinmarketcap.com/currencies/genesisx/	0.001650
1859	Neural Protocol	https://coinmarketcap.com/currencies/neural-protocol/	0.000002
1860	RPICoin	https://coinmarketcap.com/currencies/rpicoin/	0.000018
1861	EOS TRUST	https://coinmarketcap.com/currencies/eos-trust/	0.000002
1862	Citadel	https://coinmarketcap.com/currencies/citadel/	0.001557
1863	Cream	https://coinmarketcap.com/currencies/cream/	0.000376
1864	Castle	https://coinmarketcap.com/currencies/castle/	0.000916
1865	Nitro	https://coinmarketcap.com/currencies/nitro/	0.000176
1866	Sola Token	https://coinmarketcap.com/currencies/sola-token/	0.000571
1867	DeltaChain	https://coinmarketcap.com/currencies/delta-chain/	0.000002
1868	SmartCoin	https://coinmarketcap.com/currencies/smartcoin/	0.000555
1869	EthereumX	https://coinmarketcap.com/currencies/ethereumx/	0.000183
1870	ETHplode	https://coinmarketcap.com/currencies/ethplode/	0.000366
1871	Gexan	https://coinmarketcap.com/currencies/gexan/	0.006118
1872	Zurcoin	https://coinmarketcap.com/currencies/zurcoin/	0.000182
1873	Trexcoin	https://coinmarketcap.com/currencies/trexcoin/	0.000016
1874	Level Up Coin	https://coinmarketcap.com/currencies/level-up/	0.000016
1875	Garlicoin	https://coinmarketcap.com/currencies/garlicoin/	0.000274
1876	QUINADS	https://coinmarketcap.com/currencies/quinads/	0.000001
1877	nDEX	https://coinmarketcap.com/currencies/ndex/	0.000001
1878	Stakinglab	https://coinmarketcap.com/currencies/stakinglab/	0.039042
1879	Jupiter	https://coinmarketcap.com/currencies/jupiter/	0.001156
1880	4NEW	https://coinmarketcap.com/currencies/4new/	0.000257
1881	Asura Coin	https://coinmarketcap.com/currencies/asura-coin/	0.000071
1882	GoldBlocks	https://coinmarketcap.com/currencies/goldblocks/	0.001003
1883	Decentralized Asset Trading Platform	https://coinmarketcap.com/currencies/decentralized-asset-trading-platform/	0.000001
1884	Global Crypto Alliance	https://coinmarketcap.com/currencies/global-crypto-alliance/	0.000183
1885	Coin2.1	https://coinmarketcap.com/currencies/coin2-1/	0.000191
1886	YoloCash	https://coinmarketcap.com/currencies/yolocash/	0.000505
1887	BriaCoin	https://coinmarketcap.com/currencies/briacoin/	0.020000
1888	bitSilver	https://coinmarketcap.com/currencies/bitsilver/	1.19
1889	InterCrone	https://coinmarketcap.com/currencies/intercrone/	0.000997
1890	AceD	https://coinmarketcap.com/currencies/aced/	0.001228
1891	GoPower	https://coinmarketcap.com/currencies/gopower/	0.000179
1892	Gold Poker	https://coinmarketcap.com/currencies/gold-poker/	0.002758
1893	UOS Network	https://coinmarketcap.com/currencies/uos-network/	0.001008
1894	EUNOMIA	https://coinmarketcap.com/currencies/eunomia/	8.49e-7
1895	ICO OpenLedger	https://coinmarketcap.com/currencies/ico-openledger/	0.028717
1896	SparksPay	https://coinmarketcap.com/currencies/sparkspay/	0.001648
1897	Spectrum	https://coinmarketcap.com/currencies/spectrum/	0.000011
1898	FuzzBalls	https://coinmarketcap.com/currencies/fuzzballs/	0.002729
1899	BERNcash	https://coinmarketcap.com/currencies/berncash/	0.000185
1900	STRAKS	https://coinmarketcap.com/currencies/straks/	0.000550
1901	MedicCoin	https://coinmarketcap.com/currencies/mediccoin/	0.000042
1902	Fivebalance	https://coinmarketcap.com/currencies/fivebalance/	0.000022
1903	Carebit	https://coinmarketcap.com/currencies/carebit/	0.000083
1904	SkyHub Coin	https://coinmarketcap.com/currencies/skyhub-coin/	0.019537
1905	KWHCoin	https://coinmarketcap.com/currencies/kwhcoin/	0.000007
1906	Vivid Coin	https://coinmarketcap.com/currencies/vivid-coin/	0.001613
1907	ALAX	https://coinmarketcap.com/currencies/alax/	0.000598
1908	Dreamcoin	https://coinmarketcap.com/currencies/dreamcoin/	0.004766
1909	Netrum	https://coinmarketcap.com/currencies/netrum/	0.005782
1910	Cryptrust	https://coinmarketcap.com/currencies/cryptrust/	0.000002
1911	Titcoin	https://coinmarketcap.com/currencies/titcoin/	0.000185
1912	Blakecoin	https://coinmarketcap.com/currencies/blakecoin/	0.000458
1913	Cyber Movie Chain	https://coinmarketcap.com/currencies/cyber-movie-chain/	6.07e-7
1914	Bionic	https://coinmarketcap.com/currencies/bionic/	0.000023
1915	Mainstream For The Underground	https://coinmarketcap.com/currencies/mainstream-for-the-underground/	0.000011
1916	Elementrem	https://coinmarketcap.com/currencies/elementrem/	0.000457
1917	Phonecoin	https://coinmarketcap.com/currencies/phonecoin/	0.000092
1918	Tourist Token	https://coinmarketcap.com/currencies/tourist-token/	0.000003
1919	EnterCoin	https://coinmarketcap.com/currencies/entercoin/	0.003574
1920	Ratecoin	https://coinmarketcap.com/currencies/ratecoin/	0.000095
1921	Bitcoin Adult	https://coinmarketcap.com/currencies/bitcoin-adult/	0.000275
1922	ParkByte	https://coinmarketcap.com/currencies/parkbyte/	0.002444
1923	Havy	https://coinmarketcap.com/currencies/havy/	0.000001
1924	Beacon	https://coinmarketcap.com/currencies/beacon/	0.021898
1925	Octoin Coin	https://coinmarketcap.com/currencies/octoin-coin/	0.020608
1926	Save Environment Token	https://coinmarketcap.com/currencies/save-environment-token/	0.011818
1927	CustomContractNetwork	https://coinmarketcap.com/currencies/customcontractnetwork/	0.000007
1928	Atheios	https://coinmarketcap.com/currencies/atheios/	0.000367
1929	Datacoin	https://coinmarketcap.com/currencies/datacoin/	0.000274
1930	Open Trading Network	https://coinmarketcap.com/currencies/open-trading-network/	0.005345
1931	ConnectJob	https://coinmarketcap.com/currencies/connectjob/	0.000094
1932	X-Coin	https://coinmarketcap.com/currencies/x-coin/	0.000853
1933	wys Token	https://coinmarketcap.com/currencies/wys-token/	0.000101
1934	Eva Cash	https://coinmarketcap.com/currencies/eva-cash/	0.011467
1935	Magic Cube Coin	https://coinmarketcap.com/currencies/magic-cube-coin/	0.000087
1936	SONDER	https://coinmarketcap.com/currencies/sonder/	0.000061
1937	Bulleon	https://coinmarketcap.com/currencies/bulleon/	0.009165
1938	Signatum	https://coinmarketcap.com/currencies/signatum/	0.000092
1939	Onix	https://coinmarketcap.com/currencies/onix/	0.000092
1940	ArbitrageCT	https://coinmarketcap.com/currencies/arbitragect/	0.000091
1941	JavaScript Token	https://coinmarketcap.com/currencies/javascript-token/	0.001182
1942	FidexToken	https://coinmarketcap.com/currencies/fidex-token/	3.21e-7
1943	AmsterdamCoin	https://coinmarketcap.com/currencies/amsterdamcoin/	0.000183
1944	Natmin Pure Escrow	https://coinmarketcap.com/currencies/natmin-pure-escrow/	0.000056
1945	TRAXIA	https://coinmarketcap.com/currencies/traxia/	0.000028
1946	ICOBID	https://coinmarketcap.com/currencies/icobid/	0.000084
1947	FUTURAX	https://coinmarketcap.com/currencies/futurax/	0.000003
1948	PostCoin	https://coinmarketcap.com/currencies/postcoin/	0.000546
1949	Alpha Coin	https://coinmarketcap.com/currencies/alpha-coin/	0.000275
1950	P2P Global Network	https://coinmarketcap.com/currencies/p2p-global-network/	0.000195
1951	CryptoFlow	https://coinmarketcap.com/currencies/cryptoflow/	0.000091
1952	bitJob	https://coinmarketcap.com/currencies/student-coin/	0.000094
1953	PAXEX	https://coinmarketcap.com/currencies/paxex/	0.000457
1954	Galactrum	https://coinmarketcap.com/currencies/galactrum/	0.001558
1955	NevaCoin	https://coinmarketcap.com/currencies/nevacoin/	0.001547
1956	XOVBank	https://coinmarketcap.com/currencies/xovbank/	0.000060
1957	Ccore	https://coinmarketcap.com/currencies/ccore/	0.004598
1958	Spectiv	https://coinmarketcap.com/currencies/signal-token/	0.000035
1959	BoostCoin	https://coinmarketcap.com/currencies/boostcoin/	0.000651
1960	Shivers	https://coinmarketcap.com/currencies/shivers/	0.000137
1961	Ragnarok	https://coinmarketcap.com/currencies/ragnarok/	0.000458
1962	SpreadCoin	https://coinmarketcap.com/currencies/spreadcoin/	0.000665
1963	Centurion	https://coinmarketcap.com/currencies/centurion/	0.000094
1964	TravelNote	https://coinmarketcap.com/currencies/travelnote/	0.003299
1965	CCUniverse	https://coinmarketcap.com/currencies/ccuniverse/	0.000018
1966	EVOS	https://coinmarketcap.com/currencies/evos/	0.000642
1967	High Voltage	https://coinmarketcap.com/currencies/high-voltage/	0.004545
1968	Desire	https://coinmarketcap.com/currencies/desire/	0.000642
1969	CPUchain	https://coinmarketcap.com/currencies/cpuchain/	0.000362
1970	BitGuild PLAT	https://coinmarketcap.com/currencies/bitguild-plat/	0.000108
1971	MASTERNET	https://coinmarketcap.com/currencies/masternet/	0.000202
1972	1X2 COIN	https://coinmarketcap.com/currencies/1x2-coin/	0.001199
1973	Couchain	https://coinmarketcap.com/currencies/couchain/	4.82e-7
1974	ARbit	https://coinmarketcap.com/currencies/arbit/	0.000554
1975	Bitcoin 21	https://coinmarketcap.com/currencies/bitcoin-21/	0.007320
1976	Peerguess	https://coinmarketcap.com/currencies/guess/	0.000095
1977	Crowdholding	https://coinmarketcap.com/currencies/crowdholding/	0.000028
1978	Dash Green	https://coinmarketcap.com/currencies/dash-green/	0.002473
1979	Mirai	https://coinmarketcap.com/currencies/mirai/	0.001643
1980	Electrum Dark	https://coinmarketcap.com/currencies/electrum-dark-eld/	0.001436
1981	Litecred	https://coinmarketcap.com/currencies/litecred/	0.000185
1982	Coinonat	https://coinmarketcap.com/currencies/coinonat/	0.000642
1983	WXCOINS	https://coinmarketcap.com/currencies/wxcoins/	0.000176
1984	Nyerium	https://coinmarketcap.com/currencies/nyerium/	0.000183
1985	ARAW	https://coinmarketcap.com/currencies/araw/	0.000003
1986	Gratz	https://coinmarketcap.com/currencies/gratz/	0.000173
1987	Apollon	https://coinmarketcap.com/currencies/apollon/	0.000036
1988	Phantomx	https://coinmarketcap.com/currencies/phantomx/	0.000110
1989	Rupaya	https://coinmarketcap.com/currencies/rupaya/	0.000330
1990	e-Chat	https://coinmarketcap.com/currencies/e-chat/	0.000274
1991	Dragon Option	https://coinmarketcap.com/currencies/dragon-option/	0.000041
1992	Absolute	https://coinmarketcap.com/currencies/absolute/	0.000394
1993	Luna Coin	https://coinmarketcap.com/currencies/luna-coin/	0.002933
1994	Dalecoin	https://coinmarketcap.com/currencies/dalecoin/	0.004949
1995	Independent Money System	https://coinmarketcap.com/currencies/independent-money-system/	0.000906
1996	Crystal Clear	https://coinmarketcap.com/currencies/crystal-clear/	0.000825
1997	Kora Network Token	https://coinmarketcap.com/currencies/kora-network-token/	0.000014
1998	DNotes	https://coinmarketcap.com/currencies/dnotes/	0.000034
1999	iBTC	https://coinmarketcap.com/currencies/ibtc/	0.000092
2000	Californium	https://coinmarketcap.com/currencies/californium/	0.001834
2001	Akroma	https://coinmarketcap.com/currencies/akroma/	0.000234
2002	Nekonium	https://coinmarketcap.com/currencies/nekonium/	0.000367
2003	Quebecoin	https://coinmarketcap.com/currencies/quebecoin/	0.000647
2004	VikkyToken	https://coinmarketcap.com/currencies/vikkytoken/	0.000001
2005	Escroco Emerald	https://coinmarketcap.com/currencies/escroco-emerald/	0.000005
2006	LiteBitcoin	https://coinmarketcap.com/currencies/litebitcoin/	0.000140
2007	Cabbage	https://coinmarketcap.com/currencies/cabbage/	0.000370
2008	Dollar International	https://coinmarketcap.com/currencies/dollar-international/	0.111720
2009	Comet	https://coinmarketcap.com/currencies/comet/	0.004399
2010	Quantis Network	https://coinmarketcap.com/currencies/quantis-network/	0.000092
2011	BunnyToken	https://coinmarketcap.com/currencies/bunnytoken/	0.000013
2012	ICOCalendar.Today	https://coinmarketcap.com/currencies/icocalendar-today/	0.000007
2013	Bitcoinus	https://coinmarketcap.com/currencies/bitcoinus/	1.00e-8
2014	Zayedcoin	https://coinmarketcap.com/currencies/zayedcoin/	0.000556
2015	TokenDesk	https://coinmarketcap.com/currencies/tokendesk/	0.000232
2016	Dollarcoin	https://coinmarketcap.com/currencies/dollarcoin/	0.000365
2017	CrevaCoin	https://coinmarketcap.com/currencies/crevacoin/	0.000091
2018	Helper Search Token	https://coinmarketcap.com/currencies/helper-search-token/	3.85e-7
2019	Simmitri	https://coinmarketcap.com/currencies/simmitri/	0.000046
2020	Xenoverse	https://coinmarketcap.com/currencies/xenoverse/	0.000599
2021	BowsCoin	https://coinmarketcap.com/currencies/bowscoin/	0.000554
2022	BitMoney	https://coinmarketcap.com/currencies/bitmoney/	0.000037
2023	SongCoin	https://coinmarketcap.com/currencies/songcoin/	0.000093
2024	MustangCoin	https://coinmarketcap.com/currencies/mustangcoin/	0.004722
2025	Crystal Token	https://coinmarketcap.com/currencies/crystal-token/	0.004789
2026	Cannation	https://coinmarketcap.com/currencies/cannation/	0.001091
2027	Project Coin	https://coinmarketcap.com/currencies/project-coin/	0.000047
2028	MNPCoin	https://coinmarketcap.com/currencies/mnpcoin/	0.001191
2029	SpeedCash	https://coinmarketcap.com/currencies/speedcash/	0.004440
2030	Experience Points	https://coinmarketcap.com/currencies/experience-points/	0.000002
2031	Eurocoin	https://coinmarketcap.com/currencies/eurocoin/	0.000186
2032	Decentralized Crypto Token	https://coinmarketcap.com/currencies/decentralized-crypto-token/	0.000002
2033	Veltor	https://coinmarketcap.com/currencies/veltor/	0.003994
2034	PlatinumBAR	https://coinmarketcap.com/currencies/platinumbar/	0.001008
2035	HollyWoodCoin	https://coinmarketcap.com/currencies/hollywoodcoin/	0.000092
2036	Prime-XI	https://coinmarketcap.com/currencies/prime-xi/	0.000097
2037	SONO	https://coinmarketcap.com/currencies/altcommunity-coin/	0.001008
2038	Fintab	https://coinmarketcap.com/currencies/fintab/	0.000755
2039	BitCoal	https://coinmarketcap.com/currencies/bitcoal/	0.000458
2040	MiloCoin	https://coinmarketcap.com/currencies/milocoin/	0.000183
2041	Flit Token	https://coinmarketcap.com/currencies/flit-token/	5.83e-7
2042	LiteCoin Ultra	https://coinmarketcap.com/currencies/litecoin-ultra/	0.001849
2043	Helpico	https://coinmarketcap.com/currencies/helpico/	0.079328
2044	BenjiRolls	https://coinmarketcap.com/currencies/benjirolls/	0.000091
2045	PAWS Fund	https://coinmarketcap.com/currencies/paws-fund/	0.000959
2046	PosEx	https://coinmarketcap.com/currencies/posex/	0.000739
2047	VectorAI	https://coinmarketcap.com/currencies/vector/	0.000093
2048	BROTHER	https://coinmarketcap.com/currencies/brat/	0.000010
2049	PLNcoin	https://coinmarketcap.com/currencies/plncoin/	0.000091
2050	Silverway	https://coinmarketcap.com/currencies/silverway/	0.000010
2051	Staker	https://coinmarketcap.com/currencies/staker/	0.001008
2052	Nibble	https://coinmarketcap.com/currencies/nibble/	0.006782
2053	Bitvolt	https://coinmarketcap.com/currencies/bitvolt/	0.000091
2054	MoX	https://coinmarketcap.com/currencies/mox/	0.000300
2055	Project-X	https://coinmarketcap.com/currencies/project-x/	19246.18
2056	Secrets of Zurich	https://coinmarketcap.com/currencies/secrets-of-zurich/	0.000001
2057	Wild Beast Block	https://coinmarketcap.com/currencies/wild-beast-block/	0.007529
2058	SocialCoin	https://coinmarketcap.com/currencies/socialcoin-socc/	0.000120
2059	SportyCo	https://coinmarketcap.com/currencies/sportyco/	0.000021
2060	Iconic	https://coinmarketcap.com/currencies/iconic/	0.001848
2061	Orbis Token	https://coinmarketcap.com/currencies/orbis-token/	0.000057
2062	Dinero	https://coinmarketcap.com/currencies/dinero/	0.000115
2063	X12 Coin	https://coinmarketcap.com/currencies/x12-coin/	0.000083
2064	LitecoinToken	https://coinmarketcap.com/currencies/litecoin-token/	1.00e-8
2065	Xchange	https://coinmarketcap.com/currencies/xchange/	0.000094
2066	Zoomba	https://coinmarketcap.com/currencies/zoomba/	0.000037
2067	Qbic	https://coinmarketcap.com/currencies/qbic/	0.000183
2068	iBank	https://coinmarketcap.com/currencies/ibank/	0.000186
2069	Concoin	https://coinmarketcap.com/currencies/concoin/	0.001001
2070	Abulaba	https://coinmarketcap.com/currencies/abulaba/	0.000049
2071	Cointorox	https://coinmarketcap.com/currencies/cointorox/	0.000115
2072	Save and Gain	https://coinmarketcap.com/currencies/save-and-gain/	0.000200
2073	Storeum	https://coinmarketcap.com/currencies/storeum/	0.000002
2074	QYNO	https://coinmarketcap.com/currencies/qyno/	0.000458
2075	999	https://coinmarketcap.com/currencies/999-coin/	0.000002
2076	Posscoin	https://coinmarketcap.com/currencies/posscoin/	1.49e-8
2077	Argus	https://coinmarketcap.com/currencies/argus/	0.000386
2078	PonziCoin	https://coinmarketcap.com/currencies/ponzicoin/	0.000458
2079	Dystem	https://coinmarketcap.com/currencies/dystem/	0.000055
2080	Benz	https://coinmarketcap.com/currencies/benz/	0.000050
2081	LRM Coin	https://coinmarketcap.com/currencies/lrm-coin/	0.000027
2082	Elliot Coin	https://coinmarketcap.com/currencies/elliot-coin/	0.000009
2083	UltraNote Coin	https://coinmarketcap.com/currencies/ultranote-coin/	4.13e-7
2084	Newton Coin Project	https://coinmarketcap.com/currencies/newton-coin-project/	7.78e-7
2085	HarmonyCoin	https://coinmarketcap.com/currencies/harmonycoin-hmc/	0.000097
2086	OFCOIN	https://coinmarketcap.com/currencies/ofcoin/	0.000068
2087	Ontology Gas	https://coinmarketcap.com/currencies/ontology-gas/	0.236282
2088	WaykiChain Governance Coin	https://coinmarketcap.com/currencies/waykichain-governance-coin/	0.005935
2089	Bitcoin Vault	https://coinmarketcap.com/currencies/bitcoin-vault/	277.76
2090	CryptoEnergy	https://coinmarketcap.com/currencies/cryptoenergy/	38.05
2091	Soda Coin	https://coinmarketcap.com/currencies/soda-coin/	0.025938
2092	NDN Link	https://coinmarketcap.com/currencies/ndn-link/	0.013790
2093	BKEX Token	https://coinmarketcap.com/currencies/bkex-token/	0.079868
2094	Xenon	https://coinmarketcap.com/currencies/xenon-xen/	0.000574
2095	Filecoin [Futures]	https://coinmarketcap.com/currencies/filecoin/	11.67
2096	3X Long Ethereum Token	https://coinmarketcap.com/currencies/3x-long-ethereum-token/	218.30
2097	Codeo Token	https://coinmarketcap.com/currencies/codeo-token/	0.627949
2098	BASIC	https://coinmarketcap.com/currencies/basic/	0.007601
2099	Arweave	https://coinmarketcap.com/currencies/arweave/	1.47
2100	ELYSIA	https://coinmarketcap.com/currencies/elysia/	0.003833
2101	Whole Network	https://coinmarketcap.com/currencies/whole-network/	0.001446
2102	FirmaChain	https://coinmarketcap.com/currencies/firmachain/	0.033581
2103	Lux Bio Cell	https://coinmarketcap.com/currencies/lux-bio-cell/	0.005794
2104	Building Cities Beyond Blockchain	https://coinmarketcap.com/currencies/building-cities-beyond-blockchain/	1.70
2105	xDai	https://coinmarketcap.com/currencies/xdai/	1.25
2106	FairGame	https://coinmarketcap.com/currencies/fairgame/	0.002208
2107	Orient Walt	https://coinmarketcap.com/currencies/orient-walt/	0.482389
2108	ECOChain	https://coinmarketcap.com/currencies/ecochain/	1.78
2109	3X Long BNB Token	https://coinmarketcap.com/currencies/3x-long-bnb-token/	80.73
2110	YottaChain	https://coinmarketcap.com/currencies/yottachain/	0.055990
2111	Yobit Token	https://coinmarketcap.com/currencies/yobit-token/	868.95
2112	VARC	https://coinmarketcap.com/currencies/varc/	0.007051
2113	Balancer	https://coinmarketcap.com/currencies/balancer/	10.55
2114	Echoin	https://coinmarketcap.com/currencies/echoin/	0.003647
2115	8X8 PROTOCOL	https://coinmarketcap.com/currencies/8x8-protocol/	0.096283
2116	3x Long EOS Token	https://coinmarketcap.com/currencies/3x-long-eos-token/	2.49
2117	KardiaChain	https://coinmarketcap.com/currencies/kardiachain/	0.002729
2118	ACE	https://coinmarketcap.com/currencies/ace-entertainment/	0.005835
2119	Klaytn	https://coinmarketcap.com/currencies/klaytn/	0.154105
2120	AAX Token	https://coinmarketcap.com/currencies/aax-token/	0.148246
2121	Tweebaa	https://coinmarketcap.com/currencies/tweebaa/	2.25
2122	Keep Network	https://coinmarketcap.com/currencies/keep-network/	0.418795
2123	LUCY	https://coinmarketcap.com/currencies/lucy/	0.114877
2124	Bitsonic	https://coinmarketcap.com/currencies/bitsonic/	0.040257
2125	Creditcoin	https://coinmarketcap.com/currencies/creditcoin/	0.291958
2126	Exchange Union	https://coinmarketcap.com/currencies/exchange-union/	0.943041
2127	ABCC Token	https://coinmarketcap.com/currencies/abcc-token/	0.027717
2128	MeconCash	https://coinmarketcap.com/currencies/meconcash/	0.074436
2129	Sensorium	https://coinmarketcap.com/currencies/sensorium/	0.203245
2130	3X Short Ethereum Token	https://coinmarketcap.com/currencies/3x-short-ethereum-token/	0.928364
2131	VinDax Coin	https://coinmarketcap.com/currencies/vindax-coin/	0.037128
2132	Xank	https://coinmarketcap.com/currencies/xank/	0.110641
2133	Latamcash	https://coinmarketcap.com/currencies/latamcash/	0.083176
2134	Polkadot [IOU]	https://coinmarketcap.com/currencies/polkadot-iou/	142.48
2135	Unknown Fair Object	https://coinmarketcap.com/currencies/unknown-fair-object/	1.94
2136	Barkis Network	https://coinmarketcap.com/currencies/barkis-network/	1.81
2137	Vinci	https://coinmarketcap.com/currencies/vinci/	1.21
2138	Gomics	https://coinmarketcap.com/currencies/gomics/	0.118931
2139	BTSE	https://coinmarketcap.com/currencies/btse/	1.59
2140	Bananatok	https://coinmarketcap.com/currencies/bananatok/	0.022265
2141	PLAAS FARMERS TOKEN	https://coinmarketcap.com/currencies/plaas-farmers-token/	0.008875
2142	TopChain	https://coinmarketcap.com/currencies/topchain/	0.006127
2143	3x Long XRP Token	https://coinmarketcap.com/currencies/3x-long-xrp-token/	7.22
2144	3x Short XRP Token	https://coinmarketcap.com/currencies/3x-short-xrp-token/	269.55
2145	Decentralized Vulnerability Platform	https://coinmarketcap.com/currencies/decentralized-vulnerability-platform/	0.008243
2146	Bispex	https://coinmarketcap.com/currencies/bispex/	0.000950
2147	Coni	https://coinmarketcap.com/currencies/coni/	0.010173
2148	GeoDB	https://coinmarketcap.com/currencies/geodb/	0.399310
2149	3X Short BNB Token	https://coinmarketcap.com/currencies/3x-short-bnb-token/	11.73
2150	VeThor Token	https://coinmarketcap.com/currencies/vethor-token/	0.000509
2151	Cannadrix	https://coinmarketcap.com/currencies/cannadrix/	0.487478
2152	Keystone of Opportunity & Knowledge	https://coinmarketcap.com/currencies/keystone-of-opportunity-knowledge/	0.216411
2153	3x Short EOS Token	https://coinmarketcap.com/currencies/3x-short-eos-token/	10.43
2154	3X Short Bitcoin Token	https://coinmarketcap.com/currencies/3x-short-bitcoin-token/	1.74
2155	3x Short Litecoin Token	https://coinmarketcap.com/currencies/3x-short-litecoin-token/	1313.60
2156	Medium	https://coinmarketcap.com/currencies/medium/	0.340142
2157	Buzzshow	https://coinmarketcap.com/currencies/buzzshow/	0.038818
2158	NOIZ	https://coinmarketcap.com/currencies/noizchain/	0.036116
2159	Kadena	https://coinmarketcap.com/currencies/kadena/	0.306951
2160	NNB Token	https://coinmarketcap.com/currencies/nnb-token/	0.000931
2161	3X Long Bitcoin Token	https://coinmarketcap.com/currencies/3x-long-bitcoin-token/	2623.87
2162	Dash Cash	https://coinmarketcap.com/currencies/dash-cash/	0.362814
2163	BIKI	https://coinmarketcap.com/currencies/biki/	0.036945
2164	Blockcloud	https://coinmarketcap.com/currencies/blockcloud/	0.001008
2165	RAKUN	https://coinmarketcap.com/currencies/rakun/	0.007473
2166	BIZZCOIN	https://coinmarketcap.com/currencies/bizzcoin/	0.535815
2167	PayProtocol	https://coinmarketcap.com/currencies/payprotocol/	0.142284
2168	3X Short TRX Token	https://coinmarketcap.com/currencies/3x-short-trx-token/	4.77
2169	AtromG8	https://coinmarketcap.com/currencies/atromg8/	0.022220
2170	3x Long Bitcoin Cash Token	https://coinmarketcap.com/currencies/3x-long-bitcoin-cash-token/	6.14
2171	Edgeware	https://coinmarketcap.com/currencies/edgeware/	0.005696
2172	pNetwork	https://coinmarketcap.com/currencies/pnetwork/	0.636272
2173	DigiFinexToken	https://coinmarketcap.com/currencies/digifinextoken/	0.166522
2174	Kingdom Game 4.0	https://coinmarketcap.com/currencies/kingdom-game-4/	0.019075
2175	Energy Web Token	https://coinmarketcap.com/currencies/energy-web-token/	5.54
2176	ShineChain	https://coinmarketcap.com/currencies/shinechain/	0.000583
2177	IZEROIUM	https://coinmarketcap.com/currencies/izeroium/	0.057739
2178	KNOW	https://coinmarketcap.com/currencies/know/	0.001342
2179	LinkArt	https://coinmarketcap.com/currencies/linkart/	0.007720
2180	Freecash	https://coinmarketcap.com/currencies/freecash/	0.128576
2181	QUEENBEE	https://coinmarketcap.com/currencies/queenbee/	0.007538
2182	3x Long Bitcoin SV Token	https://coinmarketcap.com/currencies/3x-long-bitcoin-sv-token/	0.670879
2183	BigBang Core	https://coinmarketcap.com/currencies/bigbang-core/	0.667781
2184	Ravencoin Classic	https://coinmarketcap.com/currencies/ravencoin-classic/	0.001152
2185	XTRM COIN	https://coinmarketcap.com/currencies/xtrm-coin/	0.353402
2186	FinexboxToken	https://coinmarketcap.com/currencies/finexboxtoken/	0.699231
2187	CAPITAL X CELL	https://coinmarketcap.com/currencies/capital-x-cell/	0.306782
2188	3x Short Bitcoin SV Token	https://coinmarketcap.com/currencies/3x-short-bitcoin-sv-token/	0.917283
2189	Precium	https://coinmarketcap.com/currencies/precium/	0.004873
2190	Paris Saint-Germain Fan Token	https://coinmarketcap.com/currencies/paris-saint-germain-fan-token/	4.31
2191	Gosama	https://coinmarketcap.com/currencies/gosama/	0.302664
2192	Brazilian Digital Token	https://coinmarketcap.com/currencies/brz/	0.188962
2193	FC Barcelona Fan Token	https://coinmarketcap.com/currencies/fc-barcelona-fan-token/	4.64
2194	ViteX Coin	https://coinmarketcap.com/currencies/vitex-coin/	0.145968
2195	AS Roma Fan Token	https://coinmarketcap.com/currencies/as-roma-fan-token/	3.14
2196	Crypto Holding Frank Token	https://coinmarketcap.com/currencies/crypto-holding-frank-token/	1.06
2197	Tesra	https://coinmarketcap.com/currencies/tesra/	0.028669
2198	LinkToken	https://coinmarketcap.com/currencies/linktoken/	0.018214
2199	Bilaxy Token	https://coinmarketcap.com/currencies/bilaxy-token/	0.001952
2200	FinNexus	https://coinmarketcap.com/currencies/finnexus/	0.085157
2201	3X Long TRX Token	https://coinmarketcap.com/currencies/3x-long-trx-token/	2.12
2202	OG Fan Token	https://coinmarketcap.com/currencies/og-fan-token/	2.94
2203	KingMoney	https://coinmarketcap.com/currencies/kingmoney/	272.94
2204	iOWN Token	https://coinmarketcap.com/currencies/iown-token/	0.009350
2205	Bitscoin	https://coinmarketcap.com/currencies/bitscoin/	5.79
2206	Yuan Chain Coin	https://coinmarketcap.com/currencies/yuan-chain-coin/	0.006015
2207	3x Long Litecoin Token	https://coinmarketcap.com/currencies/3x-long-litecoin-token/	2.36
2208	Attila	https://coinmarketcap.com/currencies/attila/	0.100689
2209	3x Short Bitcoin Cash Token	https://coinmarketcap.com/currencies/3x-short-bitcoin-cash-token/	61.09
2210	Celo	https://coinmarketcap.com/currencies/celo/	1.77
2211	dForce	https://coinmarketcap.com/currencies/dforce/	0.426567
2212	EzyStayz	https://coinmarketcap.com/currencies/ezystayz/	0.000733
2213	Helium	https://coinmarketcap.com/currencies/helium/	0.583461
2214	ARCS	https://coinmarketcap.com/currencies/arcs/	0.311242
2215	Enzo	https://coinmarketcap.com/currencies/enzo/	0.012809
2216	Hdac	https://coinmarketcap.com/currencies/hdac/	0.024606
2217	Ormeus Ecosystem	https://coinmarketcap.com/currencies/ormeus-ecosystem/	0.001448
2218	IZE	https://coinmarketcap.com/currencies/ize/	0.034286
2219	4THPILLAR TECHNOLOGIES	https://coinmarketcap.com/currencies/4thpillar-technologies/	0.003229
2220	Galatasaray Fan Token	https://coinmarketcap.com/currencies/galatasaray-fan-token/	2.39
2221	MyToken	https://coinmarketcap.com/currencies/mytoken/	0.001019
2222	Atletico De Madrid Fan Token	https://coinmarketcap.com/currencies/atletico-de-madrid-fan-token/	3.67
2223	Spice	https://coinmarketcap.com/currencies/spice/	0.000714
2224	Hintchain	https://coinmarketcap.com/currencies/hintchain/	0.002163
2225	UMA	https://coinmarketcap.com/currencies/uma/	1.91
2226	CNNS	https://coinmarketcap.com/currencies/cnns/	0.003264
2227	InnovaMinex	https://coinmarketcap.com/currencies/innovaminex/	0.067979
2228	Lukki Operating Token	https://coinmarketcap.com/currencies/lukki-operating-token/	0.005335
2229	DUO Network Token	https://coinmarketcap.com/currencies/duo-network-token/	0.004526
2230	TerraKRW	https://coinmarketcap.com/currencies/terra-krw/	0.000826
2231	Sparkle	https://coinmarketcap.com/currencies/sparkle/	0.057446
2232	Dapp Token	https://coinmarketcap.com/currencies/dapp-token/	0.000834
2233	V-Dimension	https://coinmarketcap.com/currencies/v-dimension/	0.654675
2234	Rivex	https://coinmarketcap.com/currencies/rivex/	0.154414
2235	Juventus Fan Token	https://coinmarketcap.com/currencies/juventus-fan-token/	6.43
2236	Ixinium	https://coinmarketcap.com/currencies/ixinium/	0.260935
2237	Tether Gold	https://coinmarketcap.com/currencies/tether-gold/	1779.81
2238	UBU	https://coinmarketcap.com/currencies/ubu/	0.025597
2239	Binance GBP Stable Coin	https://coinmarketcap.com/currencies/binance-gbp-stable-coin/	1.24
2240	Buxcoin	https://coinmarketcap.com/currencies/buxcoin/	0.707526
2241	DARMA Cash	https://coinmarketcap.com/currencies/darma-cash/	0.288061
2242	Spockchain Network	https://coinmarketcap.com/currencies/spockchain-network/	0.000786
2243	QURAS	https://coinmarketcap.com/currencies/quras/	0.039441
2244	MarketPeak	https://coinmarketcap.com/currencies/marketpeak/	0.125290
2245	Intelligent Investment Chain	https://coinmarketcap.com/currencies/intelligent-investment-chain/	0.000155
2246	DSLA Protocol	https://coinmarketcap.com/currencies/dsla-protocol/	0.000423
2247	MATH	https://coinmarketcap.com/currencies/math/	0.177514
2248	Quish Coin	https://coinmarketcap.com/currencies/quish-coin/	0.045733
2249	United Bitcoin	https://coinmarketcap.com/currencies/united-bitcoin/	0.862316
2250	Ti-Value	https://coinmarketcap.com/currencies/ti-value/	0.003373
2251	EMOGI Network	https://coinmarketcap.com/currencies/emogi-network/	0.000360
2252	BuySell	https://coinmarketcap.com/currencies/buysell/	2.75
2253	Dawn Protocol	https://coinmarketcap.com/currencies/dawn-protocol/	0.104413
2254	Aitheon	https://coinmarketcap.com/currencies/aitheon/	0.001601
2255	CACHE Gold	https://coinmarketcap.com/currencies/cache-gold/	57.30
2256	UltrAlpha	https://coinmarketcap.com/currencies/ultralpha/	0.066804
2257	LBK	https://coinmarketcap.com/currencies/lbk/	0.005211
2258	REBIT	https://coinmarketcap.com/currencies/rebit/	0.083735
2259	Sylo	https://coinmarketcap.com/currencies/sylo/	0.005321
2260	Two Prime FF1 Token	https://coinmarketcap.com/currencies/two-prime-ff1-token/	3.64
2261	PhoenixDAO	https://coinmarketcap.com/currencies/phoenixdao/	0.031115
2262	Wownero	https://coinmarketcap.com/currencies/wownero/	0.029755
2263	Vectorium	https://coinmarketcap.com/currencies/vectorium/	1.49
2264	Engine	https://coinmarketcap.com/currencies/engine/	0.000102
2265	HackenAI	https://coinmarketcap.com/currencies/hackenai/	0.007831
2266	Mavro	https://coinmarketcap.com/currencies/mavro/	2.88
2267	WETH	https://coinmarketcap.com/currencies/weth/	229.34
2268	HebeBlock	https://coinmarketcap.com/currencies/hebeblock/	0.003941
2269	HOMT	https://coinmarketcap.com/currencies/homt/	0.381696
2270	VEHICLE DATA ARTIFICIAL INTELLIGENCE PLATFORM	https://coinmarketcap.com/currencies/vehicle-data-artificial-intelligence-platform/	0.167442
2271	Axial Entertainment Digital Asset	https://coinmarketcap.com/currencies/axial-entertainment-digital-asset/	0.002069
2272	PATHHIVE	https://coinmarketcap.com/currencies/phv/	0.002310
2273	Hubi Token	https://coinmarketcap.com/currencies/hubi-token/	0.007719
2274	Swapzilla	https://coinmarketcap.com/currencies/swapzilla/	0.865528
2275	BlockNoteX	https://coinmarketcap.com/currencies/blocknotex/	0.578450
2276	Botton	https://coinmarketcap.com/currencies/botton/	0.999933
2277	Affil Coin	https://coinmarketcap.com/currencies/affil-coin/	0.972057
2278	Freight Trust & Clearing Network	https://coinmarketcap.com/currencies/freight-trust-clearing-network/	0.009295
2279	UniDollar	https://coinmarketcap.com/currencies/unidollar/	0.000275
2280	CoinMeet	https://coinmarketcap.com/currencies/coinmeet/	0.006915
2281	DEXA COIN	https://coinmarketcap.com/currencies/dexa-coin/	0.000009
2282	BitUP Token	https://coinmarketcap.com/currencies/bitup-token/	0.001435
2283	Entherfound	https://coinmarketcap.com/currencies/entherfound/	0.870936
2284	1irstGold	https://coinmarketcap.com/currencies/1irstgold/	58.27
2285	SOLBIT	https://coinmarketcap.com/currencies/solbit/	0.003696
2286	Promotion Coin	https://coinmarketcap.com/currencies/promotion-coin/	0.000056
2287	KEY	https://coinmarketcap.com/currencies/key/	0.000823
2288	Blockchain Quotations Index Token	https://coinmarketcap.com/currencies/blockchain-quotations-index-token/	0.010534
2289	Super Bitcoin	https://coinmarketcap.com/currencies/super-bitcoin/	0.399796
2290	Dexter G	https://coinmarketcap.com/currencies/dexter-g/	0.465600
2291	BenePit Protocol	https://coinmarketcap.com/currencies/benepit-protocol/	0.000124
2292	MSD	https://coinmarketcap.com/currencies/msd/	0.004949
2293	Pledge Coin	https://coinmarketcap.com/currencies/pledge-coin/	0.000290
2294	Jack Token	https://coinmarketcap.com/currencies/jack-token/	0.060797
2295	Aragon Court	https://coinmarketcap.com/currencies/aragon-court/	0.018668
2296	SimpleChain	https://coinmarketcap.com/currencies/simplechain/	0.631573
2297	Davion	https://coinmarketcap.com/currencies/davion/	0.598686
2298	The Hustle App	https://coinmarketcap.com/currencies/the-hustle-app/	0.000367
2299	Hinto	https://coinmarketcap.com/currencies/hinto/	0.247377
2300	Mogu	https://coinmarketcap.com/currencies/mogu/	0.036748
2301	Cybereits	https://coinmarketcap.com/currencies/cybereits/	0.000776
2302	Electronero Pulse	https://coinmarketcap.com/currencies/electronero-pulse/	0.001460
2303	LOA Protocol	https://coinmarketcap.com/currencies/loa-protocol/	0.030907
2304	ArdCoin	https://coinmarketcap.com/currencies/ardcoin/	0.000916
2305	DXdao	https://coinmarketcap.com/currencies/dxdao/	93.66
2306	EDC Blockchain	https://coinmarketcap.com/currencies/edc-blockchain/	0.000457
2307	Agoras Tokens	https://coinmarketcap.com/currencies/agoras-tokens/	0.181907
2308	BUMO	https://coinmarketcap.com/currencies/bumo/	0.003578
2309	IDK	https://coinmarketcap.com/currencies/idk/	0.069141
2310	CoinHe Token	https://coinmarketcap.com/currencies/coinhe-token/	0.054058
2311	Bit Trust System	https://coinmarketcap.com/currencies/bit-trust-system/	0.016166
2312	Jinbi Token	https://coinmarketcap.com/currencies/jinbi-token/	125.39
2313	Minter Network	https://coinmarketcap.com/currencies/minter-network/	0.003167
2314	RING X PLATFORM	https://coinmarketcap.com/currencies/ring-x-platform/	0.422000
2315	CashBackPro	https://coinmarketcap.com/currencies/cashbackpro/	1.02
2316	Pawtocol	https://coinmarketcap.com/currencies/pawtocol/	0.004164
2317	CITEX Token	https://coinmarketcap.com/currencies/citex-token/	0.006235
2318	STK Coin	https://coinmarketcap.com/currencies/stk-coin/	0.028411
2319	Marshal Lion Group Coin	https://coinmarketcap.com/currencies/marshal-lion-group-coin/	0.353488
2320	Zuflo Coin	https://coinmarketcap.com/currencies/zuflo-coin/	0.001720
2321	DFOhub	https://coinmarketcap.com/currencies/dfohub/	0.381981
2322	1x Short Bitcoin Token	https://coinmarketcap.com/currencies/1x-short-bitcoin-token/	972.77
2323	TeeCoin	https://coinmarketcap.com/currencies/teecoin/	0.000978
2324	3x Long Tezos Token	https://coinmarketcap.com/currencies/3x-long-tezos-token/	749.87
2325	USDA	https://coinmarketcap.com/currencies/usda/	0.040168
2326	DarkPay	https://coinmarketcap.com/currencies/darkpaycoin/	0.018971
2327	Saga	https://coinmarketcap.com/currencies/saga/	1.38
2328	BeeKan	https://coinmarketcap.com/currencies/beekan/	0.000644
2329	xscoin	https://coinmarketcap.com/currencies/xscoin/	0.353580
2330	Treelion	https://coinmarketcap.com/currencies/treelion/	0.052117
2331	Tepleton	https://coinmarketcap.com/currencies/tepleton/	0.016790
2332	AZBI CORE	https://coinmarketcap.com/currencies/azbi-core/	0.000007
2333	Inverse Bitcoin Volatility Token	https://coinmarketcap.com/currencies/inverse-bitcoin-volatility-token/	4817.05
2334	vSportCoin	https://coinmarketcap.com/currencies/vsportcoin/	0.001285
2335	Krypton Galaxy Coin	https://coinmarketcap.com/currencies/krypton-galaxy-coin/	0.000272
2336	Hive Dollar	https://coinmarketcap.com/currencies/hive-dollar/	0.981883
2337	SPIN Protocol	https://coinmarketcap.com/currencies/spin-protocol/	0.000761
2338	LunchMoney	https://coinmarketcap.com/currencies/lunchmoney/	0.000920
2339	1X Short Ethereum Token	https://coinmarketcap.com/currencies/1x-short-ethereum-token/	1001.07
2340	ProBit Token	https://coinmarketcap.com/currencies/probit-token/	0.194725
2341	ZelaaPayAE	https://coinmarketcap.com/currencies/zelaapayae/	0.008573
2342	Livepeer	https://coinmarketcap.com/currencies/livepeer/	2.25
2343	BitKAM	https://coinmarketcap.com/currencies/bitkam/	0.000918
2344	D Community	https://coinmarketcap.com/currencies/d-community/	0.000095
2345	Sudan Gold Coin	https://coinmarketcap.com/currencies/sudan-gold-coin/	0.061676
2346	Joys Digital	https://coinmarketcap.com/currencies/joys-digital/	0.009280
2347	THENODE	https://coinmarketcap.com/currencies/thenode/	0.088270
2348	Ycash	https://coinmarketcap.com/currencies/ycash/	0.103571
2349	Robonomics.network	https://coinmarketcap.com/currencies/robonomics-network/	1.99
2350	YouLive Coin	https://coinmarketcap.com/currencies/youlive-coin/	0.000165
2351	Bitcloud Pro	https://coinmarketcap.com/currencies/bitcloud-pro/	0.000733
2352	CryptoBossCoin	https://coinmarketcap.com/currencies/cryptobosscoin/	0.023245
2353	MultiCoinCasino	https://coinmarketcap.com/currencies/multicoincasino/	0.009325
2354	IBStoken	https://coinmarketcap.com/currencies/ibstoken/	0.018200
2355	Blood	https://coinmarketcap.com/currencies/blood/	0.000551
2356	MoCo Token	https://coinmarketcap.com/currencies/moco-token/	0.000724
2357	Render Token	https://coinmarketcap.com/currencies/render-token/	0.074032
2358	Alchemy	https://coinmarketcap.com/currencies/alchemy/	1.14
2359	Skillchain	https://coinmarketcap.com/currencies/skillchain/	0.023472
2360	Maggie	https://coinmarketcap.com/currencies/maggie/	0.000292
2361	CryptoBharatCoin	https://coinmarketcap.com/currencies/cryptobharatcoin/	0.304680
2362	ARMTOKEN	https://coinmarketcap.com/currencies/armtoken/	0.009687
2363	XIO	https://coinmarketcap.com/currencies/xio/	0.065801
2364	Curio	https://coinmarketcap.com/currencies/curio/	0.286083
2365	IOEX	https://coinmarketcap.com/currencies/ioex/	0.010383
2366	Volume Network	https://coinmarketcap.com/currencies/volume-network/	0.001521
2367	1x Long Bitcoin Implied Volatility Token	https://coinmarketcap.com/currencies/1x-long-bitcoin-implied-volatility-token/	4823.77
2368	ECOSC	https://coinmarketcap.com/currencies/ecosc/	1.78
2369	MEX	https://coinmarketcap.com/currencies/mex/	0.000330
2370	WiBX	https://coinmarketcap.com/currencies/wibx/	0.004090
2371	PointPay	https://coinmarketcap.com/currencies/pointpay/	0.049673
2372	ALA	https://coinmarketcap.com/currencies/ala/	7.11e-7
2373	ThingsOperatingSystem	https://coinmarketcap.com/currencies/thingsoperatingsystem/	0.001147
2374	Daikicoin	https://coinmarketcap.com/currencies/daikicoin/	0.008798
2375	En-Tan-Mo	https://coinmarketcap.com/currencies/en-tan-mo/	0.009138
2376	BITTO	https://coinmarketcap.com/currencies/bitto/	0.377458
2377	MyDexPay	https://coinmarketcap.com/currencies/mydexpay/	0.021012
2378	EduCoin	https://coinmarketcap.com/currencies/edu-coin/	0.000118
2379	Ubique Chain Of Things	https://coinmarketcap.com/currencies/ubique-chain-of-things/	0.015561
2380	ETHPlus	https://coinmarketcap.com/currencies/ethplus/	1.08
2381	GSENetwork	https://coinmarketcap.com/currencies/gsenetwork/	0.000043
2382	Davies	https://coinmarketcap.com/currencies/davies/	0.124642
2383	EYES Protocol	https://coinmarketcap.com/currencies/eyes-protocol/	0.003570
2384	Korbot	https://coinmarketcap.com/currencies/korbot/	0.054714
2385	Global Reserve System	https://coinmarketcap.com/currencies/global-reserve-system/	14.65
2386	eosBLACK	https://coinmarketcap.com/currencies/eosblack/	0.001064
2387	VENJOCOIN	https://coinmarketcap.com/currencies/venjocoin/	2.87
2388	Bitcurate	https://coinmarketcap.com/currencies/bitcurate/	0.034295
2389	Globalvillage Ecosystem	https://coinmarketcap.com/currencies/globalvillage-ecosystem/	0.000203
2390	Twinkle	https://coinmarketcap.com/currencies/twinkle/	0.000550
2391	Aunite	https://coinmarketcap.com/currencies/aunite/	0.012600
2392	Golden Token	https://coinmarketcap.com/currencies/golden-token/	0.007714
2393	WEBN token	https://coinmarketcap.com/currencies/webn-token/	0.000002
2394	Ethereum Message Search	https://coinmarketcap.com/currencies/ethereum-message-search/	2.11
2395	Aeryus	https://coinmarketcap.com/currencies/aeryus/	0.006304
2396	3x Short Tezos Token	https://coinmarketcap.com/currencies/3x-short-tezos-token/	4.96
2397	Wisdom Chain	https://coinmarketcap.com/currencies/wisdom-chain/	0.110970
2398	Blue Baikal	https://coinmarketcap.com/currencies/blue-baikal/	0.000012
2399	B91	https://coinmarketcap.com/currencies/b91/	0.018094
2400	Mochimo	https://coinmarketcap.com/currencies/mochimo/	0.046215
2401	NewsToken	https://coinmarketcap.com/currencies/newstoken/	0.000394
2402	Esports Token	https://coinmarketcap.com/currencies/esports-token/	0.000396
2403	Bitcoin BEP2	https://coinmarketcap.com/currencies/bitcoin-bep2/	9110.04
2404	PalletOne	https://coinmarketcap.com/currencies/palletone/	0.001168
2405	Kratscoin	https://coinmarketcap.com/currencies/kratscoin/	0.457924
2406	MarcoPolo Protocol	https://coinmarketcap.com/currencies/marcopolo-protocol/	0.047155
2407	LYFE	https://coinmarketcap.com/currencies/lyfe/	0.014697
2408	LEVELG	https://coinmarketcap.com/currencies/levelg/	0.080850
2409	Beer Money	https://coinmarketcap.com/currencies/beer-money/	0.008443
2410	Mega Lottery Services Global	https://coinmarketcap.com/currencies/mega-lottery-services-global/	0.028083
2411	Opennity	https://coinmarketcap.com/currencies/opennity/	0.000035
2412	DeepCloud AI	https://coinmarketcap.com/currencies/deepcloud-ai/	0.000384
2413	Emrals	https://coinmarketcap.com/currencies/emrals/	0.013836
2414	CARAT	https://coinmarketcap.com/currencies/carat/	0.655657
2415	ValueChain	https://coinmarketcap.com/currencies/valuechain/	0.001835
2416	Boogle	https://coinmarketcap.com/currencies/boogle/	0.000157
2417	StellarPayGlobal	https://coinmarketcap.com/currencies/stellarpayglobal/	0.286679
2418	DWS	https://coinmarketcap.com/currencies/dws/	0.000052
2419	Vectorspace AI	https://coinmarketcap.com/currencies/vectorspace-ai/	0.111811
2420	HeartBout Pay	https://coinmarketcap.com/currencies/heartbout-pay/	0.005866
2421	London Football Exchange	https://coinmarketcap.com/currencies/london-football-exchange/	0.005332
2422	GM Holding	https://coinmarketcap.com/currencies/gm-holding/	0.019429
2423	MERCI	https://coinmarketcap.com/currencies/merci/	0.001389
2424	Bitpanda Ecosystem Token	https://coinmarketcap.com/currencies/bitpanda-ecosystem-token/	0.091165
2425	Guapcoin	https://coinmarketcap.com/currencies/guapcoin/	0.046649
2426	Global Game Coin	https://coinmarketcap.com/currencies/global-game-coin/	2.87
2427	Asian-African Capital Chain	https://coinmarketcap.com/currencies/asian-african-capital-chain/	0.055334
2428	Vanywhere	https://coinmarketcap.com/currencies/vanywhere/	0.000733
2429	COMSA [XEM]	https://coinmarketcap.com/currencies/comsa-xem/	0.053208
2430	Neuromorphic.io	https://coinmarketcap.com/currencies/neuromorphic-io/	0.690772
2431	Sapphire	https://coinmarketcap.com/currencies/sapphire/	0.003941
2432	Hyper Pay	https://coinmarketcap.com/currencies/hyper-pay/	0.000917
2433	XDAG	https://coinmarketcap.com/currencies/xdag/	0.001607
2434	OTCBTC Token	https://coinmarketcap.com/currencies/otcbtc-token/	0.002263
2435	MORELO	https://coinmarketcap.com/currencies/morelo/	0.001764
2436	Simone	https://coinmarketcap.com/currencies/simone/	142.35
2437	IOOX System	https://coinmarketcap.com/currencies/ioox-system/	0.122366
2438	1Million Token	https://coinmarketcap.com/currencies/1million-token/	0.098513
2439	Commerce Data Connection	https://coinmarketcap.com/currencies/commerce-data-connection/	0.000116
2440	The global index chain	https://coinmarketcap.com/currencies/the-global-index-chain/	0.000456
2441	Infinity Esaham	https://coinmarketcap.com/currencies/infinity-esaham/	1.42
2442	AK12	https://coinmarketcap.com/currencies/ak12/	0.590465
2443	Volt	https://coinmarketcap.com/currencies/volt/	0.000049
2444	VeraOne	https://coinmarketcap.com/currencies/veraone/	56.31
2445	TranslateMe Network Token	https://coinmarketcap.com/currencies/translateme-network-token/	0.001006
2446	GoalTime N	https://coinmarketcap.com/currencies/goaltime-n/	0.000219
2447	HelixNetwork	https://coinmarketcap.com/currencies/helixnetwork/	0.001008
2448	Future1coin	https://coinmarketcap.com/currencies/future1coin/	0.000489
2449	COMSA [ETH]	https://coinmarketcap.com/currencies/comsa-eth/	0.055143
2450	CelCoin	https://coinmarketcap.com/currencies/celcoin/	0.000742
2451	SOMESING	https://coinmarketcap.com/currencies/somesing/	0.002271
2452	Bitgrin	https://coinmarketcap.com/currencies/bitgrin/	0.004078
2453	MGC Token	https://coinmarketcap.com/currencies/mgc-token/	0.001605
2454	WHEN Token	https://coinmarketcap.com/currencies/when-token/	0.001847
2455	Bitcoin File	https://coinmarketcap.com/currencies/bitcoin-file/	0.000728
2456	BITFXT COIN	https://coinmarketcap.com/currencies/bitfxt-coin/	0.002546
2457	SatoExchange Token	https://coinmarketcap.com/currencies/satoexchange-token/	0.001101
2458	Flits	https://coinmarketcap.com/currencies/flits/	1.15
2459	IOU	https://coinmarketcap.com/currencies/iou/	0.012877
2460	DMme	https://coinmarketcap.com/currencies/dmme/	0.006366
2461	Bali Coin	https://coinmarketcap.com/currencies/bali-coin/	0.012647
2462	Gric Coin	https://coinmarketcap.com/currencies/gric-coin/	0.025254
2463	WowSecret	https://coinmarketcap.com/currencies/wowsecret/	0.000367
2464	Tchain	https://coinmarketcap.com/currencies/tchain/	0.001052
2465	BeeEx	https://coinmarketcap.com/currencies/beeex/	0.017083
2466	SappChain	https://coinmarketcap.com/currencies/sappchain/	0.000041
2467	AdsByWiFi	https://coinmarketcap.com/currencies/adsbywifi/	35.23
2468	SoPay	https://coinmarketcap.com/currencies/sopay/	0.000058
2469	STPAY	https://coinmarketcap.com/currencies/stpay/	22.61
2470	MobilinkToken	https://coinmarketcap.com/currencies/mobilinktoken/	0.005127
2471	VerusCoin	https://coinmarketcap.com/currencies/veruscoin/	0.111778
2472	Receive Access Ecosystem	https://coinmarketcap.com/currencies/receive-access-ecosystem/	0.359080
2473	Emanate	https://coinmarketcap.com/currencies/emanate/	0.009600
2474	NSS Coin	https://coinmarketcap.com/currencies/nss-coin/	0.005328
2475	MACH Project	https://coinmarketcap.com/currencies/mach-project/	0.017932
2476	BitcoinX	https://coinmarketcap.com/currencies/bitcoinx/	0.000541
2477	Wallet Plus X	https://coinmarketcap.com/currencies/wallet-plus-x/	0.000281
2478	Simple Software Solutions	https://coinmarketcap.com/currencies/simple-software-solutions/	0.049399
2479	MONNOS	https://coinmarketcap.com/currencies/monnos/	0.001923
2480	Perth Mint Gold Token	https://coinmarketcap.com/currencies/perth-mint-gold-token/	1791.16
2481	ZCore Token	https://coinmarketcap.com/currencies/zcore-token/	0.115791
2482	LegalBlock	https://coinmarketcap.com/currencies/legalblock/	0.000381
2483	Chainpay	https://coinmarketcap.com/currencies/chainpay/	0.554019
2484	Sombe	https://coinmarketcap.com/currencies/sombe/	0.001283
2485	Diligence	https://coinmarketcap.com/currencies/diligence/	0.004991
2486	ClubCoin	https://coinmarketcap.com/currencies/clubcoin/	0.011823
2487	AfroDex	https://coinmarketcap.com/currencies/afrodex/	4.03e-8
2488	Becaz	https://coinmarketcap.com/currencies/becaz/	0.640093
2489	TILWIKI	https://coinmarketcap.com/currencies/tilwiki/	3.59
2490	Charg Coin	https://coinmarketcap.com/currencies/charg-coin/	0.295658
2491	StarChain	https://coinmarketcap.com/currencies/starchain/	0.000042
2492	Colletrix	https://coinmarketcap.com/currencies/colletrix/	0.000003
2493	SKINCHAIN	https://coinmarketcap.com/currencies/skinchain/	0.000017
2494	B ONE PAYMENT	https://coinmarketcap.com/currencies/b-one-payment/	0.001578
2495	Pixie Coin	https://coinmarketcap.com/currencies/pixie-coin/	0.000647
2496	DOCH COIN	https://coinmarketcap.com/currencies/doch-coin/	0.015214
2497	VOMER	https://coinmarketcap.com/currencies/vomer/	0.499883
2498	EXOR	https://coinmarketcap.com/currencies/exor/	0.003208
2499	Fanaticos Cash	https://coinmarketcap.com/currencies/fanaticos-cash/	0.034093
2500	SINERGIA	https://coinmarketcap.com/currencies/sinergia/	0.023509
2501	Tutor's Diary	https://coinmarketcap.com/currencies/tutors-diary/	0.002933
2502	Cashhand	https://coinmarketcap.com/currencies/cashhand/	0.000463
2503	Consentium	https://coinmarketcap.com/currencies/consentium/	0.047702
2504	Tratok	https://coinmarketcap.com/currencies/tratok/	0.003158
2505	ScPrime	https://coinmarketcap.com/currencies/scprime/	0.011089
2506	Bitsten Token	https://coinmarketcap.com/currencies/bitsten-token/	0.003574
2507	BLOCKIDCOIN	https://coinmarketcap.com/currencies/blockidcoin/	14.84
2508	MyTVchain	https://coinmarketcap.com/currencies/mytvchain/	0.005132
2509	SkyMap	https://coinmarketcap.com/currencies/skymap/	0.005438
2510	Crex Token	https://coinmarketcap.com/currencies/crex-token/	3.94
2511	Historia	https://coinmarketcap.com/currencies/historia/	0.001375
2512	Kahsh	https://coinmarketcap.com/currencies/kahsh/	0.017174
2513	Odyssey	https://coinmarketcap.com/currencies/odyssey-ody/	0.012429
2514	Custody Token	https://coinmarketcap.com/currencies/custody-token/	0.001414
2515	Game Stars	https://coinmarketcap.com/currencies/game-stars/	0.000007
2516	CENTERCOIN	https://coinmarketcap.com/currencies/centercoin/	0.000400
2517	Experience Token	https://coinmarketcap.com/currencies/experience-token/	0.000009
2518	DACC	https://coinmarketcap.com/currencies/dacc/	0.000018
2519	xCrypt Token	https://coinmarketcap.com/currencies/xcrypt-token/	0.000055
2520	Universal Protocol Token	https://coinmarketcap.com/currencies/universal-protocol-token/	0.003299
2521	Coin Controller Cash	https://coinmarketcap.com/currencies/coin-controller-cash/	0.000232
2522	pTokens BTC	https://coinmarketcap.com/currencies/ptokens-btc/	9344.16
2523	FuturoCoin	https://coinmarketcap.com/currencies/futurocoin/	0.984716
2524	Electronero	https://coinmarketcap.com/currencies/electronero/	0.000004
2525	LemoChain	https://coinmarketcap.com/currencies/lemochain/	0.002718
2526	MoneroV	https://coinmarketcap.com/currencies/monero-v/	0.001741
2527	Bincentive	https://coinmarketcap.com/currencies/bincentive/	0.009219
2528	BlockCDN	https://coinmarketcap.com/currencies/blockcdn/	0.001558
2529	TYCOON69	https://coinmarketcap.com/currencies/tycoon69/	0.230538
2530	RAKSUR	https://coinmarketcap.com/currencies/raksur/	0.000353
2531	TCOIN	https://coinmarketcap.com/currencies/tcoin/	0.012781
2532	BuckHathCoin	https://coinmarketcap.com/currencies/buck-hath-coin/	0.037942
2533	QUSD	https://coinmarketcap.com/currencies/qusd/	0.011735
2534	SovranoCoin	https://coinmarketcap.com/currencies/sovranocoin/	0.385328
2535	Endorsit	https://coinmarketcap.com/currencies/endorsit/	0.000003
2536	Infinity Economics	https://coinmarketcap.com/currencies/infinity-economics/	0.001939
2537	Kryptofranc	https://coinmarketcap.com/currencies/kryptofranc/	0.000026
2538	Altbet	https://coinmarketcap.com/currencies/altbet/	0.019824
2539	Ladder Network Token	https://coinmarketcap.com/currencies/ladder-network-token/	0.001759
2540	Bitcoin God	https://coinmarketcap.com/currencies/bitcoin-god/	0.642960
2541	SEER	https://coinmarketcap.com/currencies/seer/	0.000193
2542	TerraNova	https://coinmarketcap.com/currencies/terranova/	0.004857
2543	First Bitcoin	https://coinmarketcap.com/currencies/first-bitcoin/	0.002383
2544	Influence Chain	https://coinmarketcap.com/currencies/influence-chain/	0.000105
2545	BitcoinV	https://coinmarketcap.com/currencies/bitcoinv/	0.034629
2546	Bluekey	https://coinmarketcap.com/currencies/bluekey/	0.000138
2547	Aerotoken	https://coinmarketcap.com/currencies/aerotoken/	0.091238
2548	Wiki Token	https://coinmarketcap.com/currencies/wiki-token/	0.370286
2549	LOLTOKEN	https://coinmarketcap.com/currencies/loltoken/	0.000372
2550	StockChain	https://coinmarketcap.com/currencies/stockchain/	0.000076
2551	Boltt Coin	https://coinmarketcap.com/currencies/boltt-coin/	0.035635
2552	Harcomia	https://coinmarketcap.com/currencies/harcomia/	0.142513
2553	Defi	https://coinmarketcap.com/currencies/defi/	0.464899
2554	Sparkster	https://coinmarketcap.com/currencies/sparkster/	0.002287
2555	Golden Ratio Token	https://coinmarketcap.com/currencies/golden-ratio-token/	3.90
2556	ROS Coin	https://coinmarketcap.com/currencies/ros-coin/	0.008564
2557	EncryptoTel [ETH]	https://coinmarketcap.com/currencies/encryptotel-eth/	0.003941
2558	Amun Bitcoin 3x Daily Short	https://coinmarketcap.com/currencies/amun-bitcoin-3x-daily-short/	9952.62
2559	Newsolution	https://coinmarketcap.com/currencies/newsolution/	0.004307
2560	Junsonmingchncoin	https://coinmarketcap.com/currencies/junsonmingchncoin/	6.42e-7
2561	weBloc	https://coinmarketcap.com/currencies/webloc/	0.000191
2562	SuperEdge	https://coinmarketcap.com/currencies/superedge/	0.000016
2563	Uranus	https://coinmarketcap.com/currencies/uranus/	0.000604
2564	Instantily	https://coinmarketcap.com/currencies/instantily/	0.001709
2565	Paparazzi	https://coinmarketcap.com/currencies/paparazzi/	0.117231
2566	Hanacoin	https://coinmarketcap.com/currencies/hanacoin/	0.000367
2567	Stellar Gold	https://coinmarketcap.com/currencies/stellar-gold/	0.001388
2568	BitcoinSoV	https://coinmarketcap.com/currencies/bitcoinsov/	0.033943
2569	0cash	https://coinmarketcap.com/currencies/0cash/	0.000733
2570	Moozicore	https://coinmarketcap.com/currencies/moozicore/	0.000076
2571	Five Star Coin	https://coinmarketcap.com/currencies/five-star-coin/	0.010815
2572	Torex	https://coinmarketcap.com/currencies/torex/	0.005426
2573	GazeCoin	https://coinmarketcap.com/currencies/gazecoin/	0.008798
2574	Ethereum Lite	https://coinmarketcap.com/currencies/ethereum-lite/	0.006415
2575	Social Lending Token	https://coinmarketcap.com/currencies/social-lending-token/	0.000710
2576	GermanCoin	https://coinmarketcap.com/currencies/germancoin/	0.000092
2577	NairaX	https://coinmarketcap.com/currencies/nairax/	0.002475
2578	Amun Bitcoin 3x Daily Long	https://coinmarketcap.com/currencies/amun-bitcoin-3x-daily-long/	9715.97
2579	SaveNode	https://coinmarketcap.com/currencies/savenode/	0.000183
2580	Kemacoin	https://coinmarketcap.com/currencies/kemacoin/	0.000449
2581	Blockmason Link	https://coinmarketcap.com/currencies/blockmason-link/	0.000126
2582	Pyrrhos Gold	https://coinmarketcap.com/currencies/pyrrhos-gold/	0.000917
2583	ORS Group	https://coinmarketcap.com/currencies/ors-group/	0.020000
2584	Amun Short Bitcoin Token	https://coinmarketcap.com/currencies/amun-short-bitcoin-token/	7698.56
2585	CK USD	https://coinmarketcap.com/currencies/ckusd/	0.216788
2586	Metaprediction	https://coinmarketcap.com/currencies/metaprediction/	0.000002
2587	PEPS Coin	https://coinmarketcap.com/currencies/peps-coin/	0.000768
2588	Apple Network	https://coinmarketcap.com/currencies/apple-network/	0.000012
2589	Litbinex Coin	https://coinmarketcap.com/currencies/litbinex-coin/	0.000275
2590	Secure Cash	https://coinmarketcap.com/currencies/secure-cash/	0.114561
2591	cUSD Currency	https://coinmarketcap.com/currencies/cusd-currency/	0.001307
2592	EarnBet	https://coinmarketcap.com/currencies/earnbet/	0.032075
2593	Demeter Chain	https://coinmarketcap.com/currencies/demeter-chain/	0.002087
2594	PocketNode	https://coinmarketcap.com/currencies/pocketnode/	0.000009
2595	Tronipay	https://coinmarketcap.com/currencies/tronipay/	0.000706
2596	Dragon Token	https://coinmarketcap.com/currencies/dragon-token/	1.48
2597	ALP Coin	https://coinmarketcap.com/currencies/alp-coin/	0.260804
2598	Bitcoffeen	https://coinmarketcap.com/currencies/bitcoffeen/	0.839592
2599	Valuto	https://coinmarketcap.com/currencies/valuto/	0.000275
2600	IOV BlockChain	https://coinmarketcap.com/currencies/iov-blockchain/	0.000067
2601	Asac Coin	https://coinmarketcap.com/currencies/asac-coin/	0.000275
2602	Schilling-Coin	https://coinmarketcap.com/currencies/schilling-coin/	0.000827
2603	Maya Preferred 223	https://coinmarketcap.com/currencies/maya-preferred-223/	54.99
2604	MDtoken	https://coinmarketcap.com/currencies/mdtoken/	0.000510
2605	7Eleven	https://coinmarketcap.com/currencies/7eleven/	6.55e-8
2606	QPay	https://coinmarketcap.com/currencies/qpay/	0.000007
2607	SpectreSecurityCoin	https://coinmarketcap.com/currencies/spectre-security-coin/	0.000082
2608	Sexcoin	https://coinmarketcap.com/currencies/sexcoin/	0.001466
2609	Litecoin SV	https://coinmarketcap.com/currencies/litecoin-sv/	0.124367
2610	Litecash	https://coinmarketcap.com/currencies/litecash/	0.000367
2611	KingXChain	https://coinmarketcap.com/currencies/kingxchain/	0.000002
2612	YUKI	https://coinmarketcap.com/currencies/yuki/	0.000002
2613	Ethlyte Crypto	https://coinmarketcap.com/currencies/ethlyte-crypto/	0.020643
2614	ASYAGRO	https://coinmarketcap.com/currencies/asyagro/	0.027751
2615	RabbitCoin	https://coinmarketcap.com/currencies/rabbitcoin/	0.000002
2616	Usechain Token	https://coinmarketcap.com/currencies/usechain-token/	0.000212
2617	PROUD Money	https://coinmarketcap.com/currencies/proud-money/	0.001466
2618	One DEX	https://coinmarketcap.com/currencies/one-dex/	1.83e-7
2619	Centaure	https://coinmarketcap.com/currencies/centaure/	0.000092
2620	Global X Change Token	https://coinmarketcap.com/currencies/global-x-change-token/	0.068645
2621	Jingtum Tech	https://coinmarketcap.com/currencies/jingtum-tech/	0.000033
2622	WINCOIN	https://coinmarketcap.com/currencies/win-coin/	0.000092
2623	HondaisCoin	https://coinmarketcap.com/currencies/hondaiscoin/	9.16e-7
2624	HGH Token	https://coinmarketcap.com/currencies/hgh-token/	0.000008
2625	bitCEO	https://coinmarketcap.com/currencies/bitceo/	0.091719
2626	Quotient	https://coinmarketcap.com/currencies/quotient/	0.000182
2627	Bubble	https://coinmarketcap.com/currencies/bubble/	0.006282
2628	Axiom	https://coinmarketcap.com/currencies/axiom/	0.000546
2629	AvatarCoin	https://coinmarketcap.com/currencies/avatarcoin/	0.048441
2630	Francs	https://coinmarketcap.com/currencies/francs/	0.001393
2631	Aces	https://coinmarketcap.com/currencies/aces/	0.000124
2632	BlazerCoin	https://coinmarketcap.com/currencies/blazercoin/	0.000182
2633	EmberCoin	https://coinmarketcap.com/currencies/embercoin/	3.19e-8
2634	Wink	https://coinmarketcap.com/currencies/wink/	0.000183
2635	Moving Cloud Coin	https://coinmarketcap.com/currencies/moving-cloud-coin/	0.000191
2636	BTCMoon	https://coinmarketcap.com/currencies/btcmoon/	0.000454
2637	Qube	https://coinmarketcap.com/currencies/qube/	0.000138
2638	Read	https://coinmarketcap.com/currencies/read/	0.000990
2639	OceanChain	https://coinmarketcap.com/currencies/oceanchain/	0.000097
2640	Animation Vision Cash	https://coinmarketcap.com/currencies/animation-vision-cash/	0.000284
2641	Lendroid Support Token	https://coinmarketcap.com/currencies/lendroid-support-token/	0.000379
2642	SalPay	https://coinmarketcap.com/currencies/salpay/	0.000508
2643	CHEX	https://coinmarketcap.com/currencies/chex/	0.001205
2644	XTRD	https://coinmarketcap.com/currencies/xtrd/	0.000347
2645	NAM COIN	https://coinmarketcap.com/currencies/nam-coin/	0.000040
2646	CEDEX Coin	https://coinmarketcap.com/currencies/cedex-coin/	0.001730
2647	Obitan Chain	https://coinmarketcap.com/currencies/obitan-chain/	0.000041
2648	Hybrid Block	https://coinmarketcap.com/currencies/hybrid-block/	0.000307
2649	RRCoin	https://coinmarketcap.com/currencies/rrcoin/	0.000044
2650	CMITCOIN	https://coinmarketcap.com/currencies/cmitcoin/	0.000003
2651	PlusOneCoin	https://coinmarketcap.com/currencies/plusonecoin/	0.019126
2652	CapdaxToken	https://coinmarketcap.com/currencies/capdaxtoken/	0.003897
2653	MediBit	https://coinmarketcap.com/currencies/medibit/	0.000002
2654	Bgogo Token	https://coinmarketcap.com/currencies/bgogo-token/	0.000450
2655	ROMToken	https://coinmarketcap.com/currencies/romtoken/	0.000008
2656	TOKOK	https://coinmarketcap.com/currencies/tokok/	0.003000
2657	BiNGO.Fun	https://coinmarketcap.com/currencies/bingo-fun/	0.000008
2658	RoboCalls	https://coinmarketcap.com/currencies/robocalls/	0.000036
2659	Big Bang Game Coin	https://coinmarketcap.com/currencies/big-bang-game-coin/	0.000044
2660	Xtock	https://coinmarketcap.com/currencies/xtock/	0.000083
2661	OOOBTC TOKEN	https://coinmarketcap.com/currencies/ooobtc-token/	0.001696
2662	HUDDL	https://coinmarketcap.com/currencies/huddl/	0.002367
2663	UTEMIS	https://coinmarketcap.com/currencies/utemis/	0.000225
2664	BIZKEY	https://coinmarketcap.com/currencies/bizkey/	0.000010
2665	Atlas Token	https://coinmarketcap.com/currencies/atlas-token/	0.000457
2666	Muzika	https://coinmarketcap.com/currencies/muzika/	0.002577
2667	Lucky Block Network	https://coinmarketcap.com/currencies/lucky-block-network/	0.013028
2668	LevelApp Token	https://coinmarketcap.com/currencies/levelapp-token/	6.70e-7
2669	Alphacon	https://coinmarketcap.com/currencies/alphacon/	0.000274
2670	Smartup	https://coinmarketcap.com/currencies/smartup/	0.000021
2671	Zerobank	https://coinmarketcap.com/currencies/zerobank/	0.005644
2672	VENA	https://coinmarketcap.com/currencies/vena/	0.000645
2673	Voltz	https://coinmarketcap.com/currencies/voltz/	0.004068
2674	LINK	https://coinmarketcap.com/currencies/link/	17.74
2675	City Coin	https://coinmarketcap.com/currencies/city-coin/	0.030121
2676	Oath Protocol	https://coinmarketcap.com/currencies/oath-protocol/	0.000011
2677	BOSCore	https://coinmarketcap.com/currencies/boscore/	0.004531
2678	Sierracoin	https://coinmarketcap.com/currencies/sierracoin/	0.012514
2679	Rally	https://coinmarketcap.com/currencies/rally/	0.000290
2680	Versess Coin	https://coinmarketcap.com/currencies/versess-coin/	14.96
2681	VERA	https://coinmarketcap.com/currencies/vera/	0.000092
2682	NOVA	https://coinmarketcap.com/currencies/nova/	0.000007
2683	Lukiu	https://coinmarketcap.com/currencies/lukiu/	0.000125
2684	Bitcoin & Company Network	https://coinmarketcap.com/currencies/bitcoin-and-company-network/	0.000027
2685	Tradeplus	https://coinmarketcap.com/currencies/tradeplus/	3.85
2686	Creatanium	https://coinmarketcap.com/currencies/creatanium/	1.01
2687	QURA GLOBAL	https://coinmarketcap.com/currencies/qura-global/	0.000002
2688	1AI Token	https://coinmarketcap.com/currencies/1ai-token/	0.000099
2689	FLEX	https://coinmarketcap.com/currencies/flex/	0.242862
2690	MEETtoken	https://coinmarketcap.com/currencies/meettoken/	0.026885
2691	CitiOs	https://coinmarketcap.com/currencies/citios/	3.30
2692	SuperSkynet	https://coinmarketcap.com/currencies/superskynet/	0.000005
2693	PYRO Network (TRON)	https://coinmarketcap.com/currencies/pyro-network-tron/	0.000071
2694	The Transfer Token	https://coinmarketcap.com/currencies/the-transfer-token/	4.31
2695	United Bull Traders	https://coinmarketcap.com/currencies/united-bull-traders/	0.000300
2696	Egas	https://coinmarketcap.com/currencies/egas/	0.000330
2697	UniPower	https://coinmarketcap.com/currencies/unipower/	1.02
2698	Amun Ether 3x Daily Short	https://coinmarketcap.com/currencies/amun-ether-3x-daily-short/	?
2699	Amun Ether 3x Daily Long	https://coinmarketcap.com/currencies/amun-ether-3x-daily-long/	226.02
2700	Content and AD Network	https://coinmarketcap.com/currencies/content-and-ad-network/	0.000003
2701	LightChain	https://coinmarketcap.com/currencies/lightchain/	0.000001
2702	Superior Coin	https://coinmarketcap.com/currencies/superior-coin/	0.000071
2703	PlayCoin [QRC20]	https://coinmarketcap.com/currencies/playcoin/	0.000110
2704	WeToken	https://coinmarketcap.com/currencies/wetoken/	0.000193
2705	FundToken	https://coinmarketcap.com/currencies/fundtoken/	0.000489
2706	DIPNET	https://coinmarketcap.com/currencies/dipnet/	0.000546
2707	BingoCoin	https://coinmarketcap.com/currencies/bingocoin/	0.001315
2708	CariNet	https://coinmarketcap.com/currencies/carinet/	0.001821
2709	USDCoin	https://coinmarketcap.com/currencies/usdcoin/	20.84
2710	M2O	https://coinmarketcap.com/currencies/m2o/	0.000220
2711	COINBIG	https://coinmarketcap.com/currencies/coinbig/	0.002632
2712	Oculor	https://coinmarketcap.com/currencies/oculor/	0.000009
2713	BAWnetwork	https://coinmarketcap.com/currencies/bawnetwork/	0.000001
2714	Realio Network	https://coinmarketcap.com/currencies/realio-network/	0.200236
2715	GoMoney	https://coinmarketcap.com/currencies/gomoney/	0.001846
2716	Blacknet	https://coinmarketcap.com/currencies/blacknet/	0.001235
2717	Filenet	https://coinmarketcap.com/currencies/filenet/	0.316492
2718	Kappi Network	https://coinmarketcap.com/currencies/kappi-network/	0.000001
2719	Know Your Developer	https://coinmarketcap.com/currencies/know-your-developer/	0.003004
2720	Zynecoin	https://coinmarketcap.com/currencies/zynecoin/	2.12
2721	Benscoin	https://coinmarketcap.com/currencies/benscoin/	18.99
2722	Unochain	https://coinmarketcap.com/currencies/unochain/	1.00e-7
2723	Wolfs Group	https://coinmarketcap.com/currencies/wolfs-group/	0.022233
2724	Compound Dai	https://coinmarketcap.com/currencies/compound-dai/	0.021532
2725	Zelerius	https://coinmarketcap.com/currencies/zelerius/	0.000094
2726	Ethash Miner	https://coinmarketcap.com/currencies/ethash-miner/	0.021288
2727	Scopuly Coin	https://coinmarketcap.com/currencies/scopuly-coin/	0.018558
2728	eToro Pound Sterling	https://coinmarketcap.com/currencies/etoro-pound-sterling/	?
2729	eToro New Zealand Dollar	https://coinmarketcap.com/currencies/etoro-new-zealand-dollar/	?
2730	eToro Australian Dollar	https://coinmarketcap.com/currencies/etoro-australian-dollar/	?
2731	eToro Euro	https://coinmarketcap.com/currencies/etoro-euro/	?
2732	BTCUP	https://coinmarketcap.com/currencies/btcup/	8.53
2733	BTCDOWN	https://coinmarketcap.com/currencies/btcdown/	11.07
2734	Vether	https://coinmarketcap.com/currencies/vether/	1.94
\.


--
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 2734, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

