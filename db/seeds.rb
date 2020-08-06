# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)



chile = Country.create({name: "Chile"})

r00 = chile.regions.create({ name: "Provincias" , sil_code: "00" })
r01 = chile.regions.create({ name: "1º Región" , sil_code: "01" })
r02 = chile.regions.create({ name: "2º Región" , sil_code: "02" })
r03 = chile.regions.create({ name: "3º Región" , sil_code: "03" })
r04 = chile.regions.create({ name: "4º Región" , sil_code: "04" })
r05 = chile.regions.create({ name: "5º Región" , sil_code: "05" })
r06 = chile.regions.create({ name: "6º Región" , sil_code: "06" })
r07 = chile.regions.create({ name: "7º Región" , sil_code: "07" })
r08 = chile.regions.create({ name: "8º Región" , sil_code: "08" })
r09 = chile.regions.create({ name: "9º Región" , sil_code: "09" })
r10 = chile.regions.create({ name: "10º Región" , sil_code: "10" })
r11 = chile.regions.create({ name: "11º Región" , sil_code: "11" })
r12 = chile.regions.create({ name: "12º Región" , sil_code: "12" })
metropolitana = chile.regions.create({ name: "Region Metropolitana" , sil_code: "RM" })

metropolitana.communes.create({name: 'SANTIAGO', sil_code: '001'})
metropolitana.communes.create({name: 'LO ESPEJO', sil_code: '002'})
metropolitana.communes.create({name: 'ALHUE', sil_code: '003'})
metropolitana.communes.create({name: 'BUIN', sil_code: '004'})
metropolitana.communes.create({name: 'CALERA DE TANGO ', sil_code: '005'})
metropolitana.communes.create({name: 'CERRILLOS', sil_code: '006'})
metropolitana.communes.create({name: 'CERRO NAVIA', sil_code: '007'})
metropolitana.communes.create({name: 'COLINA', sil_code: '008'})
metropolitana.communes.create({name: 'CONCHALI', sil_code: '009'})
metropolitana.communes.create({name: 'CURACAVI', sil_code: '010'})
metropolitana.communes.create({name: 'EL BOSQUE', sil_code: '011'})
metropolitana.communes.create({name: 'EL MONTE', sil_code: '012'})
metropolitana.communes.create({name: 'ESTACION CENTRAL', sil_code: '013'})
metropolitana.communes.create({name: 'HUECHURABA', sil_code: '014'})
metropolitana.communes.create({name: 'INDEPENDENCIA', sil_code: '015'})
metropolitana.communes.create({name: 'ISLA DE MAIPO', sil_code: '016'})
metropolitana.communes.create({name: 'LA CISTERNA', sil_code: '017'})
metropolitana.communes.create({name: 'LA FLORIDA', sil_code: '018'})
metropolitana.communes.create({name: 'LA GRANJA', sil_code: '019'})
metropolitana.communes.create({name: 'LA PINTANA', sil_code: '020'})
metropolitana.communes.create({name: 'LA REINA', sil_code: '021'})
metropolitana.communes.create({name: 'LAMPA', sil_code: '022'})
metropolitana.communes.create({name: 'LAS CONDES', sil_code: '023'})
metropolitana.communes.create({name: 'LO BARNECHEA', sil_code: '024'})
metropolitana.communes.create({name: 'LO PRADO', sil_code: '025'})
metropolitana.communes.create({name: 'MACUL', sil_code: '026'})
metropolitana.communes.create({name: 'MAIPU', sil_code: '027'})
metropolitana.communes.create({name: 'MARIA PINTO', sil_code: '028'})
metropolitana.communes.create({name: 'MELIPILLA', sil_code: '029'})
metropolitana.communes.create({name: 'ÑUÑOA', sil_code: '030'})
metropolitana.communes.create({name: 'PADRE HURTADO', sil_code: '031'})
metropolitana.communes.create({name: 'PAINE', sil_code: '032'})
metropolitana.communes.create({name: 'PEDRO AGUIRRE CERDA ', sil_code: '033'})
metropolitana.communes.create({name: 'PEÑAFLOR', sil_code: '034'})
metropolitana.communes.create({name: 'PEÑALOLEN', sil_code: '035'})
metropolitana.communes.create({name: 'PIRQUE', sil_code: '036'})
metropolitana.communes.create({name: 'PROVIDENCIA', sil_code: '037'})
metropolitana.communes.create({name: 'PUDAHUEL', sil_code: '038'})
metropolitana.communes.create({name: 'PUENTE ALTO', sil_code: '039'})
metropolitana.communes.create({name: 'QUILICURA', sil_code: '040'})
metropolitana.communes.create({name: 'QUINTA NORMAL', sil_code: '041'})
metropolitana.communes.create({name: 'RECOLETA', sil_code: '042'})
metropolitana.communes.create({name: 'RENCA', sil_code: '043'})
metropolitana.communes.create({name: 'SAN BERNARDO', sil_code: '044'})
metropolitana.communes.create({name: 'SAN JOAQUIN', sil_code: '045'})
metropolitana.communes.create({name: 'SAN JOSE DE MAIPO', sil_code: '046'})
metropolitana.communes.create({name: 'SAN MIGUEL', sil_code: '047'})
metropolitana.communes.create({name: 'SAN PEDRO', sil_code: '048'})
metropolitana.communes.create({name: 'SAN RAMON', sil_code: '049'})
metropolitana.communes.create({name: 'TALAGANTE', sil_code: '050'})
metropolitana.communes.create({name: 'TILTIL', sil_code: '051'})
metropolitana.communes.create({name: 'VITACURA', sil_code: '052'})
r01.communes.create({name: 'ARICA', sil_code: '101'})
r01.communes.create({name: 'IQUIQUE ', sil_code: '102'})
r01.communes.create({name: 'CAMARONES', sil_code: '103'})
r01.communes.create({name: 'CAMIÑA', sil_code: '104'})
r01.communes.create({name: 'COLCHANE', sil_code: '105'})
r01.communes.create({name: 'GENERAL LAGOS', sil_code: '106'})
r01.communes.create({name: 'HUARA', sil_code: '107'})
r01.communes.create({name: 'PICA', sil_code: '108'})
r01.communes.create({name: 'POZO ALMONTE', sil_code: '109'})
r01.communes.create({name: 'PUTRE', sil_code: '110'})
r01.communes.create({name: 'ALTO HOSPICIO', sil_code: '111'})
r02.communes.create({name: 'ANTOFAGASTA', sil_code: '201'})
r02.communes.create({name: 'CALAMA', sil_code: '202'})
r02.communes.create({name: 'TOCOPILLA', sil_code: '203'})
r02.communes.create({name: 'CHUQUICAMATA', sil_code: '204'})
r02.communes.create({name: 'TAL TAL ', sil_code: '205'})
r02.communes.create({name: 'MARIA ELENA', sil_code: '206'})
r02.communes.create({name: 'MEJILLONES', sil_code: '207'})
r02.communes.create({name: 'OLLAGUE ', sil_code: '208'})
r02.communes.create({name: 'SAN PEDRO DE ATACAMA', sil_code: '209'})
r02.communes.create({name: 'SIERRA GORDA', sil_code: '210'})
r03.communes.create({name: 'COPIAPO ', sil_code: '301'})
r03.communes.create({name: 'DIEGO DE ALMAGRO', sil_code: '302'})
r03.communes.create({name: 'VALLENAR', sil_code: '303'})
r03.communes.create({name: 'HUASCO', sil_code: '304'})
r03.communes.create({name: 'ALTO DEL CARMEN ', sil_code: '306'})
r03.communes.create({name: 'CALDERA ', sil_code: '307'})
r03.communes.create({name: 'CHAÑARAL', sil_code: '308'})
r03.communes.create({name: 'FREIRINA', sil_code: '309'})
r03.communes.create({name: 'TIERRA AMARILLA ', sil_code: '310'})
r03.communes.create({name: 'EL SALVADOR', sil_code: '311'})
r04.communes.create({name: 'COQUIMBO', sil_code: '401'})
r04.communes.create({name: 'ILLAPEL ', sil_code: '402'})
r04.communes.create({name: 'LA SERENA', sil_code: '403'})
r04.communes.create({name: 'OVALLE', sil_code: '404'})
r04.communes.create({name: 'SALAMANCA', sil_code: '405'})
r04.communes.create({name: 'VICUÑA', sil_code: '406'})
r04.communes.create({name: 'COMBARBALA', sil_code: '407'})
r04.communes.create({name: 'LOS VILOS', sil_code: '408'})
r04.communes.create({name: 'ANDACOLLO', sil_code: '409'})
r04.communes.create({name: 'CANELA O MINCHA ', sil_code: '410'})
r04.communes.create({name: 'LA HIGUERA', sil_code: '411'})
r04.communes.create({name: 'MONTE PATRIA', sil_code: '412'})
r04.communes.create({name: 'PAIHUANO', sil_code: '413'})
r04.communes.create({name: 'PUNITAQUI', sil_code: '414'})
r04.communes.create({name: 'RIO HURTADO', sil_code: '415'})
r04.communes.create({name: 'TIERRAS BLANCAS ', sil_code: '416'})
r05.communes.create({name: 'LA CALERA', sil_code: '501'})
r05.communes.create({name: 'LIMACHE ', sil_code: '502'})
r05.communes.create({name: 'LOS ANDES', sil_code: '503'})
r05.communes.create({name: 'QUILLOTA', sil_code: '504'})
r05.communes.create({name: 'QUILPUE ', sil_code: '505'})
r05.communes.create({name: 'SAN ANTONIO', sil_code: '506'})
r05.communes.create({name: 'SAN FELIPE', sil_code: '507'})
r05.communes.create({name: 'VALPARAISO', sil_code: '508'})
r05.communes.create({name: 'VILLA ALEMANA', sil_code: '509'})
r05.communes.create({name: 'VIÑA DEL MAR', sil_code: '510'})
r05.communes.create({name: 'CASABLANCA', sil_code: '511'})
r05.communes.create({name: 'LLAYLLAY', sil_code: '512'})
r05.communes.create({name: 'ZAPALLAR', sil_code: '513'})
r05.communes.create({name: 'ALGARROBO', sil_code: '514'})
r05.communes.create({name: 'CABILDO ', sil_code: '515'})
r05.communes.create({name: 'CALLE LARGA', sil_code: '516'})
r05.communes.create({name: 'CARTAGENA', sil_code: '517'})
r05.communes.create({name: 'CATEMU', sil_code: '518'})
r05.communes.create({name: 'CONCON', sil_code: '519'})
r05.communes.create({name: 'EL QUISCO', sil_code: '520'})
r05.communes.create({name: 'EL TABO ', sil_code: '521'})
r05.communes.create({name: 'HIJUELAS', sil_code: '522'})
r05.communes.create({name: 'ISLA DE PASCUA', sil_code: '523'})
r05.communes.create({name: 'JUAN FERNANDEZ', sil_code: '524'})
r05.communes.create({name: 'LA CRUZ ', sil_code: '525'})
r05.communes.create({name: 'LA LIGUA', sil_code: '526'})
r05.communes.create({name: 'NOGALES ', sil_code: '527'})
r05.communes.create({name: 'OLMUE', sil_code: '528'})
r05.communes.create({name: 'PANQUEHUE', sil_code: '529'})
r05.communes.create({name: 'PAPUDO', sil_code: '530'})
r05.communes.create({name: 'PETORCA ', sil_code: '531'})
r05.communes.create({name: 'PUCHUNCAVI', sil_code: '532'})
r05.communes.create({name: 'PUTAENDO', sil_code: '533'})
r05.communes.create({name: 'QUINTERO', sil_code: '534'})
r05.communes.create({name: 'RINCONADA', sil_code: '535'})
r05.communes.create({name: 'SAN ESTEBAN', sil_code: '536'})
r05.communes.create({name: 'SANTA MARIA', sil_code: '537'})
r05.communes.create({name: 'SANTO DOMINGO', sil_code: '538'})
r05.communes.create({name: 'EL BELLOTO', sil_code: '539'})
r06.communes.create({name: 'RANCAGUA', sil_code: '601'})
r06.communes.create({name: 'CHIMBARONGO', sil_code: '602'})
r06.communes.create({name: 'MACHALI ', sil_code: '603'})
r06.communes.create({name: 'RENGO', sil_code: '604'})
r06.communes.create({name: 'SAN FERNANDO', sil_code: '605'})
r06.communes.create({name: 'SANTA CRUZ', sil_code: '606'})
r06.communes.create({name: 'COINCO', sil_code: '607'})
r06.communes.create({name: 'GRANEROS', sil_code: '608'})
r06.communes.create({name: 'PEUMO', sil_code: '609'})
r06.communes.create({name: 'SAN VICENTE DE TAGUA TAGUA', sil_code: '610'})
r06.communes.create({name: 'SAN FRANCISCO DE MOSTAZAL', sil_code: '611'})
r06.communes.create({name: 'CHEPICA ', sil_code: '612'})
r06.communes.create({name: 'CODEGUA ', sil_code: '613'})
r06.communes.create({name: 'COLTAUCO', sil_code: '614'})
r06.communes.create({name: 'DOÑIHUE ', sil_code: '615'})
r06.communes.create({name: 'LA ESTRELLA', sil_code: '616'})
r06.communes.create({name: 'LAS CABRAS', sil_code: '617'})
r06.communes.create({name: 'LITUECHE', sil_code: '618'})
r06.communes.create({name: 'LOLOL', sil_code: '619'})
r06.communes.create({name: 'MALLOA', sil_code: '620'})
r06.communes.create({name: 'MARCHIGUE', sil_code: '621'})
r06.communes.create({name: 'NANCAGUA', sil_code: '622'})
r06.communes.create({name: 'NAVIDAD ', sil_code: '623'})
r06.communes.create({name: 'OLIVAR', sil_code: '625'})
r06.communes.create({name: 'PALMILLA', sil_code: '626'})
r06.communes.create({name: 'PAREDONES', sil_code: '627'})
r06.communes.create({name: 'PERALILLO', sil_code: '628'})
r06.communes.create({name: 'PICHIDEGUA', sil_code: '629'})
r06.communes.create({name: 'PICHILEMU', sil_code: '630'})
r06.communes.create({name: 'PLACILLA', sil_code: '631'})
r06.communes.create({name: 'PUMANQUE', sil_code: '632'})
r06.communes.create({name: 'QUINTA DE TILCOCO', sil_code: '633'})
r06.communes.create({name: 'REQUINOA', sil_code: '634'})
r07.communes.create({name: 'CAUQUENES', sil_code: '701'})
r07.communes.create({name: 'CONSTITUCION', sil_code: '702'})
r07.communes.create({name: 'CURICO', sil_code: '703'})
r07.communes.create({name: 'LINARES ', sil_code: '704'})
r07.communes.create({name: 'PARRAL', sil_code: '705'})
r07.communes.create({name: 'TALCA', sil_code: '706'})
r07.communes.create({name: 'CHANCO', sil_code: '707'})
r07.communes.create({name: 'CUREPTO ', sil_code: '708'})
r07.communes.create({name: 'HUALAÑE ', sil_code: '709'})
r07.communes.create({name: 'LICANTEN', sil_code: '710'})
r07.communes.create({name: 'SAN JAVIER', sil_code: '711'})
r07.communes.create({name: 'YERBAS BUENAS', sil_code: '712'})
r07.communes.create({name: 'COLBUN', sil_code: '713'})
r07.communes.create({name: 'EMPEDRADO', sil_code: '714'})
r07.communes.create({name: 'LONGAVI ', sil_code: '715'})
r07.communes.create({name: 'MAULE', sil_code: '716'})
r07.communes.create({name: 'MOLINA', sil_code: '717'})
r07.communes.create({name: 'PELARCO ', sil_code: '718'})
r07.communes.create({name: 'PELLUHUE', sil_code: '719'})
r07.communes.create({name: 'PENCAHUE', sil_code: '720'})
r07.communes.create({name: 'RAUCO', sil_code: '721'})
r07.communes.create({name: 'RETIRO', sil_code: '722'})
r07.communes.create({name: 'RIO CLARO', sil_code: '723'})
r07.communes.create({name: 'ROMERAL ', sil_code: '724'})
r07.communes.create({name: 'SAGRADA FAMILIA ', sil_code: '725'})
r07.communes.create({name: 'SAN CLEMENTE', sil_code: '726'})
r07.communes.create({name: 'SAN RAFAEL', sil_code: '727'})
r07.communes.create({name: 'TENO', sil_code: '728'})
r07.communes.create({name: 'VICHUQUEN', sil_code: '729'})
r07.communes.create({name: 'VILLA ALEGRE', sil_code: '730'})
r08.communes.create({name: 'CONCEPCION', sil_code: '801'})
r08.communes.create({name: 'CHIGUAYANTE', sil_code: '802'})
r08.communes.create({name: 'CHILLAN ', sil_code: '803'})
r08.communes.create({name: 'CORONEL ', sil_code: '804'})
r08.communes.create({name: 'LOS ANGELES', sil_code: '805'})
r08.communes.create({name: 'LOTA', sil_code: '806'})
r08.communes.create({name: 'SAN PEDRO DE LA PAZ ', sil_code: '807'})
r08.communes.create({name: 'TALCAHUANO', sil_code: '808'})
r08.communes.create({name: 'BULNES', sil_code: '809'})
r08.communes.create({name: 'CAÑETE', sil_code: '810'})
r08.communes.create({name: 'EL CARMEN', sil_code: '811'})
r08.communes.create({name: 'LIRQUEN ', sil_code: '812'})
r08.communes.create({name: 'NACIMIENTO', sil_code: '813'})
r08.communes.create({name: 'QUIRIHUE', sil_code: '814'})
r08.communes.create({name: 'SANTA BARBARA', sil_code: '815'})
r08.communes.create({name: 'SAN CARLOS', sil_code: '816'})
r08.communes.create({name: 'TOME', sil_code: '817'})
r08.communes.create({name: 'YUMBEL', sil_code: '818'})
r08.communes.create({name: 'ANTUCO', sil_code: '819'})
r08.communes.create({name: 'ARAUCO', sil_code: '820'})
r08.communes.create({name: 'CABRERO ', sil_code: '821'})
r08.communes.create({name: 'COBQUECURA', sil_code: '822'})
r08.communes.create({name: 'COELEMU ', sil_code: '823'})
r08.communes.create({name: 'COIHUECO', sil_code: '824'})
r08.communes.create({name: 'CONTULMO', sil_code: '825'})
r08.communes.create({name: 'CURANILAHUE', sil_code: '826'})
r08.communes.create({name: 'FLORIDA ', sil_code: '827'})
r08.communes.create({name: 'HUALQUI ', sil_code: '828'})
r08.communes.create({name: 'LAJA', sil_code: '829'})
r08.communes.create({name: 'LEBU', sil_code: '830'})
r08.communes.create({name: 'LOS ALAMOS', sil_code: '831'})
r08.communes.create({name: 'MULCHEN ', sil_code: '832'})
r08.communes.create({name: 'NEGRETE ', sil_code: '833'})
r08.communes.create({name: 'NINHUE', sil_code: '834'})
r08.communes.create({name: 'ÑIQUEN', sil_code: '835'})
r08.communes.create({name: 'PEMUCO', sil_code: '836'})
r08.communes.create({name: 'PENCO', sil_code: '837'})
r08.communes.create({name: 'PINTO', sil_code: '838'})
r08.communes.create({name: 'PORTEZUELO', sil_code: '839'})
r08.communes.create({name: 'QUILACO ', sil_code: '840'})
r08.communes.create({name: 'QUILLECO', sil_code: '841'})
r08.communes.create({name: 'QUILLON ', sil_code: '842'})
r08.communes.create({name: 'RANQUIL ', sil_code: '843'})
r08.communes.create({name: 'SAN FABIAN', sil_code: '844'})
r08.communes.create({name: 'SAN IGNACIO', sil_code: '845'})
r08.communes.create({name: 'SAN NICOLAS', sil_code: '846'})
r08.communes.create({name: 'SAN ROSENDO', sil_code: '847'})
r08.communes.create({name: 'SANTA JUANA', sil_code: '848'})
r08.communes.create({name: 'TIRUA', sil_code: '849'})
r08.communes.create({name: 'TREHUACO', sil_code: '850'})
r08.communes.create({name: 'TUCAPEL ', sil_code: '851'})
r08.communes.create({name: 'ÑUBLE', sil_code: '852'})
r09.communes.create({name: 'ANGOL', sil_code: '901'})
r09.communes.create({name: 'LAUTARO ', sil_code: '902'})
r09.communes.create({name: 'PADRE LAS CASAS ', sil_code: '903'})
r09.communes.create({name: 'TEMUCO', sil_code: '904'})
r09.communes.create({name: 'VICTORIA', sil_code: '905'})
r09.communes.create({name: 'VILLARRICA', sil_code: '906'})
r09.communes.create({name: 'COLLIPULLI', sil_code: '907'})
r09.communes.create({name: 'GORBEA', sil_code: '908'})
r09.communes.create({name: 'NUEVA TOLTEN', sil_code: '909'})
r09.communes.create({name: 'PITRUFQUEN', sil_code: '910'})
r09.communes.create({name: 'TOLTEN', sil_code: '911'})
r09.communes.create({name: 'TRAIGUEN', sil_code: '912'})
r09.communes.create({name: 'CARAHUE ', sil_code: '913'})
r09.communes.create({name: 'CUNCO', sil_code: '914'})
r09.communes.create({name: 'CURACAUTIN', sil_code: '915'})
r09.communes.create({name: 'CURARREHUE', sil_code: '916'})
r09.communes.create({name: 'ERCILLA ', sil_code: '917'})
r09.communes.create({name: 'FREIRE', sil_code: '918'})
r09.communes.create({name: 'GALVARINO', sil_code: '919'})
r09.communes.create({name: 'LONCOCHE', sil_code: '920'})
r09.communes.create({name: 'LONQUIMAY', sil_code: '921'})
r09.communes.create({name: 'LOS SAUCES', sil_code: '922'})
r09.communes.create({name: 'LUMACO', sil_code: '923'})
r09.communes.create({name: 'MELIPEUCO', sil_code: '924'})
r09.communes.create({name: 'NUEVA IMPERIAL', sil_code: '925'})
r09.communes.create({name: 'PERQUENCO', sil_code: '926'})
r09.communes.create({name: 'PUCON', sil_code: '927'})
r09.communes.create({name: 'PUREN', sil_code: '928'})
r09.communes.create({name: 'RENAICO ', sil_code: '929'})
r09.communes.create({name: 'SAAVEDRA', sil_code: '930'})
r09.communes.create({name: 'TEODORO SCHMIDT ', sil_code: '931'})
r09.communes.create({name: 'VILCUN', sil_code: '932'})
r10.communes.create({name: 'ANCUD', sil_code: 'A01'})
r10.communes.create({name: 'CASTRO', sil_code: 'A02'})
r10.communes.create({name: 'LA UNION', sil_code: 'A03'})
r10.communes.create({name: 'OSORNO', sil_code: 'A04'})
r10.communes.create({name: 'PUERTO MONTT', sil_code: 'A05'})
r10.communes.create({name: 'PUERTO VARAS', sil_code: 'A06'})
r10.communes.create({name: 'RIO BUENO', sil_code: 'A07'})
r10.communes.create({name: 'VALDIVIA', sil_code: 'A08'})
r10.communes.create({name: 'CALBUCO ', sil_code: 'A09'})
r10.communes.create({name: 'LLANQUIHUE', sil_code: 'A10'})
r10.communes.create({name: 'PANGUIPULLI', sil_code: 'A11'})
r10.communes.create({name: 'PUERTO OCTAY', sil_code: 'A12'})
r10.communes.create({name: 'SAN JOSÉ DE LA MARIQUINA', sil_code: 'A13'})
r10.communes.create({name: 'CHAITEN ', sil_code: 'A14'})
r10.communes.create({name: 'CHONCHI ', sil_code: 'A15'})
r10.communes.create({name: 'COCHAMO ', sil_code: 'A16'})
r10.communes.create({name: 'CORRAL', sil_code: 'A17'})
r10.communes.create({name: 'CURACO DE VELEZ ', sil_code: 'A18'})
r10.communes.create({name: 'DALCAHUE', sil_code: 'A19'})
r10.communes.create({name: 'FRESIA', sil_code: 'A20'})
r10.communes.create({name: 'FRUTILLAR', sil_code: 'A21'})
r10.communes.create({name: 'FUTALEUFU', sil_code: 'A22'})
r10.communes.create({name: 'FUTRONO ', sil_code: 'A23'})
r10.communes.create({name: 'HUALAIHUE', sil_code: 'A24'})
r10.communes.create({name: 'LAGO RANCO', sil_code: 'A25'})
r10.communes.create({name: 'LANCO', sil_code: 'A26'})
r10.communes.create({name: 'LOS LAGOS', sil_code: 'A27'})
r10.communes.create({name: 'LOS MUERMOS', sil_code: 'A28'})
r10.communes.create({name: 'MAFIL', sil_code: 'A29'})
r10.communes.create({name: 'MARIQUINA', sil_code: 'A30'})
r10.communes.create({name: 'MAULLIN ', sil_code: 'A31'})
r10.communes.create({name: 'PAILLACO', sil_code: 'A32'})
r10.communes.create({name: 'PALENA', sil_code: 'A33'})
r10.communes.create({name: 'PUQUELDON', sil_code: 'A34'})
r10.communes.create({name: 'PURRANQUE', sil_code: 'A35'})
r10.communes.create({name: 'PUYEHUE ', sil_code: 'A36'})
r10.communes.create({name: 'QUEILEN ', sil_code: 'A37'})
r10.communes.create({name: 'QUELLON ', sil_code: 'A38'})
r10.communes.create({name: 'QUEMCHI ', sil_code: 'A39'})
r10.communes.create({name: 'QUINCHAO', sil_code: 'A40'})
r10.communes.create({name: 'SAN JUAN DE LA COSTA', sil_code: 'A42'})
r10.communes.create({name: 'SAN PABLO', sil_code: 'A43'})
r11.communes.create({name: 'PUERTO AISEN', sil_code: 'B01'})
r11.communes.create({name: 'COYHAIQUE', sil_code: 'B02'})
r11.communes.create({name: 'COCHRANE', sil_code: 'B03'})
r11.communes.create({name: 'CHILE CHICO', sil_code: 'B04'})
r11.communes.create({name: 'PUERTO CISNES', sil_code: 'B05'})
r11.communes.create({name: 'GUAITECAS', sil_code: 'B06'})
r11.communes.create({name: 'LAGO VERDE', sil_code: 'B07'})
r11.communes.create({name: 'OHIGGINS', sil_code: 'B08'})
r11.communes.create({name: 'RIO IBAÑEZ', sil_code: 'B09'})
r11.communes.create({name: 'TORTEL', sil_code: 'B10'})
r12.communes.create({name: 'PUERTO NATALES', sil_code: 'C01'})
r12.communes.create({name: 'PUNTA ARENAS', sil_code: 'C02'})
r12.communes.create({name: 'ANTARTICA', sil_code: 'C03'})
r12.communes.create({name: 'LAGUNA BLANCA', sil_code: 'C04'})
r12.communes.create({name: 'NAVARINO', sil_code: 'C05'})
r12.communes.create({name: 'PORVENIR', sil_code: 'C06'})
r12.communes.create({name: 'PRIMAVERA', sil_code: 'C07'})
r12.communes.create({name: 'RIO VERDE', sil_code: 'C08'})
r12.communes.create({name: 'SAN GREGORIO', sil_code: 'C09'})
r12.communes.create({name: 'TIMAUKEL', sil_code: 'C10'})
r12.communes.create({name: 'TORRES DEL PAINE', sil_code: 'C11'})
metropolitana.communes.create({name: 'CENTRO', sil_code: 'CEN'})
metropolitana.communes.create({name: 'ESTE', sil_code: 'EST'})
metropolitana.communes.create({name: 'NORTE', sil_code: 'NOR'})
metropolitana.communes.create({name: 'OESTE', sil_code: 'OES'})
metropolitana.communes.create({name: 'SUR', sil_code: 'SUR'})
r00.communes.create({name: 'PROVINCIAS', sil_code: 'XXX'})