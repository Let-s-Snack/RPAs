-- Inserindo dados na tabela Person
INSERT INTO
    Person (
        email,
        name,
        gender,
        password,
        subscription,
        phone,
        id,
        nickname,
        birth_date,
        registration_completed,
        transaction_made
    )
VALUES (
        'ana.silva@example.com',
        'Ana Silva',
        'F',
        'senha789',
        TRUE,
        '11223344556',
        1,
        'ana_silva',
        '1985-03-15',
        TRUE,
        FALSE
    ),
    (
        'carlos.santos@example.com',
        'Carlos Santos',
        'M',
        'senha101',
        FALSE,
        '99887766554',
        2,
        'carlos_s',
        '1990-07-21',
        TRUE,
        FALSE
    ),
    (
        'beatriz.costa@example.com',
        'Beatriz Costa',
        'F',
        'senha202',
        TRUE,
        '98765432100',
        3,
        'bia',
        '1998-11-30',
        FALSE,
        FALSE
    ),
    (
        'marcos.pereira@example.com',
        'Marcos Pereira',
        'M',
        'senha303',
        FALSE,
        '12312312312',
        4,
        'marcao',
        '1978-01-05',
        TRUE,
        FALSE
    ),
    (
        'juliana.rocha@example.com',
        'Juliana Rocha',
        'F',
        'senha404',
        TRUE,
        '11987654321',
        5,
        'juju',
        '1995-02-14',
        TRUE,
        FALSE
    );

-- Inserindo dados na tabela Restriction
INSERT INTO
    Restriction (type, description)
VALUES (
        'Vegetariana',
        'Não consome carne'
    ),
    (
        'Vegana',
        'Não consome produtos de origem animal'
    ),
    (
        'Intolerância à Lactose',
        'Não pode consumir laticínios'
    ),
    (
        'Alergia ao Glúten',
        'Não pode consumir produtos com glúten'
    ),
    (
        'Alergia a Nozes',
        'Não pode consumir nozes ou castanhas'
    ),
    (
        'Pescetariana',
        'Não consome carnes além de frutos do mar'
    ),
    (
        'Alergia à FRutos do Mar',
        'Não consome frutos do mar'
    ),
    (
        'Ovo-Lácteo-Vegetariana',
        'Dieta baseada em ovo, leite e outros alimentos que não sejam de origem animal'
    );

-- Inserindo dados na tabela Ingredient
INSERT INTO
    ingredient (
        name,
        is_deleted,
        description,
        is_updated,
        transaction_made
    )
VALUES (
        'Ovo',
        False,
        'Ingrediente básico para várias receitas',
        False,
        True
    ),
    (
        'Tomate',
        False,
        'Ingrediente fresco utilizado em saladas e molhos',
        False,
        True
    ),
    (
        'Leite',
        False,
        'Laticínio usado em diversas receitas',
        False,
        True
    ),
    (
        'Farinha de Trigo',
        False,
        'Ingrediente base para pães e bolos',
        False,
        True
    ),
    (
        'Nozes',
        False,
        'Ingrediente rico em proteínas e gorduras saudáveis',
        False,
        True
    ),
    (
        'Manteiga',
        false,
        'Produto derivado do leite, ideal para cozinhar e assar',
        false,
        true
    ),
    (
        'Manjericão',
        false,
        'Erva aromática usada em molhos e pratos italianos',
        false,
        true
    ),
    (
        'Filé de Peixe',
        false,
        'Peixe sem espinhas, pronto para grelhar ou assar',
        false,
        true
    ),
    (
        'Arroz Branco',
        false,
        'Grão básico e versátil na culinária global',
        false,
        true
    ),
    (
        'Alho',
        false,
        'Bulbo aromático usado como tempero em diversas receitas',
        false,
        true
    ),
    (
        'Azeite',
        false,
        'Óleo extraído de azeitonas, ideal para cozinhar e temperar',
        false,
        true
    ),
    (
        'Sal',
        false,
        'Condimento essencial para realçar o sabor dos alimentos',
        false,
        true
    ),
    (
        'Pimenta do Reino',
        false,
        'Especiaria popular, usada para dar picância',
        false,
        true
    ),
    (
        'Pimenta',
        false,
        'Fruto picante usado em pratos variados',
        false,
        true
    ),
    (
        'Alecrim',
        false,
        'Erva aromática, ótima para carnes e assados',
        false,
        true
    ),
    (
        'Cenoura',
        false,
        'Raiz comestível, rica em betacaroteno',
        false,
        true
    ),
    (
        'Cebola',
        false,
        'Ingrediente básico em refogados e ensopados',
        false,
        true
    ),
    (
        'Cebolinha',
        false,
        'Erva usada para decorar e temperar pratos',
        false,
        true
    ),
    (
        'Brócolis',
        false,
        'Vegetal rico em fibras e nutrientes',
        false,
        true
    ),
    (
        'Batata',
        false,
        'Tubérculo versátil, usado de várias formas na culinária',
        false,
        true
    ),
    (
        'Couve-flor',
        false,
        'Vegetal branco usado em sopas e cozidos',
        false,
        true
    ),
    (
        'Água',
        false,
        'Elemento essencial, usado no preparo de alimentos',
        false,
        true
    ),
    (
        'Pimentão Verde',
        false,
        'Variedade de pimentão, de sabor suave',
        false,
        true
    ),
    (
        'Pimentão Vermelho',
        false,
        'Pimentão doce e de coloração vibrante',
        false,
        true
    ),
    (
        'Milho Verde',
        false,
        'Grãos doces e crocantes, consumidos cozidos ou em saladas',
        false,
        true
    ),
    (
        'Queijo Mussarela',
        false,
        'Queijo suave, usado em pizzas e massas',
        false,
        true
    ),
    (
        'Ervilha',
        false,
        'Leguminosa pequena e doce, usada em guarnições',
        false,
        true
    ),
    (
        'Massa de Lasanha',
        false,
        'Folhas de massa para montar lasanhas',
        false,
        true
    ),
    (
        'Salsinha',
        false,
        'Erva aromática para temperar e decorar pratos',
        false,
        true
    ),
    (
        'Tomate Pelado',
        false,
        'Tomates sem pele, prontos para molho',
        false,
        true
    ),
    (
        'Ricota',
        false,
        'Queijo fresco, leve e cremoso',
        false,
        true
    ),
    (
        'Noz-moscada',
        false,
        'Especiaria aromática, usada em molhos e doces',
        false,
        true
    ),
    (
        'Bacon',
        false,
        'Carne suína defumada, usada como complemento',
        false,
        true
    ),
    (
        'Creme de Leite',
        false,
        'Líquido cremoso usado em molhos e sobremesas',
        false,
        true
    ),
    (
        'Smoothie de Frutas',
        false,
        'Bebida refrescante feita com frutas',
        false,
        true
    ),
    (
        'Banana',
        false,
        'Fruta tropical, fonte de potássio',
        false,
        true
    ),
    (
        'Morangos',
        false,
        'Frutas vermelhas doces e suculentas',
        false,
        true
    ),
    (
        'Pêssego',
        false,
        'Fruta de polpa macia e doce',
        false,
        true
    ),
    (
        'Manga',
        false,
        'Fruta tropical, doce e suculenta',
        false,
        true
    ),
    (
        'Iogurte',
        false,
        'Derivado do leite, consumido puro ou com frutas',
        false,
        true
    ),
    (
        'Gelo',
        false,
        'Água congelada, usada para resfriar bebidas',
        false,
        true
    ),
    (
        'Espaguete',
        false,
        'Massa longa e fina, tradicional na Itália',
        false,
        true
    ),
    (
        'Queijo Parmesão',
        false,
        'Queijo curado, de sabor intenso',
        false,
        true
    ),
    (
        'Margarina',
        false,
        'Alternativa vegetal à manteiga',
        false,
        true
    ),
    (
        'Cheiro Verde',
        false,
        'Mistura de salsinha e cebolinha',
        false,
        true
    ),
    (
        'Polvilho Azedo',
        false,
        'Ingrediente essencial para pães de queijo',
        false,
        true
    ),
    (
        'Gengibre',
        false,
        'Raiz aromática usada para tempero e chá',
        false,
        true
    ),
    (
        'Mostarda em Grão Preta',
        false,
        'Sementes picantes usadas em conservas',
        false,
        true
    ),
    (
        'Semente de Cominho',
        false,
        'Especiaria aromática para pratos indianos',
        false,
        true
    ),
    (
        'Semente de Endro',
        false,
        'Semente usada para aromatizar picles',
        false,
        true
    ),
    (
        'Erva-doce',
        false,
        'Semente doce, usada em chás e doces',
        false,
        true
    ),
    (
        'Cravos',
        false,
        'Especiaria aromática usada em doces e chás',
        false,
        true
    ),
    (
        'Feno Grego em Pó',
        false,
        'Especiaria forte usada em curry',
        false,
        true
    ),
    (
        'Curry em Pó',
        false,
        'Mistura de especiarias para pratos indianos',
        false,
        true
    ),
    (
        'Páprica Picante',
        false,
        'Especiaria vermelha e picante',
        false,
        true
    ),
    (
        'Leite de Coco',
        false,
        'Leite vegetal usado em pratos tropicais',
        false,
        true
    ),
    (
        'Berinjela',
        false,
        'Vegetal roxo, ideal para grelhar',
        false,
        true
    ),
    (
        'Jilós',
        false,
        'Fruto amargo, consumido cozido ou frito',
        false,
        true
    ),
    (
        'Cenouras Mini',
        false,
        'Cenouras pequenas e crocantes',
        false,
        true
    ),
    (
        'Abobrinha',
        false,
        'Vegetal leve, usado em grelhados',
        false,
        true
    ),
    (
        'Coentro',
        false,
        'Erva de sabor marcante',
        false,
        true
    ),
    (
        'Açúcar',
        false,
        'Ingrediente essencial para doces',
        false,
        true
    ),
    (
        'Essência de Baunilha',
        false,
        'Aroma usado em doces e bolos',
        false,
        true
    ),
    (
        'Fermento em Pó',
        false,
        'Agente levedante para bolos',
        false,
        true
    ),
    (
        'Abacate',
        false,
        'Fruto cremoso e nutritivo',
        false,
        true
    ),
    (
        'Alho Poró',
        false,
        'Vegetal usado em sopas e quiches',
        false,
        true
    ),
    (
        'Pimentão Laranja',
        false,
        'Variedade doce e colorida',
        false,
        true
    ),
    (
        'Cogumelos Champignon',
        false,
        'Cogumelos usados em molhos',
        false,
        true
    ),
    (
        'Manjericão Seco',
        false,
        'Versão desidratada da erva fresca',
        false,
        true
    ),
    (
        'Alho em Pó',
        false,
        'Condimento para temperos secos',
        false,
        true
    ),
    (
        'Sal Marinho',
        false,
        'Sal natural, rico em minerais',
        false,
        true
    ),
    (
        'Arroz Arbóreo',
        false,
        'Arroz italiano usado em risotos',
        false,
        true
    ),
    (
        'Vinho Branco',
        false,
        'Bebida usada em receitas gourmet',
        false,
        true
    ),
    (
        'Caldo de Legumes',
        false,
        'Base líquida para sopas e risotos',
        false,
        true
    ),
    (
        'Filés de Frango',
        false,
        'Peito de frango desossado',
        false,
        true
    ),
    (
        'Farinha de Rosca',
        false,
        'Usada para empanar alimentos',
        false,
        true
    ),
    (
        'Molho de Tomate',
        false,
        'Base para massas e pizzas',
        false,
        true
    ),
    (
        'Orégano',
        false,
        'Erva seca, perfeita para pizzas e molhos',
        false,
        true
    ),
    (
        'Óleo de Girassol',
        false,
        'Óleo leve, ideal para frituras e saladas',
        false,
        true
    ),
    (
        'Peito de Frango',
        false,
        'Corte magro, versátil para grelhar ou assar',
        false,
        true
    ),
    (
        'Temperos',
        false,
        'Mistura de especiarias para realçar sabores',
        false,
        true
    ),
    (
        'Tortilhas',
        false,
        'Massa fina, usada em tacos e wraps',
        false,
        true
    ),
    (
        'Alface',
        false,
        'Folha verde usada em saladas e sanduíches',
        false,
        true
    ),
    (
        'Palmito',
        false,
        'Produto de palmeira, ideal em saladas e pratos quentes.',
        false,
        true
    ),
    (
        'Farinha integral',
        false,
        'Farinha feita com grãos inteiros, rica em fibras.',
        false,
        true
    ),
    (
        'Frutas',
        false,
        'Mistura de frutas frescas, essenciais para uma dieta saudável.',
        false,
        true
    ),
    (
        'Queijo',
        false,
        'Queijo cremoso, ideal para sanduíches e pratos quentes.',
        false,
        true
    ),
    (
        'Molho',
        false,
        'Molho saboroso, ideal para saladas e pratos diversos.',
        false,
        true
    ),
    (
        'Lentilhas',
        false,
        'Leguminosas ricas em proteínas, ótimas em sopas e saladas.',
        false,
        true
    ),
    (
        'Espinafre',
        false,
        'Folha verde rica em nutrientes, ideal em saladas e refogados.',
        false,
        true
    ),
    (
        'Cuscuz',
        false,
        'Grão de trigo, excelente como acompanhamento e em saladas frias.',
        false,
        true
    ),
    (
        'Uvas-passas',
        false,
        'Frutas secas doces, ótimas para sobremesas e saladas.',
        false,
        true
    ),
    (
        'Amêndoas',
        false,
        'Nozes crocantes, ótimas para lanches e receitas doces.',
        false,
        true
    ),
    (
        'Abóbora',
        false,
        'Legume doce, usado em sopas, purês e pratos assados.',
        false,
        true
    ),
    (
        'Alface',
        false,
        'Folha crocante, ideal para saladas frescas.',
        false,
        true
    ),
    (
        'Croutons',
        false,
        'Cubos de pão tostados, ótimos para adicionar crocância a saladas.',
        false,
        true
    ),
    (
        'Maionese',
        false,
        'Condimento cremoso, perfeito para sanduíches e saladas.',
        false,
        true
    ),
    (
        'Mostarda',
        false,
        'Condimento picante, utilizado em sanduíches e molhos.',
        false,
        true
    ),
    (
        'Limão',
        false,
        'Fruta cítrica, excelente para temperar e fazer sucos refrescantes.',
        false,
        true
    ),
    (
        'Frango',
        false,
        'Carne magra, versátil e rica em proteínas para diversas receitas.',
        false,
        true
    ),
    (
        'Pão',
        false,
        'Alimento básico, ideal para sanduíches e acompanhamentos variados.',
        false,
        true
    ),
    (
        'Massa',
        false,
        'Base para uma variedade de pratos, de massas a lasanhas deliciosas.',
        false,
        true
    ),
    (
        'Canela',
        false,
        'Especiaria doce, usada em sobremesas e bebidas quentes.',
        false,
        true
    ),
    (
        'Chocolate',
        false,
        'Delícia doce, perfeita para sobremesas e snacks irresistíveis.',
        false,
        true
    ),
    (
        'Aveia',
        false,
        'Grão saudável, ótimo para cafés da manhã e receitas nutritivas.',
        false,
        true
    ),
    (
        'Abacaxi',
        false,
        'Fruta tropical doce, ideal em sobremesas e saladas refrescantes.',
        false,
        true
    ),
    (
        'Kiwi',
        false,
        'Fruta exótica, rica em vitamina C, perfeita para saladas e smoothies.',
        false,
        true
    ),
    (
        'Farinha de amêndoas',
        false,
        'Alternativa sem glúten, ótima para receitas de confeitaria saudáveis.',
        false,
        true
    ),
    (
        'Óleo',
        false,
        'Óleo de cozinha versátil, utilizado em frituras e refogados.',
        false,
        true
    ),
    (
        'Polvilho doce',
        false,
        'Ingrediente leve e fino, utilizado em pães e receitas sem glúten.',
        false,
        true
    ),
    (
        'Queijo ralado',
        false,
        'Queijo em pedaços pequenos, ideal para gratinar pratos saborosos.',
        false,
        true
    ),
    (
        'Ervas secas',
        false,
        'Mistura de ervas aromáticas, adiciona sabor a diversas receitas.',
        false,
        true
    ),
    (
        'Quinoa',
        false,
        'Grão nutritivo, excelente fonte de proteína e fibras saudáveis.',
        false,
        true
    ),
    (
        'Batata-doce',
        false,
        'Legume doce e nutritivo, ótimo assado ou em purês cremosos.',
        false,
        true
    ),
    (
        'Aveia sem glúten',
        false,
        'Versão sem glúten, perfeita para cafés da manhã e snacks nutritivos.',
        false,
        true
    ),
    (
        'Farinha de arroz',
        false,
        'Farinha sem glúten, ideal para panificação e molhos cremosos.',
        false,
        true
    ),
    (
        'Frutos do mar',
        false,
        'Variedade de peixes e crustáceos, rica em sabor e nutrientes.',
        false,
        true
    ),
    (
        'Macarrão de arroz',
        false,
        'Alternativa sem glúten ao macarrão tradicional, leve e saboroso.',
        false,
        true
    ),
    (
        'Grão-de-bico',
        false,
        'Leguminosa rica em proteínas, base para hummus e saladas.',
        false,
        true
    ),
    (
        'Tahine',
        false,
        'Pasta de gergelim, ideal para molhos e patês saudáveis.',
        false,
        true
    ),
    (
        'Arroz japonês',
        false,
        'Arroz glutinoso, perfeito para sushi e pratos orientais deliciosos.',
        false,
        true
    ),
    (
        'Alga nori',
        false,
        'Alga utilizada em sushi, rica em nutrientes e sabor.',
        false,
        true
    ),
    (
        'Pepino',
        false,
        'Legume crocante, ótimo em saladas e conservas refrescantes.',
        false,
        true
    ),
    (
        'Peixe cru',
        false,
        'Peixe fresco, essencial em pratos como sushi e sashimi deliciosos.',
        false,
        true
    ),
    (
        'Molho de soja sem glúten',
        false,
        'Molho saboroso, ideal para temperar e marinar pratos.',
        false,
        true
    ),
    (
        'Sementes de chia',
        false,
        'Superfood rica em ômega-3, ótima para smoothies e sobremesas.',
        false,
        true
    ),
    (
        'Mel',
        false,
        'Adoçante natural, perfeito para chás e sobremesas doces.',
        false,
        true
    ),
    (
        'Iogurte sem glúten',
        false,
        'Iogurte cremoso, ideal para smoothies e receitas saudáveis.',
        false,
        true
    ),
    (
        'Castanha',
        false,
        'Nozes saborosas, ótimas para lanches e receitas doces.',
        false,
        true
    ),
    (
        'Cacau em pó',
        false,
        'Ingrediente para sobremesas, rico em antioxidantes e sabor.',
        false,
        true
    ),
    (
        'Leite Vegetal',
        false,
        'Alternativa ao leite de vaca, ideal para bebidas e receitas.',
        false,
        true
    ),
    (
        'Pão Integral',
        false,
        'Pão nutritivo, feito com grãos integrais e saborosos.',
        false,
        true
    ),
    (
        'Pão Sírio',
        false,
        'Pão leve, perfeito para wraps e sanduíches rápidos.',
        false,
        true
    ),
    (
        'Cogumelo',
        false,
        'Fungo saboroso, ótimo em refogados e sopas quentes.',
        false,
        true
    ),
    (
        'Tortillas de Milho',
        false,
        'Base para tacos e wraps, feitas de milho fresquinho.',
        false,
        true
    ),
    (
        'Cebola Roxa',
        false,
        'Cebola adocicada, ideal para saladas e pratos cozidos.',
        false,
        true
    ),
    (
        'Pasta de Amendoim',
        false,
        'Creme saboroso, excelente em torradas e receitas doces.',
        false,
        true
    ),
    (
        'Tapioca',
        false,
        'Ingrediente versátil, usado em receitas doces e salgadas.',
        false,
        true
    ),
    (
        'Açúcar Mascavo',
        false,
        'Adoçante natural, com sabor rico e textura úmida.',
        false,
        true
    ),
    (
        'Tofu',
        false,
        'Fonte de proteína vegetal, ideal em pratos asiáticos e saladas.',
        false,
        true
    ),
    (
        'Feijão',
        false,
        'Leguminosa nutritiva, base de muitas receitas tradicionais.',
        false,
        true
    ),
    (
        'Massa de Pizza Vegana',
        false,
        'Massa saborosa, perfeita para pizzas sem ingredientes animais.',
        false,
        true
    ),
    (
        'Farinha de Linhaça',
        false,
        'Farinha rica em fibras, ótima para panificação saudável.',
        false,
        true
    ),
    (
        'Óleo de Coco',
        false,
        'Óleo versátil, ideal para cozinhar e receitas de beleza.',
        false,
        true
    ),
    (
        'Maçã',
        false,
        'Fruta crocante e doce, perfeita para lanches e sobremesas.',
        false,
        true
    ),
    (
        'Hummus',
        false,
        'Pasta de grão-de-bico, ideal como aperitivo ou lanche saudável.',
        false,
        true
    ),
    (
        'Vegetais',
        false,
        'Mistura de legumes frescos, essenciais para uma dieta balanceada.',
        false,
        true
    ),
    (
        'Camarão',
        false,
        'Fruto do mar delicado, excelente em pratos de massa e risotos.',
        false,
        true
    ),
    (
        'Salmão',
        false,
        'Peixe rico em ômega-3, ideal grelhado ou em sushi.',
        false,
        true
    ),
    (
        'Molho de soja',
        false,
        'Condimento salgado, perfeito para temperar pratos orientais.',
        false,
        true
    ),
    (
        'Atum',
        false,
        'Peixe enlatado prático, ótimo em saladas e sanduíches.',
        false,
        true
    ),
    (
        'Molho de iogurte',
        false,
        'Molho cremoso, ideal para saladas e pratos variados.',
        false,
        true
    ),
    (
        'Massa de pizza',
        false,
        'Base para pizzas, pode ser feita em casa ou comprada pronta.',
        false,
        true
    ),
    (
        'Mariscos',
        false,
        'Frutos do mar saborosos, ideais em pratos de frutos do mar.',
        false,
        true
    ),
    (
        'Sardinha enlatada',
        false,
        'Peixe enlatado prático, ótimo para lanches e saladas.',
        false,
        true
    ),
    (
        'Torrada',
        false,
        'Pão tostado, perfeito para acompanhar patês e spreads.',
        false,
        true
    ),
    (
        'Caldo de peixe',
        false,
        'Base para sopas e risotos, rico em sabor.',
        false,
        true
    ),
    (
        'Moranga',
        false,
        'Variedade de abóbora, ideal em sopas e purês.',
        false,
        true
    ),
    (
        'Farinha de grão-de-bico',
        false,
        'Farinha rica em proteínas, ótima para panificação e frituras.',
        false,
        true
    ),
    (
        'Tomate seco',
        false,
        'Tomate desidratado, perfeito para adicionar sabor a pratos.',
        false,
        true
    ),
    (
        'Fubá',
        false,
        'Farinha de milho, usada em polentas e bolos.',
        false,
        true
    ),
    (
        'Frutas vermelhas',
        false,
        'Frutas doces e nutritivas, ideais para sobremesas e smoothies.',
        false,
        true
    ),
    (
        'Amido de milho',
        false,
        'Espessante natural, ideal para molhos e receitas cremosas.',
        false,
        true
    ),
    (
        'Probióticos',
        false,
        'Suplementos saudáveis para a flora intestinal.',
        false,
        true
    ),
    (
        'Chocolate sem lactose',
        false,
        'Delícia doce para intolerantes à lactose.',
        false,
        true
    ),
    (
        'Presunto',
        false,
        'Carne suína curada, utilizada em sanduíches e pratos frio',
        false,
        true
    ),
    (
        'Catupiry',
        false,
        'queijo muito cremoso, usado como complemento em variadas receitas da culinária brasileira',
        false,
        true
    ),
    (
        'Bicarbonato de sódio',
        false,
        'é um sal de características anfóteras usado, principalmente, na culinária e na medicina',
        false,
        true
    ),
    (
        'Salsão',
        false,
        'É uma planta aromática comestível da família das apiáceas.',
        false,
        true
    ),
    (
        'Carne',
        false,
        'É o tecido muscular de animais, que pode ser consumido como alimento.',
        false,
        true
    ),
    (
        'Feijão Preto',
        false,
        'Feijão com grãos de cor preta e formato de rim.',
        false,
        true
    ),
    (
        'Feijão Preto',
        false,
        'É uma especiaria de sabor marcante e aroma levemente adocicado e terroso.',
        false,
        true
    ),
    (
        'Feijão Preto',
        false,
        'Legumes variados (ex: cenoura, abobrinha, etc.)',
        false,
        true
    ),
    (
        'Leite Condensado',
        false,
        'produto obtido pela eliminação parcial da água do leite e consequente adição de açúcar',
        false,
        true
    ),
    (
        'Azeitona',
        false,
        'é um fruto produzido pela árvore conhecida como oliveira, varia de cor entre verde, preta ou rosada',
        false,
        true
    ),
    (
        'Panqueca',
        false,
        'tipo de massa frita em pouco óleo sobre uma chapa ou frigideira quente',
        false,
        true
    ),
    (
        'Leite Condensado sem Lactose',
        false,
        'uma versão do tradicional leite condensado, mas é formulado para ser livre de lactose',
        false,
        true
    ),
    (
        'Margarina sem Lactose',
        false,
        ' Um produto sem lactose e feito com ingredientes selecionados',
        false,
        true
    ),
    (
        'Óleo Vegetal',
        false,
        'O óleo vegetal é uma gordura extraída de plantas formada por triglicerídio.',
        false,
        true
    ),
    (
        'Laranja',
        false,
        'apresentam sabor adocicado, aroma característico e são ricas em suco',
        false,
        true
    ),
    (
        'Coco Ralado',
        false,
        ' FEITO A PARTIR DA POLPA DE COCO PARCIALMENTE DESENGORDURADA.',
        false,
        true
    ),
    (
        'Chá de Lactobacilos',
        false,
        'Um tipo de microrganismo responsável pelo ácido lático',
        false,
        true
    ),
    (
        'Vagem',
        false,
        ' um fruto da família Fabaceae ou Leguminosae consumido imaturo.',
        false,
        true
    ),
    (
        'Catanha de Caju',
        false,
        'Castanha torrada e levemente salgada, sabor rico e textura crocante ',
        false,
        true
    ),
    (
        'Caju',
        false,
        ' constituído de duas partes: a castanha  e o pedúnculo floral,',
        false,
        true
    ),
    (
        'Leite Condensado Sem Lactose',
        false,
        'Leite condensado feito sem lactose, ideal para sobremesas.',
        false,
        true
    ),
    (
        'Margarina Sem Lactose',
        false,
        'Margarina sem lactose, substituta da manteiga, ótima para receitas.',
        false,
        true
    ),
    (
        'Chocolate Granulado Sem Lactose',
        false,
        'Chocolate granulado sem lactose, utilizado em coberturas e doces.',
        false,
        true
    ),
    (
        'Queijo Vegano Ralado',
        false,
        'Queijo ralado feito à base de ingredientes vegetais, ideal para veganos.',
        false,
        true
    ),
    (
        'Azeite de Oliva',
        false,
        'Óleo extraído das azeitonas, muito utilizado na culinária.',
        false,
        true
    ),
    (
        'Vinagre de Arroz',
        false,
        'Vinagre suave feito a partir de arroz, muito usado na culinária asiática.',
        false,
        true
    ),
    (
        'Parmesão Ralado',
        false,
        'Queijo parmesão ralado.',
        false,
        true
    ),
    (
        'Farinha de Mandioca',
        false,
        'Farinha feita de mandioca',
        false,
        true
    );

UPDATE ingredient set transaction_made = false;

-- Inserindo dados na tabela Recipe
INSERT INTO
    Recipe (
        name,
        is_deleted,
        image_url,
        steps,
        is_updated,
        transaction_made,
        description
    )
VALUES

(
    'Omelete',
    False,
    'https://exemplo.com/imagemomelete.jpg',
    '1. Quebre os ovos;2. Bata os ovos com sal;3. Aqueça a frigideira;4. Despeje os ovos e cozinhe até dourar',
    False,
    false,
    'Receita simples e rápida de omelete'
),
(
    'Salada de Tomate',
    False,
    'https://exemplo.com/imagem_salada_de_tomate.jpg',
    '1. Lave os tomates;2. Corte os tomates em fatias;3. Tempere com azeite e sal;4. Misture e sirva',
    False,
    false,
    'Salada fresca com tomates e temperos'
),
(
    'Bolo de Nozes',
    False,
    'https://exemplo.com/imagem_bolo_de_nozes.jpg',
    '1. Bata os ovos com açúcar;2. Adicione as nozes trituradas;3. Misture bem e coloque na forma;4. Asse no forno por 30 minutos',
    False,
    false,
    'Bolo feito com nozes, sem glúten'
),
(
    'Pão de Forma',
    False,
    'https://exemplo.com/imagem_pao_de_forma.jpg',
    '1. Misture a farinha e o fermento;2. Adicione a água morna e sove;3. Deixe a massa descansar;4. Asse o pão no forno',
    False,
    false,
    'Pão macio feito com farinha de trigo'
),
(
    'Panqueca',
    False,
    'https://exemplo.com/imagem_panqueca.jpg',
    '1. Misture o leite, ovos e farinha;2. Aqueça uma frigideira;3. Despeje a massa e cozinhe até dourar;4. Vire e cozinhe o outro lado',
    False,
    false,
    'Receita fácil de panqueca com leite e ovos'
),
(
    'Bolo de Laranja sem Lactose',
    False,
    'https://exemplo.com/imagem_bolo_laranja.jpg',
    '1. Misture os ingredientes secos; 2. Adicione o suco de laranja, ovos e óleo; 3. Asse a 180°C por 40 minutos.',
    False,
    false,
    'Bolo de laranja fofinho e sem lactose, ideal para lanches ou café da manhã.'
),
(
    'Panqueca de Banana sem Lactose',
    False,
    'https://exemplo.com/imagem_panqueca_banana.jpg',
    '1. Amasse as bananas; 2. Misture os ovos e a aveia; 3. Frite em fogo médio até dourar.',
    False,
    false,
    'Panquecas saudáveis de banana sem lactose, perfeitas para o café da manhã.'
),
(
    'Risoto de Cogumelos sem Lactose',
    False,
    'https://exemplo.com/imagem_risoto_cogumelos.jpg',
    '1. Refogue cebola e alho; 2. Adicione arroz arbóreo e cogumelos; 3. Cozinhe com caldo de legumes até o arroz ficar macio.',
    False,
    false,
    'Risoto cremoso feito sem manteiga ou queijo, ideal para intolerantes à lactose.'
),
(
    'Pão de Queijo Vegano',
    False,
    'https://exemplo.com/imagem_pao_queijo_vegano.jpg',
    '1. Misture polvilho, batata cozida e óleo; 2. Forme bolinhas; 3. Asse até dourar.',
    False,
    false,
    'Delicioso pão de queijo sem leite ou derivados, feito à base de batata.'
),
(
    'Sorvete de Banana e Cacau',
    False,
    'https://exemplo.com/imagem_sorvete_banana.jpg',
    '1. Congele bananas maduras; 2. Bata no processador com cacau em pó; 3. Sirva imediatamente.',
    False,
    false,
    'Sorvete cremoso e natural feito apenas com bananas e cacau, sem lactose.'
),
(
    'Torta de Maçã sem Lactose',
    False,
    'https://exemplo.com/imagem_torta_maca.jpg',
    '1. Prepare a massa com farinha, água e óleo; 2. Recheie com maçãs e açúcar; 3. Asse até dourar.',
    False,
    false,
    'Torta clássica de maçã adaptada para intolerantes à lactose.'
),
(
    'Pudim de Coco sem Lactose',
    False,
    'https://exemplo.com/imagem_pudim_coco.jpg',
    '1. Misture leite de coco, amido de milho e açúcar; 2. Cozinhe até engrossar; 3. Refrigere antes de servir.',
    False,
    false,
    'Pudim cremoso feito com leite de coco, sem adição de leite ou derivados.'
),
(
    'Brownie sem Lactose',
    False,
    'https://exemplo.com/imagem_brownie_sem_lactose.jpg',
    '1. Misture farinha, cacau e açúcar; 2. Adicione óleo e ovos; 3. Asse a 180°C por 25 minutos.',
    False,
    false,
    'Brownie de chocolate rico e sem lactose, perfeito para sobremesas.'
),
(
    'Pizza sem Lactose',
    False,
    'https://exemplo.com/imagem_pizza_sem_lactose.jpg',
    '1. Prepare a massa com farinha e fermento; 2. Recheie com molho de tomate e vegetais; 3. Asse até dourar.',
    False,
    false,
    'Pizza deliciosa sem queijo, perfeita para intolerantes à lactose.'
),
(
    'Iogurte de Coco Caseiro',
    False,
    'https://exemplo.com/imagem_iogurte_coco.jpg',
    '1. Misture leite de coco com probióticos; 2. Deixe fermentar por 24 horas; 3. Refrigere antes de consumir.',
    False,
    false,
    'Iogurte caseiro cremoso e saudável, feito com leite de coco.'
),
(
    'Mousse de Chocolate sem Lactose',
    False,
    'https://exemplo.com/imagem_mousse_chocolate.jpg',
    '1. Derreta chocolate sem lactose; 2. Misture com leite de coco e leve à geladeira.',
    False,
    false,
    'Mousse leve e aerado feito com leite de coco e chocolate sem lactose.'
),
(
    'Empadão de Palmito sem Lactose',
    False,
    'https://exemplo.com/imagem_empadao_palmito.jpg',
    '1. Prepare a massa com farinha, água e óleo; 2. Recheie com palmito e vegetais; 3. Asse até dourar.',
    False,
    false,
    'Empadão saboroso sem lactose, recheado com palmito.'
),
(
    'Leite Condensado Vegano',
    False,
    'https://exemplo.com/imagem_leite_condensado.jpg',
    '1. Cozinhe leite de coco com açúcar até engrossar; 2. Deixe esfriar antes de usar.',
    False,
    false,
    'Versão vegana de leite condensado, ideal para sobremesas sem lactose.'
),
(
    'Creme de Abóbora sem Lactose',
    False,
    'https://exemplo.com/imagem_creme_abobora.jpg',
    '1. Cozinhe abóbora com caldo de legumes; 2. Bata no liquidificador; 3. Sirva com temperos a gosto.',
    False,
    false,
    'Sopa cremosa de abóbora sem a necessidade de creme de leite ou manteiga.'
),
(
    'Quiche de Espinafre sem Lactose',
    False,
    'https://exemplo.com/imagem_quiche_espinafre.jpg',
    '1. Prepare a massa com farinha e óleo; 2. Recheie com espinafre e ovos; 3. Asse até firmar.',
    False,
    false,
    'Quiche saborosa feita sem leite, com recheio leve de espinafre.'
),
(
    'Bolo de Cenoura sem Lactose',
    False,
    'https://exemplo.com/imagem_bolo_cenoura.jpg',
    '1. Bata cenouras com ovos, óleo e farinha; 2. Asse até dourar; 3. Cubra com calda de chocolate sem lactose.',
    False,
    false,
    'Bolo clássico de cenoura, adaptado para intolerantes à lactose.'
),
(
    'Pão Integral sem Lactose',
    False,
    'https://exemplo.com/imagem_pao_integral.jpg',
    '1. Misture farinha integral, fermento e água; 2. Sove a massa e deixe crescer; 3. Asse até dourar.',
    False,
    false,
    'Pão caseiro integral sem lactose, perfeito para o café da manhã ou lanches.'
),
(
    'Salada de Frutas com Leite de Coco',
    False,
    'https://exemplo.com/imagem_salada_frutas.jpg',
    '1. Pique frutas variadas; 2. Misture com leite de coco; 3. Sirva gelado.',
    False,
    false,
    'Salada de frutas refrescante e cremosa, sem necessidade de iogurte ou leite.'
),
(
    'Brigadeiro sem Lactose',
    False,
    'https://exemplo.com/imagem_brigadeiro.jpg',
    '1. Cozinhe leite condensado vegano com cacau; 2. Enrole as bolinhas; 3. Passe no granulado.',
    False,
    false,
    'Clássico brigadeiro brasileiro feito com leite condensado sem lactose.'
),
(
    'Lasagna de Legumes sem Lactose',
    False,
    'https://exemplo.com/imagem_lasagna_legumes.jpg',
    '1. Monte camadas de massa de lasanha com legumes e molho de tomate; 2. Asse até borbulhar.',
    False,
    false,
    'Lasanha saborosa sem queijo ou creme, recheada de legumes frescos.'
),
(
    'Bolo de Amêndoas',
    False,
    'https://exemplo.com/imagem_bolo_amendoas.jpg',
    '1. Pré-aqueça o forno a 180°C; 2. Em uma tigela, misture a farinha de amêndoas, o fermento e o açúcar; 3. Bata os ovos e adicione a mistura seca aos poucos; 4. Acrescente o óleo e misture até obter uma massa homogênea; 5. Despeje a massa em uma forma untada; 6. Asse por cerca de 40 minutos ou até dourar.',
    False,
    false,
    'Bolo feito à base de farinha de amêndoas, ideal para dietas sem glúten.'
),
(
    'Pão de Queijo',
    False,
    'https://exemplo.com/imagem_pao_queijo.jpg',
    '1. Pré-aqueça o forno a 180°C; 2. Em uma tigela, misture o polvilho com o leite, o óleo e o sal; 3. Bata os ovos e adicione à mistura; 4. Acrescente o queijo ralado e misture até ficar homogêneo; 5. Faça bolinhas com a massa; 6. Asse por 25 minutos ou até ficarem dourados.',
    False,
    false,
    'Pão de queijo tradicional brasileiro, sem glúten, feito com polvilho.'
),
(
    'Macarrão de Arroz com Molho de Tomate',
    False,
    'https://exemplo.com/imagem_macarrao_arroz.jpg',
    '1. Cozinhe o macarrão de arroz conforme as instruções da embalagem; 2. Enquanto isso, aqueça o azeite em uma panela; 3. Adicione alho e cebola picados e refogue até dourar; 4. Acrescente os tomates picados e cozinhe até que formem um molho; 5. Tempere com sal, pimenta e ervas; 6. Escorra o macarrão e misture com o molho.',
    False,
    false,
    'Macarrão de arroz é uma alternativa sem glúten, combinado com molho de tomate fresco.'
),
(
    'Pizza com Massa de Couve-flor',
    False,
    'https://exemplo.com/imagem_pizza_couveflor.jpg',
    '1. Pré-aqueça o forno a 200°C; 2. Triture a couve-flor até obter uma consistência granulada; 3. Cozinhe a couve-flor no micro-ondas por 5 minutos e deixe esfriar; 4. Misture com ovo, queijo e temperos; 5. Modele a massa em uma assadeira; 6. Asse por 15 minutos até dourar; 7. Adicione os toppings de sua preferência e asse novamente por mais 10 minutos.',
    False,
    false,
    'Pizza com base de couve-flor, uma versão sem glúten da pizza tradicional.'
),
(
    'Panquecas de Farinha de Arroz',
    False,
    'https://exemplo.com/imagem_panqueca_arroz.jpg',
    '1. Em uma tigela, misture a farinha de arroz com leite, ovos e sal até formar uma massa lisa; 2. Aqueça uma frigideira antiaderente e unte com óleo; 3. Despeje uma concha da massa e espalhe; 4. Cozinhe por 2-3 minutos de cada lado, até dourar.',
    False,
    false,
    'Panquecas leves e sem glúten feitas com farinha de arroz.'
),
(
    'Salada de Quinoa',
    False,
    'https://exemplo.com/imagem_salada_quinoa.jpg',
    '1. Cozinhe a quinoa em água fervente até ficar macia; 2. Escorra e deixe esfriar; 3. Pique os vegetais de sua escolha (tomate, pepino, cenoura); 4. Misture a quinoa com os vegetais; 5. Tempere com azeite, limão, sal e pimenta a gosto.',
    False,
    false,
    'Salada nutritiva com quinoa, uma alternativa sem glúten para grãos tradicionais.'
),
(
    'Sopa de Batata-doce',
    False,
    'https://exemplo.com/imagem_sopa_batatadoce.jpg',
    '1. Descasque e corte a batata-doce em cubos; 2. Cozinhe em água até que fiquem macias; 3. Bata no liquidificador até formar um creme; 4. Em uma panela, aqueça o azeite e refogue alho e cebola; 5. Adicione o creme de batata-doce, sal e pimenta a gosto; 6. Deixe cozinhar por mais alguns minutos antes de servir.',
    False,
    false,
    'Sopa cremosa de batata-doce, naturalmente sem glúten.'
),
(
    'Cookies de Aveia sem Glúten',
    False,
    'https://exemplo.com/imagem_cookies_aveia.jpg',
    '1. Pré-aqueça o forno a 180°C; 2. Em uma tigela, misture aveia sem glúten, açúcar, ovo e manteiga até formar uma massa; 3. Adicione pedaços de chocolate ou frutas secas, se desejar; 4. Faça pequenas bolinhas com a massa e coloque em uma assadeira; 5. Asse por cerca de 15 minutos ou até dourar.',
    False,
    false,
    'Cookies crocantes feitos com aveia certificada sem glúten.'
),
(
    'Arroz de Frutos do Mar',
    False,
    'https://exemplo.com/imagem_arroz_frutosmar.jpg',
    '1. Cozinhe o arroz até ficar macio; 2. Em uma panela separada, refogue cebola, alho e pimentão no azeite; 3. Adicione os frutos do mar (camarão, lula, mexilhão) e cozinhe por alguns minutos; 4. Misture o arroz com os frutos do mar refogados; 5. Tempere com sal, pimenta e suco de limão.',
    False,
    false,
    'Prato delicioso com arroz e frutos do mar, naturalmente sem glúten.'
),
(
    'Tortas de Batata',
    False,
    'https://exemplo.com/imagem_tortas_batata.jpg',
    '1. Descasque e rale a batata; 2. Misture com ovos, sal e pimenta; 3. Modele em pequenas tortinhas e frite ou asse até ficarem douradas e crocantes.',
    False,
    false,
    'Mini tortas feitas à base de batata, sem glúten.'
),
(
    'Tortas de Batata',
    False,
    'https://exemplo.com/imagem_torta_batata.jpg',
    '1. Cozinhe as batatas até ficarem macias; 2. Amasse as batatas com manteiga e tempere a gosto; 3. Forre uma forma com uma camada de batata; 4. Adicione o recheio de sua preferência; 5. Cubra com mais batata e leve ao forno a 200°C por 25 minutos.',
    False,
    false,
    'Tortas crocantes à base de batata, perfeitas para quem tem intolerância ao glúten.'
),
(
    'Muffins de Cenoura sem Glúten',
    False,
    'https://exemplo.com/imagem_muffins_cenoura.jpg',
    '1. Rale as cenouras e reserve; 2. Misture a farinha de arroz, o açúcar, o fermento e a cenoura ralada; 3. Adicione os ovos e o óleo e misture bem; 4. Despeje em formas de muffin e asse a 180°C por 20 minutos.',
    False,
    false,
    'Deliciosos muffins de cenoura feitos sem glúten.'
),
(
    'Pasta de Grão-de-bico',
    False,
    'https://exemplo.com/imagem_pasta_grao_de_bico.jpg',
    '1. Cozinhe o grão-de-bico até ficar macio; 2. Bata no liquidificador com azeite, alho e limão; 3. Tempere com sal e pimenta a gosto; 4. Sirva com legumes ou torradas sem glúten.',
    False,
    false,
    'Pasta cremosa de grão-de-bico, rica em fibras e perfeita para dietas sem glúten.'
),
(
    'Sushi com Alga Nori',
    False,
    'https://exemplo.com/imagem_sushi_alga_nori.jpg',
    '1. Cozinhe o arroz japonês e deixe esfriar; 2. Espalhe o arroz sobre a folha de alga nori; 3. Adicione recheios como pepino, abacate e peixe cru; 4. Enrole o sushi e corte em fatias; 5. Sirva com molho de soja sem glúten.',
    False,
    false,
    'Sushi leve e sem glúten, ideal para refeições saudáveis.'
),
(
    'Pudim de Chia com Leite de Coco',
    False,
    'https://exemplo.com/imagem_pudim_chia.jpg',
    '1. Misture sementes de chia com leite de coco; 2. Deixe na geladeira por 4 horas ou até atingir a consistência de pudim; 3. Adoce com mel ou xarope de bordo a gosto; 4. Decore com frutas frescas.',
    False,
    false,
    'Pudim saudável feito com chia e leite de coco, ideal para quem tem alergia ao glúten.'
),
(
    'Salada de Frutas com Iogurte Sem Glúten',
    False,
    'https://exemplo.com/imagem_salada_frutas.jpg',
    '1. Corte as frutas de sua preferência; 2. Misture com iogurte sem glúten; 3. Adicione mel ou sementes de chia a gosto; 4. Sirva gelado.',
    False,
    false,
    'Salada fresca e nutritiva com frutas e iogurte sem glúten.'
),
(
    'Curry de Frango sem Glúten',
    False,
    'https://exemplo.com/imagem_curry_frango.jpg',
    '1. Refogue cebola e alho em azeite; 2. Adicione o frango em cubos e cozinhe até dourar; 3. Acrescente curry em pó e leite de coco; 4. Deixe cozinhar até o frango estar bem cozido e o molho engrossar; 5. Sirva com arroz ou quinoa.',
    False,
    false,
    'Prato saboroso de curry de frango sem glúten, com um toque de especiarias.'
),
(
    'Bolinho de Chuva sem Glúten',
    False,
    'https://exemplo.com/imagem_bolinho_chuva.jpg',
    '1. Misture a farinha de arroz, açúcar, fermento e ovos; 2. Frite a massa em óleo quente até dourar; 3. Polvilhe com açúcar e canela antes de servir.',
    False,
    false,
    'Versão sem glúten do clássico bolinho de chuva, crocante e saboroso.'
),
(
    'Creme de Abóbora',
    False,
    'https://exemplo.com/imagem_creme_abobora.jpg',
    '1. Cozinhe abóbora em água até amolecer; 2. Bata no liquidificador com creme de leite e temperos a gosto; 3. Aqueça até obter a consistência desejada; 4. Sirva quente.',
    False,
    false,
    'Creme aveludado de abóbora, sem glúten e perfeito para dias frios.'
),
(
    'Panqueca de Banana',
    False,
    'https://exemplo.com/imagem_panqueca_banana.jpg',
    '1. Amasse bananas maduras; 2. Misture com ovos e um pouco de farinha sem glúten; 3. Cozinhe as panquecas em uma frigideira antiaderente até dourar dos dois lados.',
    False,
    false,
    'Panquecas nutritivas e naturalmente sem glúten, adoçadas com banana.'
),
(
    'Biscoitos de Polvilho',
    False,
    'https://exemplo.com/imagem_biscoitos_polvilho.jpg',
    '1. Misture polvilho doce, água, óleo e sal; 2. Modele os biscoitos e asse a 180°C por 15 minutos ou até dourar.',
    False,
    false,
    'Clássicos biscoitos de polvilho, naturalmente sem glúten e crocantes.'
),
(
    'Lasanha de Berinjela',
    False,
    'https://exemplo.com/imagem_lasanha_berinjela.jpg',
    '1. Fatie as berinjelas; 2. Em uma assadeira, adicione azeite e molho; 3. Faça camadas de berinjela, presunto, queijo e molho; 4. Repita; 5. Cubra com catupiry e asse por 30 min a 180ºC; 6. Gratine.',
    False,
    false,
    'Lasanha feita a base de berinjela.'
),
(
    'Curry de Grão de Bico',
    False,
    'https://exemplo.com/imagem_curry_grao_bico.jpg',
    '1. Aqueça óleo e doure cebola; 2. Adicione temperos e pasta de tomate; 3. Refogue pimentão e cenoura; 4. Junte leite de coco e água, reduza; 5. Acrescente brócolis e grão-de-bico, cozinhe e sirva.',
    False,
    false,
    'Prato com grão-de-bico e vegetais cozidos em molho de leite de coco e especiarias indianas.'
),
(
    'Falafel',
    False,
    'https://exemplo.com/imagem_falafel.jpg',
    '1. Deixe o grão-de-bico de molho por 24h; 2. Seque bem os grãos; 3. Processe com cebola, alho, coentro e salsinha; 4. Misture farinha e bicarbonato; 5. Modele e frite os bolinhos até dourar; 6. Sirva com tahine.',
    False,
    false,
    'Bolinho frito, geralmente de grão-de-bico moído.'
),
(
    'Sopa de Abóbora',
    False,
    'https://exemplo.com/imagem_sopa_abobora.jpg',
    '1. Doure o alho em óleo e adicione cebola; 2. Acrescente a abóbora e batata picadas; 3. Adicione água e caldo de legumes, deixe ferver; 4. Cozinhe até ficarem macias; 5. Bata no liquidificador até virar creme.',
    False,
    false,
    'Creme de abóbora com alho, cebola e gengibre, ideal para dias frios.'
),
(
    'Quiche de Espinafre Light',
    False,
    'https://exemplo.com/imagem_quiche_espinafre_light.jpg',
    '1. Preaqueça o forno a 180ºC; 2. Misture farinha, azeite e sal até formar uma massa; 3. Distribua na forma e asse por 15 min; 4. Refogue espinafre em azeite por 2 min; 5. Misture com ovos, creme de leite, fermento e parmesão; despeje sobre a massa; 6. Asse por mais 20 min.',
    False,
    false,
    'Feito com espinafre, ovos e queijo, assado até dourar, sem a crosta tradicional de farinha.'
),
(
    'Risoto de Cogumelo',
    False,
    'https://exemplo.com/imagem_risoto_cogumelo.jpg',
    '1. Frite alho e cebola no azeite, depois adicione cogumelo, metade do vinho, tomate, salsão e caldo de legumes até amaciar; 2. Coloque o arroz, restante do caldo, vinho, pimenta e sal, mexendo sempre; 3. Adicione creme de leite ou manteiga e parmesão; 4. Sirva com salsinha, cebolinha e mais parmesão; 5. Acompanhe com um bom vinho.',
    False,
    false,
    'Risoto cremoso feito com arroz arbóreo e cogumelos frescos, temperado com vinho branco e parmesão.'
),
(
    'Hamburguer de Lentilha',
    False,
    'https://exemplo.com/imagem_hamburguer_lentilha.jpg',
    '1. Cozinhe a lentilha na panela de pressão com 4 xícaras de água em fogo médio até pegar pressão; 2. Abaixe o fogo e cozinhe por mais 15 minutos; 3. Escorra e coloque em uma vasilha; 4. Misture com alho, cebola, cheiro-verde, azeite, sal e cominho; 5. Adicione farelo de aveia e farinha de arroz integral até dar o ponto de modelar.',
    False,
    false,
    'Lentilhas cozidas misturadas com temperos e farinha de aveia, moldadas em hambúrgueres e grelhadas.'
),
(
    'Pizza Margherita',
    False,
    'https://exemplo.com/imagem_pizza_marguerita.jpg',
    '1. Corte os tomates em pedaços grandes e bata no liquidificador com as cebolas; divida em duas partes; 2. Frite o alho em pouco óleo, adicione os tomates batidos, sal e metade do manjericão; cozinhe até o molho engrossar; 3. Coloque o molho sobre a pizza, adicione o queijo e o restante do manjericão; 4. Leve ao forno até o queijo derreter e finalize com um fio de azeite; 5. Sirva em seguida.',
    False,
    false,
    'Pizza vegetariana simples com molho de tomate, manjericão fresco e muçarela.'
),
(
    'Tacos de Feijão Preto',
    False,
    'https://exemplo.com/imagem_tacos_feijao.jpg',
    '1. Aqueça o óleo em fogo médio e refogue a cebola até murchar; 2. Junte a carne moída e cozinhe até dourar; 3. Adicione os pimentões, o Feijão Preto Pronto, sal, coentro, cominho e pimenta cayena a gosto; 4. Incorpore água e farinha de trigo; cozinhe por 10 minutos ou até ficar cremoso; 5. Desligue o fogo, recheie os tacos e sirva em seguida.',
    False,
    false,
    'Tortilhas recheadas com feijão preto, abacate e vegetais frescos.'
),
(
    'Espaguete de Abobrinha com Pesto',
    False,
    'https://exemplo.com/imagem_espaguete_abobrinha.jpg',
    '1. Embrulhe as abobrinhas individualmente e asse em forno médio por cerca de 20 minutos; 2. Coloque os dentes de alho no forno por 10 minutos, depois retire para não estourar; 3. Fure as abobrinhas; quando macias, corte em pedaços e bata no liquidificador com azeite e parmesão; 4. Reserve enquanto ferva 2 litros de água e cozinhe o espaguete até al dente; 5. Aqueça o pesto, cubra a massa e finalize com nozes.',
    False,
    false,
    'Abobrinha cortada em formato de espaguete, servida com molho pesto caseiro de manjericão.'
),
(
    'Batata Recheada com Queijo e Brócolis',
    False,
    'https://exemplo.com/imagem_batata_recheada_queijo.jpg',
    '1. Pré-aqueça o forno a 200°C; 2. Embrulhe as batatas em papel alumínio e leve para assar até ficar macia; 3. Retire o recheio das batatas e reserve; 4. Numa panela refogue a cebola e o alho na manteiga. Junte o brócolis e refogue; 5. Acrescente o recheio das batatas, misture bem; 6. Recheie as batatas, coloque o queijo e leve para gratinar no forno e sirva.',
    False,
    false,
    'Batatas assadas e recheadas com uma mistura cremosa de queijo e brócolis.'
),
(
    'Ratatouille',
    False,
    'https://exemplo.com/imagem_ratatouille.jpg',
    '1. Corte os vegetais em rodelas finas, removendo as sementes; 2. Cubra o fundo de uma forma com molho de tomate; 3. Monte os vegetais intercalando-os; 4. Amasse o alho e espalhe sobre os vegetais, adicionando sal e alecrim a gosto; 5. Regue com azeite e cubra com papel-manteiga ou alumínio; 6. Asse no forno a 180°C a 200°C por 40 minutos.',
    False,
    false,
    'Vegetais como berinjela, abobrinha e tomate cozidos lentamente em molho de ervas.'
),
(
    'Wrap de Vegetais',
    False,
    'https://exemplo.com/imagem_wrap_vegetais.jpg',
    '1. Em uma tigela, misture batata, cenoura, vagem, ervilha, salsinha e maionese; 2. Reserve a mistura; 3. No centro de cada pão folha, coloque uma folha de alface e uma porção da mistura; 4. Enrole no formato de cone e decore com tomates cereja; 5. Sirva em uma travessa decorada com alface e tomates cereja.',
    False,
    false,
    'Tortilha recheada com hummus, cenoura, pepino e folhas verdes.'
),
(
    'Salada Caprese',
    False,
    'https://exemplo.com/imagem_salada_caprese.jpg',
    '1. Corte cada tomate em 8 gomos, descartando a tampa; 2. Lave e seque as folhas de manjericão; 3. Corte a muçarela de búfala em gomos; 4. Monte em uma travessa com os tomates e muçarela, tempere com sal, pimenta e azeite; 5. Finalize com manjericão e sirva.',
    False,
    false,
    'Tomate fatiado com muçarela de búfala, azeite, sal e manjericão.'
),
(
    'Ceviche de Caju',
    False,
    'https://exemplo.com/imagem_ceviche_caju.jpg',
    '1. Deixe as castanhas de molho por 24 horas para hidratar e corte os cajus; 2. Misture com cebola roxa e pimentão; 3. Tempere com coentro, suco de limão e sirva gelado.',
    False,
    false,
    'Prato de origem peruana adaptado para versão vegana, substituindo peixe por caju.'
),
(
    'Omelete de Legumes',
    False,
    'https://exemplo.com/imagem_omelte_legumes.jpg',
    '1. Cozinhe a batata e o brócolis no vapor por alguns minutos e reserve; 2. Em uma tigela, bata os ovos e acrescente os legumes: batata, brócolis e rabanete. Tempere com sal e pimenta e mexa; 3. Em uma panela pequena, aqueça azeite e coloque a mistura. Tampe e cozinhe em fogo médio-alto. Quando desgrudar, vire a omelete; 4. Adicione o tomate picado, queijo e orégano, e deixe dourar.',
    False,
    false,
    'Omelete feito com ovos e uma mistura de vegetais como espinafre, tomate e pimentão.'
),
(
    'Tabule de Quinoa',
    False,
    'https://exemplo.com/imagem_tabule_quinoa.jpg',
    '1. Cozinhe a quinoa conforme as instruções da embalagem e deixe esfriar; 2. Corte o tomate em cubos; 3. Corte a cebola e o pepino em pequenos cubos; 4. Pique a salsinha e a hortelã; 5. Misture tudo em uma tigela e tempere com azeite, suco de limão, sal e pimenta a gosto.',
    False,
    false,
    'Quinoa cozida misturada com tomate, pepino, cebola e temperada com hortelã e suco de limão.'
),
(
    'Nhoque de Batata Doce',
    False,
    'https://exemplo.com/imagem_nhoque_batata.jpg',
    '1. Cozinhe a batata-doce até ficar bem mole; 2. Amasse com garfo ou espremedor e adicione o ovo; 3. Misture a farinha de trigo até soltar das mãos; 4. Se desejar, adicione queijo parmessão;5. Retire pedaços e enrole em tubos de 1 cm de diâmetro;6. Corte do tamanho desejado;7. Ferva água com 1 colher de óleo e 1 de sal;8. Adicione os nhoques à água fervente e cozinhe até flutuarem;9. Retire, escorra e coloque em um refratário',
    False,
    false,
    'Massa feita com purê de batata-doce, servida com molho de tomate e manjericão.'
),
(
    'Risoto de Camarão',
    False,
    'https://exemplo.com/imagem_risoto_camarao.jpg',
    '1. Refogue o camarão em azeite; 2. Acrescente o arroz e os temperos; 3. Cozinhe com caldo de legumes até o arroz ficar macio.',
    False,
    false,
    'Risoto cremoso com camarão, ideal para refeições sofisticadas.'
),
(
    'Sushi de Salmão',
    False,
    'https://exemplo.com/imagem_sushi_salmao.jpg',
    '1. Prepare o arroz de sushi; 2. Monte o sushi com salmão e vegetais; 3. Sirva com molho de soja.',
    False,
    false,
    'Sushi fresco com salmão, perfeito para amantes da culinária japonesa.'
),
(
    'Salada de Atum',
    False,
    'https://exemplo.com/imagem_salada_atum.jpg',
    '1. Misture o atum com os vegetais;2. Tempere a gosto; 3. Sirva gelada.',
    False,
    false,
    'Salada saudável e leve, rica em proteínas e sabor.'
),
(
    'Frutos do Mar com Alho',
    False,
    'https://exemplo.com/imagem_frutos_do_mar_alho.jpg',
    '1. Refogue o alho em azeite; 2. Adicione os frutos do mar e cozinhe; 3. Tempere a gosto e sirva.',
    False,
    false,
    'Prato saboroso de frutos do mar com alho, ideal para uma refeição rápida.'
),
(
    'Tacos de Peixe',
    False,
    'https://exemplo.com/imagem_tacos_peixe.jpg',
    '1. Tempere o peixe; 2. Monte os tacos com os acompanhamentos; 3. Sirva com molho.',
    False,
    false,
    'Tacos crocantes de peixe, perfeitos para um almoço descontraído.'
),
(
    'Sopa de Peixe',
    False,
    'https://exemplo.com/imagem_sopa_peixe.jpg',
    '1. Cozinhe os peixes e legumes; 2. Tempere e sirva quente; 3. Decore com ervas.',
    False,
    false,
    'Sopa reconfortante de peixe, ideal para dias frios.'
),
(
    'Espaguete com Molho de Camarão',
    False,
    'https://exemplo.com/imagem_espaguete_molho_camarao.jpg',
    '1. Cozinhe o espaguete; 2. Prepare o molho com camarões; 3. Misture o espaguete ao molho e sirva.',
    False,
    false,
    'Espaguete delicioso com molho cremoso de camarão.'
),
(
    'Ceviche de Peixe',
    False,
    'https://exemplo.com/imagem_ceviche_peixe.jpg',
    '1. Corte o peixe em cubos; 2. Marinar com limão e temperos; 3. Sirva gelado com cebola roxa.',
    False,
    false,
    'Ceviche fresco e leve, ideal para dias quentes.'
),
(
    'Salada de Quinoa com Salmão',
    False,
    'https://exemplo.com/imagem_salada_quinoa_salmao.jpg',
    '1. Cozinhe a quinoa; 2. Misture com salmão e vegetais; 3. Tempere a gosto.',
    False,
    false,
    'Salada nutritiva de quinoa com salmão grelhado.'
),
(
    'Sanduíche de Peixe',
    False,
    'https://exemplo.com/imagem_sanduiche_peixe.jpg',
    '1. Grelhe o peixe; 2. Monte o sanduíche com molhos e vegetais; 3. Sirva imediatamente.',
    False,
    false,
    'Sanduíche leve e saboroso, perfeito para um lanche rápido.'
),
(
    'Bolinho de Peixe',
    False,
    'https://exemplo.com/imagem_bolinho_peixe.jpg',
    '1. Misture os ingredientes do bolinho; 2. Frite até dourar; 3. Sirva quente.',
    False,
    false,
    'Bolinho crocante de peixe, ótimo para petiscar.'
),
(
    'Camarão ao Alho',
    False,
    'https://exemplo.com/imagem_camarao_alho.jpg',
    '1. Refogue o alho no azeite; 2. Adicione os camarões e cozinhe; 3. Sirva com arroz.',
    False,
    false,
    'Camarão suculento ao alho, ideal para acompanhar arroz.'
),
(
    'Pizza de Mariscos',
    False,
    'https://exemplo.com/imagem_pizza_mariscos.jpg',
    '1. Prepare a massa da pizza; 2. Adicione os mariscos e asse; 3. Sirva quente.',
    False,
    false,
    'Pizza saborosa com mariscos, perfeita para uma refeição em família.'
),
(
    'Pasta de Sardinha',
    False,
    'https://exemplo.com/imagem_pasta_sardinha.jpg',
    '1. Misture a sardinha com os ingredientes; 2. Sirva com torradas; 3. Decore com ervas.',
    False,
    false,
    'Pasta prática de sardinha, ideal para lanches.'
),
(
    'Curry de Peixe',
    False,
    'https://exemplo.com/imagem_curry_peixe.jpg',
    '1. Refogue os temperos; 2. Adicione o peixe e o leite de coco; 3. Cozinhe até o peixe ficar macio.',
    False,
    false,
    'Curry aromático de peixe, perfeito para uma refeição exótica.'
),
(
    'Paella de Frutos do Mar',
    False,
    'https://exemplo.com/imagem_paella_frutos_do_mar.jpg',
    '1. Cozinhe o arroz com os frutos do mar; 2. Tempere a gosto; 3. Sirva com limão.',
    False,
    false,
    'Paella tradicional, ideal para reunir amigos e família.'
),
(
    'Bolo de Peixe',
    False,
    'https://exemplo.com/imagem_bolo_peixe.jpg',
    '1. Misture os ingredientes do bolo; 2. Asse até dourar; 3. Sirva com molho.',
    False,
    false,
    'Bolo salgado de peixe, uma opção inovadora para o almoço.'
),
(
    'Salada de Frutos do Mar',
    False,
    'https://exemplo.com/imagem_salada_frutos_do_mar.jpg',
    '1. Misture os frutos do mar com vegetais; 2. Tempere e sirva; 3. Decore com limão.',
    False,
    false,
    'Salada fresca de frutos do mar, ideal para dias quentes.'
),
(
    'Filé de Peixe Grelhado',
    False,
    'https://exemplo.com/imagem_file_peixe_grelhado.jpg',
    '1. Tempere o filé; 2. Grelhe até ficar cozido; 3. Sirva com acompanhamentos.',
    False,
    false,
    'Filé de peixe grelhado, uma opção saudável e deliciosa.'
),
(
    'Camarão na Moranga',
    False,
    'https://exemplo.com/imagem_camarao_na_moranga.jpg',
    '1. Prepare a moranga; 2. Cozinhe o camarão com temperos e sirva; 3. Decore com ervas.',
    False,
    false,
    'Camarão na moranga, um prato tradicional e saboroso.'
),
(
    'Bolo de Chocolate Vegano',
    False,
    'https://exemplo.com/imagem_bolo_chocolate.jpg',
    '1. Pré-aqueça o forno a 180°C; 2. Misture a farinha, cacau e açúcar em uma tigela; 3. Adicione o óleo, leite vegetal e misture bem; 4. Acrescente o fermento e mexa suavemente; 5. Despeje a massa em uma forma untada e asse por 35 minutos; 6. Deixe esfriar antes de servir.',
    False,
    false,
    'Bolo de chocolate vegano, ideal para dietas sem ingredientes de origem animal.'
),
(
    'Salada de Quinoa e Grão-de-bico',
    False,
    'https://exemplo.com/imagem_salada_quinoa.jpg',
    '1. Cozinhe a quinoa em água fervente até ficar macia; 2. Escorra e deixe esfriar; 3. Misture a quinoa com grão-de-bico cozido e vegetais picados; 4. Tempere com azeite, limão, sal e pimenta; 5. Sirva fria.',
    False,
    false,
    'Salada nutritiva e vegana feita com quinoa e grão-de-bico.'
),
(
    'Sopa de Abóbora com Coco',
    False,
    'https://exemplo.com/imagem_sopa_abobora.jpg',
    '1. Cozinhe a abóbora em água até amolecer; 2. Bata no liquidificador com leite de coco até obter um creme; 3. Aqueça em uma panela e adicione temperos a gosto; 4. Sirva quente com sementes por cima.',
    False,
    false,
    'Sopa cremosa de abóbora com leite de coco, ideal para dias frios.'
),
(
    'Hambúrguer de Lentilha',
    False,
    'https://exemplo.com/imagem_hamburguer_lentilha.jpg',
    '1. Cozinhe as lentilhas até ficarem macias; 2. Amasse-as e misture com temperos e farinha de rosca; 3. Modele em formato de hambúrguer; 4. Asse ou grelhe até dourar; 5. Sirva em pão integral ou com salada.',
    False,
    false,
    'Hambúrguer vegano de lentilha, rico em proteínas e sabor.'
),
(
    'Pasta de Berinjela (Baba Ganoush)',
    False,
    'https://exemplo.com/imagem_baba_ganoush.jpg',
    '1. Asse a berinjela até ficar macia; 2. Retire a polpa e bata com alho, tahine, suco de limão e azeite; 3. Tempere com sal e pimenta a gosto; 4. Sirva com pão sírio ou vegetais.',
    False,
    false,
    'Pasta cremosa de berinjela, típica da culinária árabe.'
),
(
    'Curry de Grão-de-bico',
    False,
    'https://exemplo.com/imagem_curry_grao_de_bico.jpg',
    '1. Refogue cebola, alho e gengibre em azeite; 2. Adicione grão-de-bico cozido e leite de coco; 3. Tempere com curry em pó e sal; 4. Deixe cozinhar por 10 minutos; 5. Sirva com arroz ou pão naan.',
    False,
    false,
    'Curry vegano de grão-de-bico, rico em especiarias e cremoso.'
),
(
    'Smoothie Verde com Espinafre',
    False,
    'https://exemplo.com/imagem_smoothie_verde.jpg',
    '1. Bata no liquidificador espinafre, banana e leite vegetal; 2. Adicione sementes de chia ou linhaça para mais nutrientes; 3. Sirva gelado.',
    False,
    false,
    'Smoothie refrescante e saudável com espinafre e banana.'
),
(
    'Tacos de Cogumelos',
    False,
    'https://exemplo.com/imagem_tacos_cogumelos.jpg',
    '1. Refogue cogumelos até ficarem macios; 2. Tempere com cominho, pimenta e sal; 3. Monte os tacos com tortillas de milho e adicione guacamole e salsa; 4. Sirva quente.',
    False,
    false,
    'Tacos veganos feitos com cogumelos, uma opção saborosa e nutritiva.'
),
(
    'Panquecas de Banana e Aveia',
    False,
    'https://exemplo.com/imagem_panquecas_banana.jpg',
    '1. Amasse bananas e misture com aveia em flocos e leite vegetal; 2. Aqueça uma frigideira e despeje pequenas porções da massa; 3. Cozinhe até dourar dos dois lados; 4. Sirva com frutas e melado.',
    False,
    false,
    'Panquecas veganas feitas com banana e aveia, sem açúcar refinado.'
),
(
    'Ceviche de Manga',
    False,
    'https://exemplo.com/imagem_ceviche_manga.jpg',
    '1. Pique manga e cebola roxa em cubos; 2. Misture com suco de limão, coentro e pimenta; 3. Tempere com sal e deixe marinar por 15 minutos; 4. Sirva frio.',
    False,
    false,
    'Ceviche vegano refrescante feito com manga e temperos frescos.'
),
(
    'Pasta de Amendoim e Banana',
    False,
    'https://exemplo.com/imagem_pasta_amendoim.jpg',
    '1. Amasse bananas maduras; 2. Misture com pasta de amendoim até obter uma consistência cremosa; 3. Sirva com pão integral ou como recheio de tapioca.',
    False,
    false,
    'Pasta simples e vegana feita com amendoim e banana, rica em energia.'
),
(
    'Muffins de Cenoura',
    False,
    'https://exemplo.com/imagem_muffins_cenoura.jpg',
    '1. Rale as cenouras e reserve; 2. Misture farinha, fermento e açúcar mascavo; 3. Adicione leite vegetal e mexa até formar uma massa homogênea; 4. Despeje em formas de muffin e asse por 25 minutos.',
    False,
    false,
    'Muffins veganos de cenoura, perfeitos para lanches saudáveis.'
),
(
    'Lasanha de Abobrinha',
    False,
    'https://exemplo.com/imagem_lasanha_abobrinha.jpg',
    '1. Fatie a abobrinha em lâminas finas; 2. Monte a lasanha alternando camadas de molho de tomate, abobrinha e tofu; 3. Asse em forno a 200°C por 30 minutos; 4. Sirva quente.',
    False,
    false,
    'Lasanha vegana de abobrinha com molho de tomate e tofu.'
),
(
    'Chili Vegano',
    False,
    'https://exemplo.com/imagem_chili_vegano.jpg',
    '1. Refogue cebola, alho e pimentão; 2. Adicione feijão cozido, tomates e temperos; 3. Deixe cozinhar até o molho engrossar; 4. Sirva com arroz ou tortilhas.',
    False,
    false,
    'Chili vegano com feijão e vegetais, uma opção picante e saborosa.'
),
(
    'Pizza Vegana com Vegetais',
    False,
    'https://exemplo.com/imagem_pizza_vegana.jpg',
    '1. Prepare a massa de pizza vegana; 2. Espalhe molho de tomate e adicione vegetais de sua escolha; 3. Asse até a massa ficar crocante; 4. Sirva quente.',
    False,
    false,
    'Pizza vegana com massa caseira e vegetais frescos.'
),
(
    'Sorvete de Banana',
    False,
    'https://exemplo.com/imagem_sorvete_banana.jpg',
    '1. Congele bananas maduras; 2. Bata no liquidificador até obter uma consistência cremosa; 3. Sirva imediatamente com toppings de sua escolha.',
    False,
    false,
    'Sorvete vegano feito apenas com bananas congeladas, saudável e fácil.'
),
(
    'Bolinhos de Batata Doce',
    False,
    'https://exemplo.com/imagem_bolinhos_batata_doce.jpg',
    '1. Cozinhe batata doce e amasse até formar um purê; 2. Misture com temperos e farinha de linhaça; 3. Modele em bolinhos e asse até dourar; 4. Sirva com molho de sua escolha.',
    False,
    false,
    'Bolinhos veganos de batata doce, crocantes por fora e macios por dentro.'
),
(
    'Torta de Maçã Vegana',
    False,
    'https://exemplo.com/imagem_torta_maca.jpg',
    '1. Faça uma massa vegana com farinha e óleo de coco; 2. Recheie com fatias de maçã e canela; 3. Asse até a torta ficar dourada; 4. Sirva com sorvete vegano.',
    False,
    false,
    'Torta clássica de maçã, feita sem ingredientes de origem animal.'
),
(
    'Pudim de Chia com Frutas',
    False,
    'https://exemplo.com/imagem_pudim_chia.jpg',
    '1. Misture sementes de chia com leite vegetal; 2. Deixe descansar na geladeira por 4 horas até atingir a consistência de pudim; 3. Sirva com frutas frescas por cima.',
    False,
    false,
    'Pudim vegano e saudável feito com chia e frutas frescas.'
),
(
    'Wraps de Alface com Hummus',
    False,
    'https://exemplo.com/imagem_wraps_alface.jpg',
    '1. Lave folhas de alface grandes; 2. Recheie com hummus, vegetais e grão-de-bico; 3. Enrole como um wrap e sirva frio.',
    False,
    false,
    'Wraps veganos leves e refrescantes, perfeitos para lanches rápidos.'
),
(
    'Risoto de Cogumelos',
    False,
    'https://exemplo.com/imagem_risoto_cogumelos.jpg',
    '1. Refogue cebola e alho em azeite; 2. Acrescente cogumelos e cozinhe até amaciarem; 3. Adicione o arroz arbóreo e refogue por alguns minutos; 4. Despeje o vinho branco e mexa até evaporar; 5. Adicione o caldo de legumes aos poucos, mexendo até o arroz ficar cremoso e cozido; 6. Finalize com manteiga e parmesão ralado, mexendo até derreter.',
    False,
    false,
    'Risoto cremoso com cogumelos frescos e parmesão.'
),
(
    'Frango à Parmegiana',
    False,
    'https://exemplo.com/imagem_frango_parmegiana.jpg',
    '1. Tempere os filés de frango com sal, pimenta e alho; 2. Passe-os na farinha de trigo, ovo batido e farinha de rosca; 3. Frite os filés até dourarem; 4. Em uma assadeira, coloque os filés, cubra com molho de tomate e queijo muçarela; 5. Leve ao forno para gratinar até o queijo derreter.',
    False,
    false,
    'Filés de frango empanados cobertos com molho de tomate e queijo muçarela gratinado.'
),
(
    'Taco de Frango',
    False,
    'https://exemplo.com/imagem_taco_frango.jpg',
    '1. Cozinhe o peito de frango e desfie; 2. Refogue com cebola, alho, tomate e temperos a gosto; 3. Recheie as tortilhas com o frango desfiado; 4. Adicione alface, tomate, queijo e molho a gosto; 5. Feche os tacos e sirva.',
    False,
    false,
    'Tortilhas recheadas com frango desfiado e vegetais frescos.'
),
(
    'Sopa de Lentilhas',
    False,
    'https://exemplo.com/imagem_sopa_lentilhas.jpg',
    '1. Refogue cebola, alho e cenoura em azeite; 2. Adicione lentilhas e caldo de legumes; 3. Tempere com sal, pimenta e cominho; 4. Cozinhe até as lentilhas ficarem macias; 5. Finalize com salsinha e sirva quente.',
    False,
    false,
    'Sopa nutritiva de lentilhas com temperos e vegetais.'
),
(
    'Lasanha Vegetariana',
    False,
    'https://exemplo.com/imagem_lasanha_vegetariana.jpg',
    '1. Fatie abobrinha e berinjela em lâminas; 2. Monte camadas alternadas de vegetais, molho de tomate e queijo muçarela; 3. Finalize com queijo parmesão ralado; 4. Asse em forno preaquecido a 180ºC por 40 minutos até gratinar.',
    False,
    false,
    'Lasanha de vegetais com molho de tomate e queijo.'
),
(
    'Quiche de Legumes',
    False,
    'https://exemplo.com/imagem_quiche_legumes.jpg',
    '1. Preaqueça o forno a 180ºC; 2. Misture farinha de trigo, manteiga e sal até formar uma massa; 3. Espalhe a massa em uma forma e asse por 15 minutos; 4. Refogue espinafre, cenoura e abobrinha; 5. Misture os legumes com ovos e creme de leite; 6. Despeje sobre a massa e asse por mais 30 minutos.',
    False,
    false,
    'Quiche de massa crocante recheada com legumes refogados.'
),
(
    'Pasta de Abobrinha',
    False,
    'https://exemplo.com/imagem_pasta_abobrinha.jpg',
    '1. Corte a abobrinha em tiras finas; 2. Refogue alho e cebola em azeite; 3. Adicione a abobrinha e cozinhe até ficar al dente; 4. Tempere com sal, pimenta e manjericão fresco; 5. Sirva com queijo parmesão ralado.',
    False,
    false,
    'Abobrinha cortada em tiras finas e servida como massa com temperos e queijo.'
),
(
    'Cuscuz Marroquino',
    False,
    'https://exemplo.com/imagem_cuscuz_marroquino.jpg',
    '1. Hidrate o cuscuz em caldo de legumes quente por 5 minutos; 2. Solte os grãos com um garfo; 3. Adicione cenoura, uvas-passas, amêndoas e salsinha picada; 4. Tempere com azeite, sal e pimenta a gosto; 5. Sirva quente ou frio.',
    False,
    false,
    'Cuscuz marroquino com vegetais, frutas secas e amêndoas.'
),
(
    'Bolo de Batata',
    False,
    'https://exemplo.com/imagem_bolo_batata.jpg',
    '1. Cozinhe as batatas até ficarem macias; 2. Amasse e misture com ovos, farinha e queijo parmesão; 3. Tempere com sal e pimenta; 4. Coloque em uma forma e asse até dourar; 5. Sirva quente.',
    False,
    false,
    'Bolo salgado de batata com queijo parmesão.'
),
(
    'Creme de Abóbora',
    False,
    'https://exemplo.com/imagem_creme_abobora.jpg',
    '1. Refogue cebola e alho em azeite; 2. Adicione abóbora picada e caldo de legumes; 3. Cozinhe até a abóbora amolecer; 4. Bata no liquidificador até virar um creme; 5. Tempere com sal, pimenta e noz-moscada.',
    False,
    false,
    'Creme suave de abóbora com temperos.'
),
(
    'Salada Caesar sem Frutos do Mar',
    False,
    'https://exemplo.com/imagem_salada_caesar.jpg',
    '1. Misture alface romana com croutons e parmesão ralado; 2. Prepare o molho com maionese, alho, mostarda e limão; 3. Misture o molho com a salada e sirva.',
    False,
    false,
    'Salada Caesar clássica sem frutos do mar, com molho cremoso.'
),
(
    'Sanduíche de Frango',
    False,
    'https://exemplo.com/imagem_sanduiche_frango.jpg',
    '1. Cozinhe e desfie o frango; 2. Misture com maionese e temperos a gosto; 3. Recheie o pão com a mistura de frango; 4. Adicione alface, tomate e sirva.',
    False,
    false,
    'Sanduíche de frango desfiado com vegetais frescos.'
),
(
    'Muffins de Espinafre',
    False,
    'https://exemplo.com/imagem_muffins_espinafre.jpg',
    '1. Misture espinafre refogado com ovos, farinha e queijo parmesão; 2. Despeje em formas de muffin; 3. Asse em forno preaquecido a 180ºC por 20 minutos; 4. Sirva quente.',
    False,
    false,
    'Muffins salgados de espinafre com queijo parmesão.'
),
(
    'Pasta com Molho de Tomate',
    False,
    'https://exemplo.com/imagem_pasta_molho_tomate.jpg',
    '1. Cozinhe a massa até ficar al dente; 2. Prepare o molho com tomate, alho e manjericão; 3. Misture o molho com a massa e sirva com queijo parmesão ralado.',
    False,
    false,
    'Massa servida com molho de tomate fresco e manjericão.'
),
(
    'Panquecas de Batata',
    False,
    'https://exemplo.com/imagem_panquecas_batata.jpg',
    '1. Rale batatas e misture com ovos e farinha; 2. Tempere com sal e pimenta; 3. Frite em pequenas porções até dourar; 4. Sirva com creme de leite.',
    False,
    false,
    'Panquecas crocantes de batata com temperos.'
),
(
    'Arroz Doce',
    False,
    'https://exemplo.com/imagem_arroz_doce.jpg',
    '1. Cozinhe o arroz em leite e açúcar; 2. Adicione canela e raspas de limão; 3. Cozinhe até engrossar; 4. Sirva frio ou quente.',
    False,
    false,
    'Sobremesa de arroz cozido no leite com açúcar e canela.'
),
(
    'Biscoitos de Aveia',
    False,
    'https://exemplo.com/imagem_biscoitos_aveia.jpg',
    '1. Misture aveia, farinha, açúcar e manteiga; 2. Adicione ovos e chocolate a gosto; 3. Modele os biscoitos e asse até dourar; 4. Sirva frio.',
    False,
    false,
    'Biscoitos crocantes de aveia com pedaços de chocolate.'
),
(
    'Ceviche de Frutas',
    False,
    'https://exemplo.com/imagem_ceviche_frutas.jpg',
    '1. Corte frutas como manga, abacaxi e kiwi em cubos pequenos; 2. Misture com suco de limão, pimenta e coentro picado; 3. Deixe marinar por alguns minutos; 4. Sirva gelado como entrada ou sobremesa.',
    False,
    false,
    'Ceviche fresco e leve, feito com frutas tropicais e temperos cítricos.'
),
(
    'Bolo de Cenoura com Cobertura de Chocolate',
    False,
    'https://exemplo.com/imagem_bolo_cenoura.jpg',
    '1.Bata cenoura, óleo e ovos;2.Misture com farinha, açúcar e fermento;3.Asse a 180°C por 40 min;4.Para cobertura, derreta chocolate com creme de leite.',
    False,
    false,
    'Bolo de cenoura com cobertura de chocolate.'
),
(
    'Muffin de Banana',
    False,
    'https://exemplo.com/imagem_muffin_banana.jpg',
    '1.Amasse bananas;2.Misture com óleo, açúcar e bicarbonato;3.Adicione farinha;4.Asse a 180°C por 20 min.',
    False,
    false,
    'Muffin de banana úmido e leve.'
),
(
    'Risoto de Abóbora e Queijo',
    False,
    'https://exemplo.com/imagem_risoto_abobora.jpg',
    '1.Cozinhe abóbora;2.Refogue cebola e adicione arroz;3.Acrescente caldo aos poucos;4.Misture abóbora e queijo;5.Sirva.',
    False,
    false,
    'Risoto cremoso de abóbora e queijo.'
),
(
    'Chili Vegetariano',
    False,
    'https://exemplo.com/imagem_chili_vegetariano.jpg',
    '1.Refogue cebola e alho;2.Adicione pimentão e cenoura;3.Coloque feijão e tomate;4.Cozinhe por 20 min;5.Sirva com arroz.',
    False,
    false,
    'Chili vegetariano com feijão, legumes e temperos.'
),
(
    'Canelone de Ricota e Espinafre',
    False,
    'https://exemplo.com/imagem_canelone_ricota.jpg',
    '1.Cozinhe folhas de lasanha;2.Misture ricota, espinafre e ovo;3.Recheie e asse com molho de tomate e queijo a 180°C por 30 min.',
    False,
    false,
    'Canelone recheado com ricota e espinafre.'
),
(
    'Torta de Legumes',
    False,
    'https://exemplo.com/imagem_torta_legumes.jpg',
    '1.Misture farinha, óleo e água;2.Abra a massa e recheie com legumes refogados e ovos;3.Asse a 180°C por 40 min.',
    False,
    false,
    'Torta salgada de legumes e ovos.'
),
(
    'Pudim de Leite Condensado',
    False,
    'https://exemplo.com/imagem_pudim_leite_condensado.jpg',
    '1.Caramelize forma;2.Bata leite condensado, leite e ovos;3.Cozinhe em banho-maria por 1h;4.Deixe esfriar.',
    False,
    false,
    'Pudim clássico de leite condensado.'
),
(
    'Panquecas de Espinafre',
    False,
    'https://exemplo.com/imagem_panqueca_espinafre.jpg',
    '1.Misture farinha, leite, ovos e espinafre;2.Cozinhe em frigideira até dourar;3.Sirva com molho de tomate.',
    False,
    false,
    'Panqueca leve com espinafre.'
),
(
    'Crepe de Queijo e Presunto',
    False,
    'https://exemplo.com/imagem_crepe_queijo.jpg',
    '1.Misture farinha, leite, ovos e sal;2.Cozinhe a massa em frigideira;3.Recheie com queijo e presunto;4.Dobre e sirva.',
    False,
    false,
    'Crepe recheado com queijo e presunto.'
),
(
    'Pasta de Abacate',
    False,
    'https://exemplo.com/imagem_pasta_abacate.jpg',
    '1.Amasse abacate;2.Misture com limão, sal e pimenta;3.Sirva com torradas.',
    False,
    false,
    'Pasta de abacate cremosa e temperada.'
),
(
    'Salada de Grão-de-Bico',
    False,
    'https://exemplo.com/imagem_salada_graodebico.jpg',
    '1.Cozinhe grão-de-bico;2.Misture com tomate, pepino, cebola e salsinha;3.Tempere com azeite, limão, sal e pimenta.',
    False,
    false,
    'Salada refrescante de grão-de-bico e legumes.'
),
(
    'Bolo de Iogurte',
    False,
    'https://exemplo.com/imagem_bolo_iogurte.jpg',
    '1.Misture iogurte, ovos, açúcar e farinha;2.Adicione fermento;3.Asse a 180°C por 40 min.',
    False,
    false,
    'Bolo macio de iogurte.'
),
(
    'Pasta de Azeitona',
    False,
    'https://exemplo.com/imagem_pasta_azeitona.jpg',
    '1.Bata azeitonas com azeite e alho;2.Sirva com pães.',
    False,
    false,
    'Pasta de azeitona intensa e saborosa.'
),
(
    'Cuscuz Marroquino com Legumes',
    False,
    'https://exemplo.com/imagem_cuscuz_marroquino.jpg',
    '1.Hidrate o cuscuz marroquino;2.Refogue legumes e misture ao cuscuz;3.Sirva.',
    False,
    false,
    'Cuscuz marroquino com legumes frescos.'
),
(
    'Batata Gratinada',
    False,
    'https://exemplo.com/imagem_batata_gratinada.jpg',
    '1.Cozinhe batatas e corte em rodelas;2.Faça camadas de batata, creme de leite e queijo;3.Asse a 180°C por 30 min.',
    False,
    false,
    'Batata gratinada com queijo e creme de leite.'
),
(
    'Tapioca com Queijo e Coco',
    False,
    'https://exemplo.com/imagem_tapioca_queijo_coco.jpg',
    '1.Hidrate a goma de tapioca;2.Cozinhe na frigideira;3.Recheie com queijo e coco;4.Dobre e sirva.',
    False,
    false,
    'Tapioca simples com recheio de queijo e coco.'
),
(
    'Sopa de Lentilha',
    False,
    'https://exemplo.com/imagem_sopa_lentilha.jpg',
    '1.Cozinhe lentilha com cenoura e batata picadas;2.Tempere e sirva quente.',
    False,
    false,
    'Sopa nutritiva de lentilha com legumes.'
),
(
    'Farofa de Banana',
    False,
    'https://exemplo.com/imagem_farofa_banana.jpg',
    '1.Refogue cebola em manteiga;2.Adicione bananas picadas e farinha de mandioca;3.Tempere e sirva.',
    False,
    false,
    'Farofa de banana com manteiga e cebola.'
),
(
    'Quibe de Abóbora',
    False,
    'https://exemplo.com/imagem_quibe_abobora.jpg',
    '1.Cozinhe abóbora e amasse;2.Misture com trigo, temperos e cebola;3.Modele e asse a 180°C por 30 min.',
    False,
    false,
    'Quibe vegano feito com abóbora e trigo.'
),
(
    'Pasta de Grão-de-Bico',
    False,
    'https://exemplo.com/imagem_pasta_graodebico.jpg',
    '1.Bata grão-de-bico cozido, tahine, limão e alho;2.Sirva com pão sírio.',
    False,
    false,
    'Homus cremoso de grão-de-bico.'
),
(
    'Bolo de Cenoura sem Nozes',
    False,
    'https://exemplo.com/imagem_bolo_cenoura_sem_nozes.jpg',
    '1. Bata cenoura, óleo e ovos; 2. Misture com farinha, açúcar e fermento; 3. Asse a 180°C por 40 min; 4. Deixe esfriar e sirva.',
    False,
    false,
    'Bolo de cenoura delicioso e sem nozes.'
),
(
    'Pasta de Grão-de-bico (Hummus)',
    False,
    'https://exemplo.com/imagem_hummus.jpg',
    '1. Cozinhe grão-de-bico até amolecer; 2. Bata no liquidificador com tahine, limão, alho e azeite; 3. Sirva com pão pita.',
    False,
    false,
    'Hummus cremoso e saboroso.'
),
(
    'Arroz com Legumes',
    False,
    'https://exemplo.com/imagem_arroz_legumes.jpg',
    '1. Refogue cebola e alho em azeite; 2. Adicione cenoura, ervilha e pimentão; 3. Misture o arroz cozido e tempere a gosto.',
    False,
    false,
    'Arroz colorido e nutritivo.'
),
(
    'Sopa de Lentilhas',
    False,
    'https://exemplo.com/imagem_sopa_lentilhas.jpg',
    '1. Cozinhe lentilhas com cenoura e batata picadas; 2. Tempere com sal e pimenta; 3. Sirva quente.',
    False,
    false,
    'Sopa nutritiva de lentilhas com legumes.'
),
(
    'Biscoitos de Aveia',
    False,
    'https://exemplo.com/imagem_biscoitos_aveia.jpg',
    '1. Misture aveia, açúcar mascavo, banana amassada e óleo; 2. Modele os biscoitos e coloque em uma assadeira; 3. Asse a 180°C por 15 min.',
    False,
    false,
    'Biscoitos crocantes de aveia.'
),
(
    'Frango ao Molho de Laranja',
    False,
    'https://exemplo.com/imagem_frango_laranja.jpg',
    '1. Tempere o frango e doure em uma frigideira; 2. Adicione suco de laranja e cozinhe até o frango estar macio; 3. Sirva com arroz.',
    False,
    false,
    'Frango suculento com molho cítrico.'
),
(
    'Pasta de Tomate Seco',
    False,
    'https://exemplo.com/imagem_pasta_tomate_seco.jpg',
    '1. Bata tomate seco com azeite e alho até virar pasta; 2. Sirva com torradas.',
    False,
    false,
    'Pasta saborosa de tomate seco.'
),
(
    'Pizza de Legumes',
    False,
    'https://exemplo.com/imagem_pizza_legumes.jpg',
    '1. Prepare a massa da pizza; 2. Adicione molho de tomate, queijo e legumes a gosto; 3. Asse a 220°C por 20 min.',
    False,
    false,
    'Pizza saudável com legumes frescos.'
),
(
    'Quiche de Legumes',
    False,
    'https://exemplo.com/imagem_quiche_legumes.jpg',
    '1. Misture ovos, creme de leite e temperos; 2. Adicione legumes cozidos; 3. Asse a 180°C por 30 min.',
    False,
    false,
    'Quiche leve e saborosa.'
),
(
    'Panquecas de Aveia',
    False,
    'https://exemplo.com/imagem_panquecas_aveia.jpg',
    '1. Misture aveia, leite e ovos; 2. Cozinhe em frigideira até dourar; 3. Sirva com mel ou frutas.',
    False,
    false,
    'Panquecas saudáveis e nutritivas.'
),
(
    'Bolinho de Chuva',
    False,
    'https://exemplo.com/imagem_bolinho_chuva.jpg',
    '1. Misture farinha, açúcar, ovos e leite; 2. Frite em óleo quente até dourar; 3. Passe no açúcar com canela.',
    False,
    false,
    'Bolinho doce e macio.'
),
(
    'Sushi com Peixe e Legumes',
    False,
    'https://exemplo.com/imagem_sushi.jpg',
    '1. Cozinhe arroz para sushi; 2. Enrole com peixe fresco e legumes; 3. Corte em pedaços e sirva com molho shoyu.',
    False,
    false,
    'Sushi fresco e saudável.'
),
(
    'Torta de Limão sem Nozes',
    False,
    'https://exemplo.com/imagem_torta_limao_sem_nozes.jpg',
    '1. Prepare a base da torta; 2. Misture leite condensado, suco de limão e claras; 3. Asse até firmar.',
    False,
    false,
    'Torta de limão leve e refrescante.'
),
(
    'Salada de Frutas',
    False,
    'https://exemplo.com/imagem_salada_frutas.jpg',
    '1. Corte frutas da estação em pedaços; 2. Misture e sirva gelada.',
    False,
    false,
    'Salada colorida e refrescante de frutas.'
),
(
    'Risoto de Limão',
    False,
    'https://exemplo.com/imagem_risoto_limao.jpg',
    '1. Refogue cebola em azeite; 2. Adicione arroz arbóreo; 3. Despeje caldo aos poucos e acrescente suco de limão; 4. Finalize com queijo parmesão.',
    False,
    false,
    'Risoto cremoso e aromático de limão.'
),
(
    'Cuscuz de Legumes',
    False,
    'https://exemplo.com/imagem_cuscuz_legumes.jpg',
    '1. Hidrate o cuscuz; 2. Refogue legumes e misture ao cuscuz; 3. Sirva.',
    False,
    false,
    'Cuscuz fresco e nutritivo.'
),
(
    'Muffins de Frutas',
    False,
    'https://exemplo.com/imagem_muffins_frutas.jpg',
    '1. Misture farinha, açúcar, frutas e ovos; 2. Coloque em formas e asse a 180°C por 20 min.',
    False,
    false,
    'Muffins macios e saborosos.'
),
(
    'Wraps de Frango',
    False,
    'https://exemplo.com/imagem_wraps_frango.jpg',
    '1. Recheie tortillas com frango grelhado, alface e molho; 2. Enrole e sirva.',
    False,
    false,
    'Wraps saudáveis e práticos.'
),
(
    'Tacos de Frango',
    False,
    'https://exemplo.com/imagem_tacos_frango.jpg',
    '1. Recheie tacos com frango desfiado, cebola e salsa; 2. Sirva com guacamole.',
    False,
    false,
    'Tacos saborosos e recheados.'
),
(
    'Crumble de Maçã',
    False,
    'https://exemplo.com/imagem_crumble_maca.jpg',
    '1. Corte maçãs e misture com açúcar e canela; 2. Cubra com farofa de aveia; 3. Asse até dourar.',
    False,
    false,
    'Crumble quente e delicioso de maçã.'
),
(
    'Arroz à Grega',
    False,
    'https://exemplo.com/imagem_arroz_grega.jpg',
    '1. Cozinhe o arroz; 2. Misture com legumes e temperos; 3. Sirva como acompanhamento.',
    False,
    false,
    'Arroz colorido e nutritivo.'
),
(
    'Omelete de Queijo e Ervas',
    False,
    'https://exemplo.com/imagem_omelete.jpg',
    '1. Bata os ovos e misture o queijo; 2. Cozinhe em uma frigideira; 3. Sirva com salada.',
    False,
    false,
    'Omelete leve e saborosa.'
),
(
    'Canelone de Ricota',
    False,
    'https://exemplo.com/imagem_canelone.jpg',
    '1. Recheie a massa com ricota; 2. Cubra com molho de tomate; 3. Asse até borbulhar.',
    False,
    false,
    'Canelone cremoso e delicioso.'
),
(
    'Batata Recheada',
    False,
    'https://exemplo.com/imagem_batata_recheada.jpg',
    '1. Cozinhe as batatas e faça um buraco; 2. Recheie com queijo e ervas; 3. Asse até o queijo derreter.',
    False,
    false,
    'Batata saborosa e recheada.'
),
(
    'Smoothie de Frutas',
    False,
    'https://exemplo.com/imagem_smoothie_frutas.jpg',
    '1. Misture frutas no liquidificador; 2. Adicione iogurte e mel; 3. Sirva gelado.',
    False,
    false,
    'Bebida refrescante e saudável.'
),
(
    'Salada de Quinoa',
    False,
    'https://exemplo.com/imagem_salada_quinoa.jpg',
    '1. Cozinhe a quinoa; 2. Misture com vegetais; 3. Tempere a gosto.',
    False,
    false,
    'Salada nutritiva e saborosa.'
),
(
    'Espaguete com Alho e Óleo',
    False,
    'https://exemplo.com/imagem_espaguete_alho_oleo.jpg',
    '1. Cozinhe o espaguete; 2. Refogue alho no azeite; 3. Misture o espaguete e sirva.',
    False,
    false,
    'Prato simples e delicioso.'
),
(
    'Bolinho de Batata',
    False,
    'https://exemplo.com/imagem_bolinho_batata.jpg',
    '1. Misture os ingredientes do bolinho; 2. Frite até dourar; 3. Sirva quente.',
    False,
    false,
    'Bolinho crocante, ideal para petiscar.'
),
(
    'Salada de Batata',
    False,
    'https://exemplo.com/imagem_salada_batata.jpg',
    '1. Cozinhe as batatas e corte em cubos; 2. Misture com cebola e ervas; 3. Tempere com azeite e limão.',
    False,
    false,
    'Salada cremosa e refrescante.'
),
(
    'Pão de Queijo',
    False,
    'https://exemplo.com/imagem_pao_queijo.jpg',
    '1. Misture os ingredientes; 2. Modele bolinhas; 3. Asse até dourar.',
    False,
    false,
    'Snack saboroso e tradicional.'
),
(
    'Curry de Legumes',
    False,
    'https://exemplo.com/imagem_curry_legumes.jpg',
    '1. Refogue cebola e temperos; 2. Adicione legumes e leite de coco; 3. Cozinhe até os legumes estarem macios.',
    False,
    false,
    'Curry aromático e saboroso.'
),
(
    'Torta de Batata',
    False,
    'https://exemplo.com/imagem_torta_batata.jpg',
    '1. Cozinhe as batatas e amasse; 2. Misture com ingredientes; 3. Asse até dourar.',
    False,
    false,
    'Torta salgada deliciosa.'
),
(
    'Bolo de Cenoura',
    False,
    'https://exemplo.com/imagem_bolo_cenoura.jpg',
    '1. Misture os ingredientes da massa; 2. Asse até ficar firme; 3. Sirva com cobertura.',
    False,
    false,
    'Bolo fofinho e saboroso.'
),
(
    'Pasta de Abacate',
    False,
    'https://exemplo.com/imagem_pasta_abacate.jpg',
    '1. Amasse o abacate; 2. Misture com limão e temperos; 3. Sirva com torradas.',
    False,
    false,
    'Pasta saudável e deliciosa.'
);

UPDATE recipe SET transaction_made = False;

-- Ligação entre Usuários e Restrições (res_Restriction)
INSERT INTO
    User_Restriction (
        person_id,
        restriction_id,
        transaction_made
    )
VALUES (1, 1, FALSE), -- Ana Silva é vegetariana
    (2, 2, FALSE), -- Carlos Santos é vegano
    (3, 5, FALSE), -- Beatriz Costa tem alergia a nozes
    (4, 4, FALSE), -- Marcos Pereira tem alergia a glúten
    (5, 3, FALSE);
-- Juliana Rocha tem intolerância à lactose
-- Ligação entre Ingredientes e Restrições (Ingredient_Restriction)
INSERT INTO
    Ingredient_Restriction (
        ingredient_id,
        restriction_id,
        is_deleted,
        transaction_made
    )
VALUES (1, 2, FALSE, FALSE),

(3, 2, FALSE, FALSE),
(3, 3, FALSE, FALSE),
(5, 5, FALSE, FALSE),
(8, 1, FALSE, FALSE),
(8, 7, FALSE, FALSE),
(26, 2, FALSE, FALSE),
(26, 3, FALSE, FALSE),
(31, 2, FALSE, FALSE),
(31, 3, FALSE, FALSE),
(33, 1, FALSE, FALSE),
(33, 2, FALSE, FALSE),
(33, 6, FALSE, FALSE),
(34, 2, FALSE, FALSE),
(34, 3, FALSE, FALSE),
(35, 2, FALSE, FALSE),
(35, 3, FALSE, FALSE),
(40, 2, FALSE, FALSE),
(40, 3, FALSE, FALSE),
(75, 1, FALSE, FALSE),
(75, 2, FALSE, FALSE),
(75, 6, FALSE, FALSE),
(80, 1, FALSE, FALSE),
(80, 2, FALSE, FALSE),
(80, 6, FALSE, FALSE),
(87, 2, FALSE, FALSE),
(87, 3, FALSE, FALSE),
(100, 1, FALSE, FALSE),
(100, 2, FALSE, FALSE),
(100, 6, FALSE, FALSE),
(155, 1, FALSE, FALSE),
(155, 7, FALSE, FALSE),
(156, 4, FALSE, FALSE),
(157, 1, FALSE, FALSE),
(157, 7, FALSE, FALSE),
(163, 4, FALSE, FALSE),
(166, 1, FALSE, FALSE),
(166, 2, FALSE, FALSE),
(166, 6, FALSE, FALSE),
(170, 1, FALSE, FALSE),
(170, 2, FALSE, FALSE),
(170, 6, FALSE, FALSE),
(174, 2, FALSE, FALSE),
(174, 3, FALSE, FALSE),
(184, 4, FALSE, FALSE),
(188, 2, FALSE, FALSE),
(191, 2, FALSE, FALSE),
(192, 2, FALSE, FALSE),
(192, 3, FALSE, FALSE);

-- Ligação entre Receitas e Ingredientes (Ingredient_Recipe)
INSERT INTO
    ingredient_recipe (
        ingredient_id,
        recipe_id,
        measure,
        is_updated,
        is_deleted,
        quantity,
        transaction_made
    )
VALUES
    -- Omelete (recipe_id: 1)
    (
        142,
        1,
        'Unidade',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- ovos
    (
        12,
        1,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- sal
    (
        11,
        1,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- azeite
    (
        87,
        1,
        'Xícara',
        FALSE,
        FALSE,
        1 / 4,
        TRUE
    ), -- Queijo
    (
        17,
        1,
        'Unidade',
        FALSE,
        FALSE,
        1 / 2,
        TRUE
    ), -- cebola
    (
        2,
        1,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- tomate -- é 889 msm
    -- Slada de tomate (recipe_id: 2)
    (
        2,
        2,
        'Unidade',
        FALSE,
        FALSE,
        4,
        TRUE
    ), -- tomate
    (
        12,
        2,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- sal
    (
        11,
        2,
        'Colher de sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- azeite
    (
        7,
        2,
        'Xícara',
        FALSE,
        FALSE,
        1 / 4,
        TRUE
    ), -- manjericão
    -- Bolo de nozes  (recipe_id: 3)
    (
        4,
        3,
        'Xícara',
        FALSE,
        FALSE,
        1.5,
        TRUE
    ), --farinha de trigo 
    (
        62,
        3,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --açucar
    (
        5,
        3,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- nozes picadas
    (
        64,
        3,
        'Xícara',
        FALSE,
        FALSE,
        0.25,
        TRUE
    ), -- sopa de fermento em pó 
    (
        179,
        3,
        'Xícara',
        FALSE,
        FALSE,
        0.25,
        TRUE
    ), -- óleo vegetal
    (
        131,
        3,
        'Xícara',
        FALSE,
        FALSE,
        0.25,
        TRUE
    ), -- leite vegetal
    -- Pão de forma   (recipe_id: 4)
    (
        4,
        4,
        'Xícara',
        FALSE,
        FALSE,
        3,
        TRUE
    ), --farinha de trigo 
    (
        64,
        4,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --fermento 
    (
        62,
        4,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- açúcar 
    (
        12,
        4,
        'Colher de chá',
        FALSE,
        FALSE,
        0.25,
        TRUE
    ), -- sal 
    (
        22,
        4,
        'ml',
        FALSE,
        FALSE,
        60,
        TRUE
    ), -- água vegetal 
    (
        179,
        4,
        'Colher de sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- óleo vegetal
    -- Panqueca    (recipe_id: 5)
    (
        4,
        5,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --farinha de trigo 
    (
        131,
        5,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --leite vegtal 
    (
        179,
        5,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- oléo vegetal
    (
        64,
        5,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- fermento
    (
        12,
        5,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- sal
    --Bolo de laranja sem lactose     (recipe_id: 6)
    (
        4,
        6,
        'Xícara',
        FALSE,
        FALSE,
        1.5,
        TRUE
    ), --farinha de trigo 
    (
        62,
        6,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --açúcar
    (
        180,
        6,
        'Unidade',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- suco de laranja 
    (
        179,
        6,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- óleo vegetal
    (
        64,
        6,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- fermento me pó
    --Panqueca de banana sem lactose     (recipe_id: 7)
    (
        36,
        7,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --banana 
    (
        4,
        7,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --farinha de trigo 
    (
        131,
        7,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- leite vegetal 
    (
        64,
        7,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- fermento em pó
    -- Risoto de Cogumelos sem lactose    (recipe_id: 8)
    (
        72,
        8,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --arroz arbóreo 
    (
        68,
        8,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --cogumelos  
    (
        74,
        8,
        'Xícara',
        FALSE,
        FALSE,
        4,
        TRUE
    ), -- caldo de legumes  
    (
        17,
        8,
        'Unidade',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- cebola
    (
        10,
        8,
        'Dente',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --alho 
    (
        11,
        8,
        'Colher de sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ), --azeite 
    (
        73,
        8,
        'Xícara',
        FALSE,
        FALSE,
        0.25,
        TRUE
    ), -- vinho branco 
    (
        12,
        8,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- sal
    -- Pão de Queijo Vegano    (recipe_id: 9)
    (
        110,
        9,
        'Xícara',
        FALSE,
        FALSE,
        1.5,
        TRUE
    ), --polvilho doce
    (
        46,
        9,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), --polvilho azedo 
    (
        20,
        9,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- batata
    (
        12,
        9,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- sal
    (
        179,
        9,
        'Xícara',
        FALSE,
        FALSE,
        0.25,
        TRUE
    ), --oléo vegetal
    -- Sorvete de Bnana e Cacau     (recipe_id: 10)
    (
        36,
        10,
        'Unidade',
        FALSE,
        FALSE,
        4,
        TRUE
    ), --banana
    (
        130,
        10,
        'Colher de sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ), --cacau em po  
    (
        62,
        10,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- açúcar
    -- Torta de maça sem lactose   (recipe_id: 11)
    (
        4,
        11,
        'Xícara',
        FALSE,
        FALSE,
        1.5,
        TRUE
    ), --farinha de trigo 
    (
        62,
        11,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --açúcar  
    (
        145,
        11,
        'Unidade',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- maçãs
    (
        103,
        11,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- canela 
    (
        179,
        11,
        'Xícara',
        FALSE,
        FALSE,
        0.25,
        TRUE
    ), --oléo vegetal
    (
        64,
        11,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), --fermento em pó
    -- Pudim de coco sem lactose (recipe_id: 12)
    (
        56,
        12,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- leite de coco
    (
        62,
        12,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- açúcar
    (
        163,
        12,
        'Colher de sopa',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- amido de milho
    (
        181,
        12,
        'Xícara',
        FALSE,
        FALSE,
        0.25,
        TRUE
    ), -- coco ralado
    -- Brownie sem lactose (recipe_id: 13)
    (
        4,
        13,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- farinha de trigo
    (
        130,
        13,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- cacau em pó
    (
        62,
        13,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- açúcar
    (
        179,
        13,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- óleo vegetal
    (
        64,
        13,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- fermento em pó
    (
        165,
        13,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- chocolate sem lactose
    -- Pizza sem lactose (recipe_id: 14)
    (
        4,
        14,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- farinha de trigo
    (
        64,
        14,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- fermento
    (
        22,
        14,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- água
    (
        12,
        14,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- sal
    (
        77,
        14,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- molho de tomate
    (
        81,
        14,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- temperos
    -- Iogurte de coco caseiro (recipe_id: 15)
    (
        56,
        15,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- leite de coco
    (
        182,
        15,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- chá de lactobacilos
    (
        127,
        15,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- mel
    -- Mousse de Chocolate sem lactose (recipe_id: 16)
    (
        165,
        16,
        'Gramas',
        FALSE,
        FALSE,
        200,
        TRUE
    ), -- chocolate sem lactose
    (
        56,
        16,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- leite de coco
    (
        62,
        16,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- açúcar
    -- Empadão de palmito sem lactose (recipe_id: 17)
    (
        4,
        17,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- farinha de trigo
    (
        179,
        17,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- óleo vegetal
    (
        84,
        17,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- palmito
    (
        17,
        17,
        'Unidade',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- cebola
    (
        10,
        17,
        'Dente',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- alho
    (
        81,
        17,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- temperos
    (
        22,
        17,
        'Xícara',
        FALSE,
        FALSE,
        0.25,
        TRUE
    ), -- água
    -- Leite condensado vegano (recipe_id: 18)
    (
        131,
        18,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- leite vegetal
    (
        62,
        18,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- açúcar
    (
        163,
        18,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- amido de milho
    -- Creme de abóbora sem lactose (recipe_id: 19)
    (
        94,
        19,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- abóbora
    (
        17,
        19,
        'Unidade',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- cebola
    (
        10,
        19,
        'Dente',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- alho
    (
        74,
        19,
        'Xícaras',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- caldo de legumes
    (
        12,
        19,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- sal
    (
        11,
        19,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- azeite
    -- Quiche de espinafre sem lactose (recipe_id: 20)
    (
        4,
        20,
        'Xícara',
        FALSE,
        FALSE,
        1.5,
        TRUE
    ), -- farinha de trigo
    (
        179,
        20,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- óleo vegetal
    (
        90,
        20,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- espinafre
    (
        17,
        20,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- cebola
    (
        10,
        20,
        'Dente',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- alho
    (
        140,
        20,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- tofu
    -- Bolo de cenoura sem lactose (recipe_id: 21)
    (
        4,
        21,
        'Xícara',
        FALSE,
        FALSE,
        1.5,
        TRUE
    ), -- farinha de trigo
    (
        16,
        21,
        'Unidade',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- cenoura
    (
        62,
        21,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- açúcar
    (
        179,
        21,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- óleo vegetal
    (
        64,
        21,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- fermento
    -- Pão integral sem lactose (recipe_id: 22)
    (
        85,
        22,
        'Xícara',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- farinha integral
    (
        64,
        22,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- fermento
    (
        62,
        22,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- açúcar
    (
        12,
        22,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- sal
    (
        22,
        22,
        'Xícaras',
        FALSE,
        FALSE,
        1.25,
        TRUE
    ), -- água
    --- Salada de frutas com leite de coco     (recipe_id: 23)
    (
        86,
        23,
        'Xícara',
        FALSE,
        FALSE,
        3,
        TRUE
    ), --frutas
    (
        56,
        23,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), ----leite de coco  
    (
        62,
        23,
        'Colher de chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ), ---- mel
    -- Brigadeiro Sem Lactose
    (
        186,
        24,
        'Colher de Sopa',
        FALSE,
        FALSE,
        4,
        TRUE
    ),
    (
        130,
        24,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        187,
        24,
        'Colher de Sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        188,
        24,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Lasanha de Legumes Sem Lactose
    (
        28,
        25,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        57,
        25,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        60,
        25,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        77,
        25,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        189,
        25,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Bolo de Amêndoas
    (
        108,
        26,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        1,
        26,
        'Unidade',
        FALSE,
        FALSE,
        4,
        TRUE
    ),
    (
        127,
        26,
        'Colher de Sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        64,
        26,
        'Colher de Chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        144,
        26,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Pão de Queijo
    (
        110,
        27,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        1,
        27,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        3,
        27,
        'Colher de Sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        111,
        27,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Macarrão de Arroz com Molho de Tomate
    (
        118,
        28,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        77,
        28,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        17,
        28,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        10,
        28,
        'Dente',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        190,
        28,
        'Colher de Sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Pizza com Massa de Couve-flor
    (
        21,
        29,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        111,
        29,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        1,
        29,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        12,
        29,
        'Colher de Chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Panquecas de Farinha de Arroz
    (
        116,
        30,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        1,
        30,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        3,
        30,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        62,
        30,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Salada de Quinoa
    (
        113,
        31,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        123,
        31,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        2,
        31,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        190,
        31,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        12,
        31,
        'Colher de Chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Sopa de Batata-doce
    (
        114,
        32,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        74,
        32,
        'Xícara',
        FALSE,
        FALSE,
        4,
        TRUE
    ),
    (
        17,
        32,
        'Colher de Sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        10,
        32,
        'Dente',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Cookies de Aveia sem Glúten
    (
        105,
        33,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        36,
        33,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        127,
        33,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        103,
        33,
        'Colher de Chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Arroz de Frutos do Mar
    (
        9,
        34,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        117,
        34,
        'Xícara',
        FALSE,
        FALSE,
        500,
        TRUE
    ),
    (
        190,
        34,
        'Colher de Sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        17,
        34,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Tortas de Batata
    (
        20,
        35,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        17,
        35,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        190,
        35,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        1,
        35,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Tortas de Batata
    (
        20,
        36,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        17,
        36,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        190,
        36,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        1,
        36,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Muffins de Cenoura sem Glúten
    (
        116,
        37,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        16,
        37,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        127,
        37,
        'Colher de Sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        64,
        37,
        'Colher de Chá',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Pasta de Grão-de-bico
    (
        119,
        38,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        120,
        38,
        'Colher de Sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        99,
        38,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        10,
        38,
        'Dente',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Sushi com Alga Nori
    (
        122,
        39,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        121,
        39,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        191,
        39,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Pudim de Chia com Leite de Coco
    (
        126,
        40,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        56,
        40,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        127,
        40,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Salada de Frutas com Iogurte Sem Glúten
    (
        40,
        41,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        86,
        41,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Curry de Frango sem Glúten
    (
        80,
        42,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        54,
        42,
        'Colher de Sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        56,
        42,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        190,
        42,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Bolinho de Chuva sem Glúten
    (
        116,
        43,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        62,
        43,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        1,
        43,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    --Creme de Abóbora
    (
        94,
        44,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    (
        74,
        44,
        'Xícara',
        FALSE,
        FALSE,
        4,
        TRUE
    ),
    (
        17,
        44,
        'Colher de Sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        10,
        44,
        'Dente',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Panqueca de Banana
    (
        36,
        45,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ),
    (
        105,
        45,
        'Colher de Sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ),
    --Lasanha de Berinjela
    (
        57,
        47,
        'Unidade',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Lasanha de Berinjela: Berinjela--certo
    (
        132,
        47,
        'Colher de sopa',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- Azeite---certo
    (
        52,
        47,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Molho de tomate--certo
    (
        166,
        47,
        'Fatia',
        FALSE,
        FALSE,
        10,
        TRUE
    ), -- Presunto--certo
    (
        87,
        47,
        'Fatia',
        FALSE,
        FALSE,
        15,
        TRUE
    ), -- Queijo----certo 
    (
        167,
        47,
        'Colher de sopa',
        FALSE,
        FALSE,
        10,
        TRUE
    ), -- Catupiry--certo
    (
        109,
        48,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Curry de Grão de Bico: Óleo--certo
    (
        17,
        48,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Cebola
    (
        81,
        48,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Temperos (a gosto) 
    (
        77,
        48,
        'Colher de sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Pasta de tomate
    (
        23,
        48,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Pimentão
    (
        59,
        48,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Cenoura
    (
        56,
        48,
        'ml',
        FALSE,
        FALSE,
        400,
        TRUE
    ), -- Leite de coco
    (
        22,
        48,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Água
    (
        19,
        48,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Brócolis
    (
        119,
        48,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Grão de bico
    (
        119,
        49,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Falafel: Grão de bico
    (
        17,
        49,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Cebola
    (
        10,
        49,
        'Dente',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Alho
    (
        61,
        49,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- Coentro
    (
        29,
        49,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- Salsinha
    (
        4,
        49,
        'Colher de sopa',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- Farinha
    (
        168,
        49,
        'Colher de chá',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- Bicarbonato de sódio
    (
        109,
        49,
        'Litros',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Óleo (para fritar)
    (
        10,
        50,
        'Dente',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- Sopa de Abóbora: Alho
    (
        109,
        50,
        'Colher de sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Óleo
    (
        17,
        50,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Cebola
    (
        94,
        50,
        'Gramas',
        FALSE,
        FALSE,
        800,
        TRUE
    ), -- Abóbora---certo
    (
        20,
        50,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Batata
    (
        22,
        50,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Água
    (
        74,
        50,
        'Litros',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Caldo de legumes
    (
        4,
        51,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Quiche de Espinafre Light: Farinha
    (
        11,
        51,
        'Colher de sopa',
        FALSE,
        FALSE,
        4,
        TRUE
    ), -- Azeite
    (
        12,
        51,
        'Colher de chá',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- Sal
    (
        90,
        51,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Espinafre
    (
        1,
        51,
        'Unidade',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- Ovos
    (
        34,
        51,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- Creme de leite
    --RISOSO DE COGUMELO
    (
        89,
        53,
        'Xícara',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Hambúrguer de Lentilha: Lentilha
    (
        10,
        53,
        'Dente',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Alho
    (
        17,
        53,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Cebola
    (
        81,
        53,
        'Colher de sopa',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Temperos (a gosto)
    --HAMBURGUER DE LENTINHA
    (
        10,
        52,
        'Dente',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Risoto de Cogumelo: Alho
    (
        17,
        52,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Cebola
    (
        11,
        52,
        'Colher de sopa',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- Azeite
    (
        134,
        52,
        'Gramas',
        FALSE,
        FALSE,
        300,
        TRUE
    ), -- Cogumelos
    (
        73,
        52,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- Vinho branco
    (
        2,
        52,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Tomate
    (
        169,
        52,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Salsão
    (
        74,
        52,
        'Litros',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Caldo (de legumes ou carne)
    (
        72,
        52,
        'Xícara',
        FALSE,
        FALSE,
        1.5,
        TRUE
    ), -- Arroz arbóreo---certo
    (
        34,
        52,
        'Xícara',
        FALSE,
        FALSE,
        1 / 4,
        TRUE
    ), -- Creme de leite
    (
        43,
        52,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- Queijo parmesão
    (
        14,
        52,
        'Colher',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Pimenta e sal
    (
        2,
        54,
        'Unidade',
        FALSE,
        FALSE,
        4,
        TRUE
    ), -- Pizza Margherita: Tomates
    (
        17,
        54,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Cebola
    (
        10,
        54,
        'Dente',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Alho
    (
        7,
        54,
        'Unidade',
        FALSE,
        FALSE,
        3,
        TRUE
    ), -- Manjericão
    (
        87,
        54,
        'Gramas',
        FALSE,
        FALSE,
        200,
        TRUE
    ), -- Queijo (muçarela)
    (
        109,
        55,
        'Colher de sopa',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Tacos de Feijão Preto: Óleo
    (
        17,
        55,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Cebola
    (
        170,
        55,
        'Gramas',
        FALSE,
        FALSE,
        250,
        TRUE
    ), -- Carne (opcional)
    (
        24,
        55,
        'Unidade',
        FALSE,
        FALSE,
        1,
        TRUE
    ), -- Pimentões
    (
        171,
        55,
        'Xícara',
        FALSE,
        FALSE,
        2,
        TRUE
    ), -- Feijão preto
    (
        22,
        55,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- Água
    (
        4,
        55,
        'Xícara',
        FALSE,
        FALSE,
        0.5,
        TRUE
    ), -- Farinha (para engrossar)

(
    5,
    56,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- nozes
(
    10,
    56,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), -- alho
(
    11,
    56,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- azeite
(
    12,
    56,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- sal
(
    42,
    56,
    'gramas',
    FALSE,
    FALSE,
    250,
    TRUE
), -- espaguete
(
    43,
    56,
    'Xíraca',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- parmesão
(
    60,
    56,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- abobrinha
--- Batata recheada com queijo e brocolis      (recipe_id: 57)
(
    20,
    57,
    'Unidade',
    FALSE,
    FALSE,
    4,
    TRUE
), --batat 
(
    19,
    57,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), ----brocolis   
(
    111,
    57,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), ----quijo ralado   
(
    17,
    57,
    'Unidade',
    FALSE,
    FALSE,
    0.5,
    TRUE
), --cebola 
(
    10,
    57,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), ----alho   
(
    6,
    57,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), ----manteiga 
(
    12,
    57,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), --sal
--- Ratatouile     (recipe_id: 58)
(
    57,
    58,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), --berinjela
(
    60,
    58,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), ----abobrinha  
(
    2,
    58,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), ----tomate  
(
    77,
    58,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), --molho de tomate 
(
    10,
    58,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), ----alho   
(
    15,
    58,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), ----alecrim  
(
    11,
    58,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), --azeite 
(
    12,
    58,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), --sal
--- Wrap de Vegtais     (recipe_id: 59)
(
    20,
    59,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), --batata
(
    58,
    59,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), ----cenoura 
(
    183,
    59,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), ----vagem   
(
    27,
    59,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), --ervilhas 
(
    97,
    59,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), ----maionese  
(
    135,
    59,
    'Unidade',
    FALSE,
    FALSE,
    4,
    TRUE
), ----tortilha 
(
    83,
    59,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), --alface 
(
    2,
    59,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), --tomate
--- Salada Caprese     (recipe_id: 60)
(
    2,
    60,
    'Unidade',
    FALSE,
    FALSE,
    4,
    TRUE
), --tomate
(
    7,
    60,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), ----manjericao 
(
    31,
    60,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), ---ricota 
(
    11,
    60,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), --azeite  
(
    12,
    60,
    'Colher de chá ',
    FALSE,
    FALSE,
    1,
    TRUE
), ----sal
--- Ceviche de ceju  (recipe_id: 61)
(
    184,
    61,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), --castanha de caju 
(
    185,
    61,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), ---caju
(
    136,
    61,
    'Unidade',
    FALSE,
    FALSE,
    0.5,
    TRUE
), ----cebola roxa    
(
    24,
    61,
    'Xícara',
    FALSE,
    FALSE,
    0.25,
    TRUE
), --- pimentão
(
    61,
    61,
    'Xícara',
    FALSE,
    FALSE,
    0.25,
    TRUE
), ----coentro   
(
    99,
    61,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), ----limão
--- Omelete de lugumes  (recipe_id: 62)
(
    1,
    62,
    'Unidade',
    FALSE,
    FALSE,
    3,
    TRUE
), --ovos 
(
    20,
    62,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), ---batata
(
    19,
    62,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), ----brocolis  
(
    2,
    62,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), ----tomate  
(
    111,
    62,
    'Xícara',
    FALSE,
    FALSE,
    0.25,
    TRUE
), ----queijo ralado 
(
    81,
    62,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), ----tempero 
(
    11,
    62,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), --- azeite
---Tabule de Quinoa  (recipe_id: 63)
(
    113,
    63,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), --quinoa  
(
    2,
    63,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), ---tomate 
(
    17,
    63,
    'Unidade',
    FALSE,
    FALSE,
    0.5,
    TRUE
), ----cebola  
(
    123,
    63,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), --- pepino
(
    29,
    63,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), ----salsinha  
(
    11,
    63,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), --- azeite
(
    99,
    63,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), ----limão   
(
    12,
    63,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), ----sal
---Nhoqe de batata doce (recipe_id: 64)
(
    114,
    64,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), --batat doce   
(
    1,
    64,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), ---ovo
(
    4,
    64,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), ----farinha de trigo   
(
    43,
    64,
    'Xícara',
    FALSE,
    FALSE,
    0.25,
    TRUE
), --- quijo parmesão
(
    2,
    64,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), ---sal
(
    109,
    64,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), ---oléo

(
    148,
    65,
    'Gramas',
    FALSE,
    FALSE,
    300,
    true
), -- Camarão
(
    11,
    65,
    'Colher de Sopa',
    FALSE,
    FALSE,
    2,
    true
), -- Azeite
(
    10,
    65,
    'Dente',
    FALSE,
    FALSE,
    3,
    true
), -- Alho
(
    72,
    65,
    'Xícara',
    FALSE,
    FALSE,
    1.5,
    true
), -- Arroz Arbóreo
(
    74,
    65,
    'Xícara',
    FALSE,
    FALSE,
    2,
    true
), -- Caldo de Legumes
(
    73,
    65,
    'Xícara',
    FALSE,
    FALSE,
    1,
    true
), -- Vinho Branco
(
    6,
    65,
    'Colher de Sopa',
    FALSE,
    FALSE,
    2,
    true
), -- Manteiga
(
    192,
    65,
    'Colher de Sopa',
    FALSE,
    FALSE,
    4,
    true
), -- Parmesão Ralado
(
    12,
    65,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    true
), -- Sal
(
    14,
    65,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    true
), -- Pimenta

(
    121,
    66,
    'Xícara',
    FALSE,
    FALSE,
    1.5,
    true
), -- Arroz de sushi
(
    149,
    66,
    'Gramas',
    FALSE,
    FALSE,
    200,
    true
), -- Salmão
(
    122,
    66,
    'Folhas',
    FALSE,
    FALSE,
    3,
    true
), -- Algas Nori
(
    123,
    66,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Pepino
(
    65,
    66,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Abacate
(
    125,
    66,
    'Colher de Sopa',
    FALSE,
    FALSE,
    2,
    true
), -- Molho de Soja

(
    151,
    67,
    'Gramas',
    FALSE,
    FALSE,
    200,
    true
), -- Atum
(
    83,
    67,
    'Xícara',
    FALSE,
    FALSE,
    2,
    true
), -- Alface
(
    2,
    67,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Tomate
(
    17,
    67,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Cebola
(
    123,
    67,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Pepino
(
    11,
    67,
    'Colher de Sopa',
    FALSE,
    FALSE,
    2,
    true
), -- Azeite
(
    22,
    67,
    'Colher de Sopa',
    FALSE,
    FALSE,
    1,
    true
), -- Vinagre
(
    12,
    67,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    true
), -- Sal
(
    14,
    67,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    true
), -- Pimenta

(
    117,
    68,
    'Gramas',
    FALSE,
    FALSE,
    300,
    true
), -- Frutos do mar
(
    11,
    68,
    'Colher de Sopa',
    FALSE,
    FALSE,
    2,
    true
), -- Azeite
(
    10,
    68,
    'Dente',
    FALSE,
    FALSE,
    3,
    true
), -- Alho
(
    12,
    68,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    true
), -- Sal
(
    14,
    68,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    true
), -- Pimenta
(
    99,
    68,
    'Colher de Sopa',
    FALSE,
    FALSE,
    1,
    true
), -- Limão

(
    124,
    69,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Peixe
(
    77,
    69,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    true
), -- Molho de Tomate
(
    82,
    69,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Tortilha

(
    124,
    70,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Peixe
(
    147,
    70,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    true
), -- Legumes
(
    112,
    70,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    true
), -- Ervas

(
    42,
    71,
    'Gramas',
    FALSE,
    FALSE,
    250,
    true
), -- Espaguete 
(
    148,
    71,
    'Unidade',
    FALSE,
    FALSE,
    10,
    true
), -- camarão
(
    77,
    71,
    'Xícara',
    FALSE,
    FALSE,
    1,
    true
), --  Molho de Tomate

(
    124,
    72,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), --Peixe
(
    99,
    72,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Limão
(
    136,
    72,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Cebola roxa
(
    61,
    72,
    'Colher de Sopa',
    FALSE,
    FALSE,
    1,
    true
), -- Coentro
(
    14,
    72,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    true
), -- Pimenta
(
    2,
    72,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Tomate
(
    123,
    72,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Pepino
(
    12,
    72,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    true
), -- Sal

(
    113,
    73,
    'Xícara',
    FALSE,
    FALSE,
    1,
    true
), -- Quinoa
(
    149,
    73,
    'Gramas',
    FALSE,
    FALSE,
    200,
    true
), -- Salmão
(
    65,
    73,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Abacate
(
    83,
    73,
    'Xícara',
    FALSE,
    FALSE,
    2,
    true
), -- Alface
(
    123,
    73,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Pepino
(
    2,
    73,
    'Unidade',
    FALSE,
    FALSE,
    1,
    true
), -- Tomate
(
    99,
    73,
    'Colher de Sopa',
    FALSE,
    FALSE,
    1,
    true
), -- Limão
(
    11,
    73,
    'Colher de Sopa',
    FALSE,
    FALSE,
    2,
    true
), -- Azeite
(
    12,
    73,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    true
), -- Sal
(
    14,
    73,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    true
), -- Pimenta

(
    8,
    74,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Saduiche de peixe :filé de peixe gralhado
(
    101,
    74,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- pão 
(
    97,
    74,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- maionese
(
    83,
    74,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- alface
(
    2,
    74,
    'Unidade',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- tomate 
(
    12,
    74,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Sal
(
    14,
    74,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- pimenta

(
    124,
    75,
    'Gramas',
    FALSE,
    FALSE,
    200,
    TRUE
), -- bolinho de peixe: peixe
(
    20,
    75,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- batata
(
    1,
    75,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- ovo
(
    3,
    75,
    'Xícara',
    FALSE,
    FALSE,
    0.25,
    TRUE
), -- farinha de rosca 
(
    76,
    75,
    'Xícara',
    FALSE,
    FALSE,
    1 / 4,
    TRUE
), ----sal
(
    14,
    75,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- pimenta
(
    109,
    75,
    'Colher de sopa',
    FALSE,
    FALSE,
    5,
    TRUE
), -- Oleo

(
    148,
    75,
    'Gramas',
    FALSE,
    FALSE,
    300,
    TRUE
), -- camrao ao alho : camarão
(
    10,
    76,
    'Dente',
    FALSE,
    FALSE,
    3,
    TRUE
), -- alho 
(
    11,
    76,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Azeite
(
    12,
    76,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- sal
(
    14,
    76,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- pimenta
(
    29,
    76,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- salsinha 
(
    99,
    76,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Suco de 1/2 limão

(
    153,
    77,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Pizza de mariscos: massa de pizza 
(
    154,
    77,
    'Gramas',
    FALSE,
    FALSE,
    200,
    TRUE
), -- mariscos
(
    77,
    77,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- molho de tomate 
(
    26,
    77,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- quijo mussarela 
(
    78,
    77,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- oregano 
(
    11,
    77,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- azeite

(
    155,
    78,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- pasta de sardinha :sardinha 
(
    97,
    78,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), -- maionese
(
    99,
    78,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- limão
(
    61,
    78,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- coentro 
(
    12,
    78,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- sal 
(
    14,
    78,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- pimenta 
(
    29,
    78,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), --salsinha

(
    124,
    79,
    'Gramas',
    FALSE,
    FALSE,
    300,
    TRUE
), -- curry de peixe : file de peixe 
(
    56,
    79,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- leite de coco
(
    136,
    79,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- cebola 
(
    54,
    79,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- curry em pó 
(
    12,
    79,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- sal 
(
    14,
    79,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- pimenta 
(
    29,
    79,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- salsinha
(
    61,
    79,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- contro 
(
    9,
    79,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Paella de frutos de mar :arroz 
(
    117,
    80,
    'Gramas',
    FALSE,
    FALSE,
    500,
    TRUE
), -- frutos do mar 
(
    17,
    80,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), --- cebola 
(
    10,
    80,
    'Dente',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Alho
(
    24,
    80,
    'Unidade',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- pimentão
(
    157,
    80,
    'Xícara',
    FALSE,
    FALSE,
    2,
    TRUE
), -- caldo de peixe 
(
    12,
    80,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- sal 
(
    61,
    80,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- acafrão 
(
    99,
    80,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- limão

(
    124,
    81,
    'Gramas',
    FALSE,
    FALSE,
    250,
    TRUE
), -- Bolo de peixe : peixe 
(
    1,
    81,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- ovos
(
    4,
    81,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), --farinha de trigo
(
    3,
    81,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- leite 
(
    12,
    81,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- sal 
(
    14,
    81,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- pimenta

(
    117,
    82,
    'Gramas',
    FALSE,
    FALSE,
    300,
    TRUE
), -- Salada de frutos do mar : frutos do mar 
(
    24,
    82,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- pimentão picado 
(
    2,
    82,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), --- tomate 
(
    83,
    82,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -----alface 
(
    175,
    82,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), -- azeitona 
(
    12,
    82,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- sal 
(
    14,
    82,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- pimenta 
(
    11,
    82,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- azeite 
(
    99,
    82,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), --limão 
(
    84,
    82,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- palmito
-- Filé de Peixe Grelhado (recipe_id: 83)
(
    19,
    83,
    'Filé',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Filé de Peixe
(
    10,
    83,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alho
(
    99,
    83,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    11,
    83,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    12,
    83,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    13,
    83,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
-- Camarão na Moranga (recipe_id: 84)
(
    148,
    84,
    'Gramas',
    FALSE,
    FALSE,
    200,
    TRUE
), -- Camarão
(
    158,
    84,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Moranga
(
    10,
    84,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alho
(
    17,
    84,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    34,
    84,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Creme de Leite
(
    87,
    84,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo Muçarela
(
    11,
    84,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    12,
    84,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    13,
    84,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
(
    61,
    84,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Coentro
-- Bolo de Chocolate Vegano (recipe_id: 85)
(
    104,
    85,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Chocolate em pó
(
    108,
    85,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Amêndoas
(
    139,
    85,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Açúcar Mascavo
(
    64,
    85,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
(
    131,
    85,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Leite Vegetal
(
    11,
    85,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Azeite
-- Salada de Quinoa e Grão-de-bico (recipe_id: 86)
(
    113,
    86,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Quinoa
(
    119,
    86,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Grão-de-bico
(
    83,
    86,
    'Folhas',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Alface
(
    99,
    86,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    23,
    86,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Pimentão Verde
(
    18,
    86,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebolinha
-- Sopa de Abóbora com Coco (recipe_id: 87)
(
    94,
    87,
    'Xícara',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Abóbora
(
    56,
    87,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Leite de Coco
(
    17,
    87,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    10,
    87,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alho
(
    12,
    87,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    11,
    87,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
-- Hambúrguer de Lentilha (recipe_id: 88)
(
    89,
    88,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Lentilhas
(
    17,
    88,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    87,
    88,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    10,
    88,
    'Dente',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Alho
(
    81,
    88,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Temperos (a gosto)
-- Pasta de Berinjela (Baba Ganoush) (recipe_id: 89)
(
    57,
    89,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Berinjela
(
    119,
    89,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Grão de bico
(
    120,
    89,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Tahine
(
    10,
    89,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alho
(
    99,
    89,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    12,
    89,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Curry de Grão-de-bico (recipe_id: 90)
(
    119,
    90,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Grão de bico
(
    54,
    90,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Curry em pó
(
    17,
    90,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    10,
    90,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alho
(
    56,
    90,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Leite de coco
(
    23,
    90,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Pimentão
(
    12,
    90,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Smoothie Verde com Espinafre (recipe_id: 91)
(
    90,
    91,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Espinafre
(
    145,
    91,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Maçã
(
    36,
    91,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Banana
(
    131,
    91,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Leite Vegetal
(
    41,
    91,
    'Cubo',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Gelo
-- Tacos de Cogumelos (recipe_id: 92)
(
    134,
    92,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cogumelos
(
    11,
    92,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    23,
    92,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Pimentão Verde
(
    136,
    92,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola Roxa
(
    82,
    92,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Tortilhas
(
    12,
    92,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    13,
    92,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
-- Panquecas de Banana e Aveia (recipe_id: 93)
(
    36,
    93,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Banana
(
    105,
    93,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Aveia
(
    64,
    93,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
(
    11,
    93,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
-- Ceviche de Manga (recipe_id: 94)
(
    39,
    94,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Manga
(
    99,
    94,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    136,
    94,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola Roxa
(
    61,
    94,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Coentro
(
    13,
    94,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
-- Pasta de Amendoim e Banana (recipe_id: 95)
(
    137,
    95,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Pasta de Amendoim
(
    36,
    95,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Banana
-- Muffins de Cenoura (recipe_id: 96)
(
    16,
    96,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Cenoura
(
    64,
    96,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
(
    62,
    96,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Açúcar
(
    108,
    96,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Amêndoas
-- Lasanha de Abobrinha (recipe_id: 97)
(
    60,
    97,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Abobrinha
(
    132,
    97,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    52,
    97,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Molho de Tomate
(
    87,
    97,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    167,
    97,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Catupiry
-- Chili Vegano (recipe_id: 98)
(
    141,
    98,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Feijão Preto
(
    17,
    98,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    10,
    98,
    'Dente',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Alho
(
    23,
    98,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Pimentão Verde
(
    172,
    98,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cominho
(
    13,
    98,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
-- Pizza Vegana com Vegetais (recipe_id: 99)
(
    142,
    99,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Massa de Pizza Vegana
(
    30,
    99,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Tomate Pelado
(
    45,
    99,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cheiro Verde
(
    60,
    99,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Abobrinha
(
    134,
    99,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cogumelo
(
    78,
    99,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Orégano
(
    12,
    99,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Sorvete de Banana (recipe_id: 100)
(
    36,
    100,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Banana
(
    130,
    100,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cacau em pó
(
    41,
    100,
    'Cubo',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Gelo
-- Bolinhos de Batata Doce (recipe_id: 101)
(
    114,
    101,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Batata-doce
(
    64,
    101,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
(
    62,
    101,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
-- Torta de Maçã Vegana (recipe_id: 102)
(
    145,
    102,
    'Unidade',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Maçã
(
    108,
    102,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Amêndoas
(
    139,
    102,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar Mascavo
(
    103,
    102,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Canela
-- Pudim de Chia com Frutas (recipe_id: 103)
(
    126,
    103,
    'Colher de sopa',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Sementes de Chia
(
    131,
    103,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Leite Vegetal
(
    86,
    103,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Frutas variadas
-- Wraps de Alface com Hummus (recipe_id: 104)
(
    83,
    104,
    'Folhas',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Alface
(
    146,
    104,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Hummus
-- Risoto de Cogumelos (recipe_id: 105)
(
    72,
    105,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Arroz Arbóreo
(
    134,
    105,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cogumelos
(
    73,
    105,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Vinho Branco
(
    74,
    105,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Caldo de Legumes
(
    11,
    105,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    12,
    105,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Frango à Parmegiana (recipe_id: 106)
(
    75,
    106,
    'Filé',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Filé de Frango
(
    77,
    106,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Molho de Tomate
(
    87,
    106,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    76,
    106,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Farinha de Rosca
(
    12,
    106,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    13,
    106,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
-- Taco de Frango (recipe_id: 107)
(
    100,
    107,
    'Gramas',
    FALSE,
    FALSE,
    150,
    TRUE
), -- Frango
(
    23,
    107,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Pimentão Verde
(
    82,
    107,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Tortilhas
(
    10,
    107,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alho
(
    99,
    107,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    12,
    107,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Sopa de Lentilhas (recipe_id: 108)
(
    89,
    108,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Lentilhas
(
    17,
    108,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    10,
    108,
    'Dente',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Alho
(
    22,
    108,
    'Xícara',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Água
(
    12,
    108,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    81,
    108,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Temperos (a gosto)
-- Lasanha Vegetariana (recipe_id: 109)
(
    28,
    109,
    'Folhas',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Massa de Lasanha
(
    52,
    109,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Molho de Tomate
(
    31,
    109,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ricota
(
    60,
    109,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Abobrinha
(
    134,
    109,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cogumelo
(
    87,
    109,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
-- Quiche de Legumes (recipe_id: 110)
(
    170,
    110,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Legumes variados
(
    34,
    110,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Creme de Leite
(
    16,
    110,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cenoura
(
    17,
    110,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    87,
    110,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    12,
    110,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Pasta de Abobrinha (recipe_id: 111)
(
    60,
    111,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Abobrinha
(
    11,
    111,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    10,
    111,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alho
(
    12,
    111,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    13,
    111,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
-- Cuscuz Marroquino (recipe_id: 112)
(
    91,
    112,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cuscuz
(
    22,
    112,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Água
(
    45,
    112,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cheiro Verde
(
    12,
    112,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Bolo de Batata (recipe_id: 113)
(
    20,
    113,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Batata
(
    64,
    113,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
(
    16,
    113,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cenoura
(
    62,
    113,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    12,
    113,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Creme de Abóbora (recipe_id: 114)
(
    94,
    114,
    'Xícara',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Abóbora
(
    56,
    114,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Leite de Coco
(
    17,
    114,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    10,
    114,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alho
(
    12,
    114,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    11,
    114,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
-- Salada Caesar sem Frutos do Mar (recipe_id: 115)
(
    95,
    115,
    'Folhas',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Alface Romana
(
    96,
    115,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Croutons
(
    87,
    115,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    97,
    115,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Maionese
(
    12,
    115,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Sanduíche de Frango (recipe_id: 116)
(
    80,
    116,
    'Gramas',
    FALSE,
    FALSE,
    100,
    TRUE
), -- Peito de Frango
(
    101,
    116,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Pão
(
    87,
    116,
    'Fatia',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Queijo
(
    99,
    116,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    83,
    116,
    'Folha',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alface
(
    12,
    116,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Muffins de Espinafre (recipe_id: 117)
(
    90,
    117,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Espinafre
(
    64,
    117,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
(
    62,
    117,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    108,
    117,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Amêndoas
-- Pasta com Molho de Tomate (recipe_id: 118)
(
    102,
    118,
    'Gramas',
    FALSE,
    FALSE,
    200,
    TRUE
), -- Massa
(
    52,
    118,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Molho de Tomate
(
    45,
    118,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cheiro Verde
(
    12,
    118,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    13,
    118,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
-- Panquecas de Batata (recipe_id: 119)
(
    20,
    119,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Batata
(
    64,
    119,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
(
    1,
    119,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ovo
(
    12,
    119,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Arroz Doce (recipe_id: 120)
(
    3,
    120,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Leite
(
    9,
    120,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Arroz Branco
(
    62,
    120,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    103,
    120,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Canela
-- Biscoitos de Aveia (recipe_id: 121)
(
    105,
    121,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Aveia
(
    62,
    121,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    108,
    121,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Amêndoas
(
    1,
    121,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ovo
-- Ceviche de Frutas (recipe_id: 122)
(
    38,
    122,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Manga
(
    162,
    122,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Frutas Vermelhas
(
    39,
    122,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Abacaxi
(
    99,
    122,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
-- Bolo de Cenoura com Cobertura de Chocolate (recipe_id: 123)
(
    16,
    123,
    'Unidade',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Cenoura
(
    104,
    123,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Chocolate
(
    62,
    123,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Açúcar
(
    64,
    123,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
-- Muffin de Banana (recipe_id: 124)
(
    36,
    124,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Banana
(
    62,
    124,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    108,
    124,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Amêndoas
(
    64,
    124,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
-- Risoto de Abóbora e Queijo (recipe_id: 125)
(
    72,
    125,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Arroz Arbóreo
(
    94,
    125,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Abóbora
(
    87,
    125,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    74,
    125,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Caldo de Legumes
-- Chili Vegetariano (recipe_id: 126)
(
    141,
    126,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Feijão Preto
(
    17,
    126,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    10,
    126,
    'Dente',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Alho
(
    23,
    126,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Pimentão Verde
(
    172,
    126,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cominho
(
    13,
    126,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
-- Canelone de Ricota e Espinafre (recipe_id: 127)
(
    31,
    127,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ricota
(
    90,
    127,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Espinafre
(
    28,
    127,
    'Folha',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Massa de Lasanha
(
    52,
    127,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Molho de Tomate
(
    87,
    127,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    12,
    127,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Torta de Legumes (recipe_id: 128)
(
    173,
    128,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Legumes variados
(
    34,
    128,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Creme de Leite
(
    16,
    128,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cenoura
(
    17,
    128,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    87,
    128,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    12,
    128,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Pudim de Leite Condensado (recipe_id: 129)
(
    174,
    129,
    'Lata',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Leite Condensado
(
    3,
    129,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Leite
(
    1,
    129,
    'Unidade',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Ovo
(
    62,
    129,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
-- Panquecas de Espinafre (recipe_id: 130)
(
    90,
    130,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Espinafre
(
    105,
    130,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Aveia
(
    64,
    130,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
(
    1,
    130,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ovo
-- Crepe de Queijo e Presunto (recipe_id: 131)
(
    87,
    131,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    166,
    131,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Presunto
(
    4,
    131,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Trigo
(
    3,
    131,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Leite
(
    1,
    131,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ovo
-- Pasta de Abacate (recipe_id: 132)
(
    65,
    132,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Abacate
(
    99,
    132,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    12,
    132,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    13,
    132,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
-- Salada de Grão-de-Bico (recipe_id: 133)
(
    119,
    133,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Grão-de-Bico
(
    83,
    133,
    'Folhas',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Alface
(
    18,
    133,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebolinha
(
    99,
    133,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    12,
    133,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Bolo de Iogurte (recipe_id: 134)
(
    40,
    134,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Iogurte
(
    4,
    134,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Trigo
(
    62,
    134,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    1,
    134,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Ovo
(
    64,
    134,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
-- Pasta de Azeitona (recipe_id: 135)
(
    175,
    135,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeitona
(
    11,
    135,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    99,
    135,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    12,
    135,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Cuscuz Marroquino com Legumes (recipe_id: 136)
(
    91,
    136,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cuscuz
(
    173,
    136,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Legumes variados
(
    22,
    136,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Água
(
    45,
    136,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cheiro Verde
-- Batata Gratinada (recipe_id: 137)
(
    20,
    137,
    'Unidade',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Batata
(
    34,
    137,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Creme de Leite
(
    87,
    137,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    12,
    137,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Tapioca com Queijo e Coco (recipe_id: 138)
(
    138,
    138,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Tapioca
(
    87,
    138,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    65,
    138,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Coco
(
    62,
    138,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Açúcar
-- Sopa de Lentilha (recipe_id: 139)
(
    89,
    139,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Lentilhas
(
    17,
    139,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    10,
    139,
    'Dente',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Alho
(
    22,
    139,
    'Xícara',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Água
(
    12,
    139,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
--Farofa de Banana (recipe_id: 140)
(
    17,
    140,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    6,
    140,
    'Colher de Chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Manteiga
(
    36,
    140,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Banana
--Quibe de Abóbora(recipe_id: 141)
(
    94,
    141,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    4,
    141,
    'Gramas',
    FALSE,
    FALSE,
    500,
    TRUE
), -- Cebola
(
    17,
    141,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
-- Pasta de Grão-de-Bico (recipe_id: 142)
(
    119,
    142,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Grão-de-Bico
(
    120,
    142,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Tahine
(
    99,
    142,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    12,
    142,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Bolo de Cenoura sem Nozes (recipe_id: 143)
(
    16,
    143,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Cenoura
(
    108,
    143,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Amêndoas
(
    62,
    143,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    64,
    143,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
-- Pasta de Grão-de-Bico (Hummus) (recipe_id: 144)
(
    119,
    144,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Grão-de-Bico
(
    120,
    144,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Tahine
(
    99,
    144,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    12,
    144,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Arroz com Legumes (recipe_id: 145)
(
    9,
    145,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Arroz Branco
(
    173,
    145,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Legumes variados
(
    22,
    145,
    'Xícara',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Água
(
    12,
    145,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Sopa de Lentilhas (recipe_id: 146)
(
    89,
    146,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Lentilhas
(
    17,
    146,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    10,
    146,
    'Dente',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Alho
(
    22,
    146,
    'Xícara',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Água
(
    12,
    146,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Biscoitos de Aveia (recipe_id: 147)
(
    105,
    147,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Aveia
(
    62,
    147,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    108,
    147,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Amêndoas
(
    1,
    147,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ovo
-- Frango ao Molho de Laranja (recipe_id: 148)
(
    100,
    148,
    'Gramas',
    FALSE,
    FALSE,
    150,
    TRUE
), -- Frango
(
    99,
    148,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Laranja
(
    11,
    148,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    12,
    148,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Pasta de Tomate Seco (recipe_id: 149)
(
    160,
    149,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Tomate Seco
(
    11,
    149,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    12,
    149,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    13,
    149,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Pimenta
-- Pizza de Legumes (recipe_id: 150)
(
    142,
    150,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Massa de Pizza
(
    173,
    150,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Legumes variados
(
    52,
    150,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Molho de Tomate
(
    87,
    150,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
-- Quiche de Legumes (recipe_id: 151)
(
    170,
    151,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Legumes variados
(
    34,
    151,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Creme de Leite
(
    16,
    151,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cenoura
(
    87,
    151,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    12,
    151,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Panquecas de Aveia (recipe_id: 152)
(
    105,
    152,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Aveia
(
    3,
    152,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Leite
(
    1,
    152,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ovo
(
    64,
    152,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
-- Bolinho de Chuva (recipe_id: 153)
(
    4,
    153,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Trigo
(
    62,
    153,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    3,
    153,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Leite
(
    1,
    153,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ovo
(
    64,
    153,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
-- Sushi com Peixe e Legumes (recipe_id: 154)
(
    121,
    154,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Arroz Japonês
(
    124,
    154,
    'Gramas',
    FALSE,
    FALSE,
    100,
    TRUE
), -- Peixe Cru
(
    122,
    154,
    'Folha',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alga Nori
(
    173,
    154,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Legumes variados
-- Torta de Limão sem Nozes (recipe_id: 155)
(
    99,
    155,
    'Unidade',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Limão
(
    108,
    155,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Amêndoas
(
    62,
    155,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    63,
    155,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Essência de Baunilha
-- Salada de Frutas (recipe_id: 156)
(
    162,
    156,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Frutas Vermelhas
(
    145,
    156,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Maçã
(
    39,
    156,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Manga
(
    99,
    156,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
-- Risoto de Limão (recipe_id: 157)
(
    72,
    157,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Arroz Arbóreo
(
    99,
    157,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    74,
    157,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Caldo de Legumes
(
    87,
    157,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    11,
    157,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
-- Cuscuz de Legumes (recipe_id: 158)
(
    91,
    158,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cuscuz
(
    173,
    158,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Legumes variados
(
    22,
    158,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Água
(
    45,
    158,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cheiro Verde
-- Muffins de Frutas (recipe_id: 159)
(
    86,
    159,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Frutas variadas
(
    108,
    159,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Amêndoas
(
    62,
    159,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    64,
    159,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
-- Wraps de Frango (recipe_id: 160)
(
    100,
    160,
    'Gramas',
    FALSE,
    FALSE,
    150,
    TRUE
), -- Frango
(
    83,
    160,
    'Folhas',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Alface
(
    11,
    160,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    99,
    160,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    12,
    160,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Tacos de Frango (recipe_id: 161)
(
    100,
    161,
    'Gramas',
    FALSE,
    FALSE,
    150,
    TRUE
), -- Frango
(
    23,
    161,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Pimentão Verde
(
    82,
    161,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Tortilhas
(
    10,
    161,
    'Dente',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Alho
(
    12,
    161,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Crumble de Maçã (recipe_id: 162)
(
    145,
    162,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Maçã
(
    62,
    162,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Açúcar
(
    105,
    162,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Aveia
(
    144,
    162,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Óleo de Coco
-- Arroz à Grega (recipe_id: 163)
(
    9,
    163,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Arroz Branco
(
    173,
    163,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Legumes variados
(
    22,
    163,
    'Xícara',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Água
(
    12,
    163,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Omelete de Queijo e Ervas (recipe_id: 164)
(
    1,
    164,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Ovo
(
    87,
    164,
    'Fatia',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Queijo
(
    112,
    164,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ervas secas
(
    12,
    164,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Canelone de Ricota (recipe_id: 165)
(
    31,
    165,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ricota
(
    28,
    165,
    'Folha',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Massa de Lasanha
(
    52,
    165,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Molho de Tomate
(
    87,
    165,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    12,
    165,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Batata Recheada (recipe_id: 166)
(
    20,
    166,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Batata
(
    87,
    166,
    'Fatia',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Queijo
(
    166,
    166,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Presunto
(
    12,
    166,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Smoothie de Frutas (recipe_id: 167)
(
    35,
    167,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Smoothie de Frutas
(
    41,
    167,
    'Cubo',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Gelo
-- Salada de Quinoa (recipe_id: 168)
(
    113,
    168,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Quinoa
(
    83,
    168,
    'Folhas',
    FALSE,
    FALSE,
    4,
    TRUE
), -- Alface
(
    18,
    168,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebolinha
(
    99,
    168,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    12,
    168,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Espaguete com Alho e Óleo (recipe_id: 169)
(
    42,
    169,
    'Gramas',
    FALSE,
    FALSE,
    200,
    TRUE
), -- Espaguete
(
    10,
    169,
    'Dente',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Alho
(
    11,
    169,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Azeite
(
    12,
    169,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Bolinho de Batata (recipe_id: 170)
(
    20,
    170,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Batata
(
    64,
    170,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
(
    1,
    170,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Ovo
(
    12,
    170,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Salada de Batata (recipe_id: 171)
(
    20,
    171,
    'Unidade',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Batata
(
    17,
    171,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    97,
    171,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Maionese
(
    12,
    171,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Pão de Queijo (recipe_id: 172)
(
    111,
    172,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Queijo ralado
(
    46,
    172,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Polvilho Azedo
(
    3,
    172,
    'Xícara',
    FALSE,
    FALSE,
    0.5,
    TRUE
), -- Leite
(
    6,
    172,
    'Colher de sopa',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Manteiga
-- Curry de Legumes (recipe_id: 173)
(
    170,
    173,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Legumes variados
(
    54,
    173,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Curry em pó
(
    10,
    173,
    'Dente',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Alho
(
    17,
    173,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Cebola
(
    56,
    173,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Leite de Coco
(
    12,
    173,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Torta de Batata (recipe_id: 174)
(
    20,
    174,
    'Unidade',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Batata
(
    34,
    174,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Creme de Leite
(
    87,
    174,
    'Fatia',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Queijo
(
    1,
    174,
    'Unidade',
    FALSE,
    FALSE,
    2,
    TRUE
), -- Ovo
(
    12,
    174,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
-- Bolo de Cenoura (recipe_id: 175)
(
    16,
    175,
    'Unidade',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Cenoura
(
    4,
    175,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Farinha de Trigo
(
    62,
    175,
    'Xícara',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Açúcar
(
    64,
    175,
    'Colher de chá',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Fermento em pó
(
    1,
    175,
    'Unidade',
    FALSE,
    FALSE,
    3,
    TRUE
), -- Ovo
-- Pasta de Abacate (recipe_id: 176)
(
    65,
    176,
    'Unidade',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Abacate
(
    99,
    176,
    'Colher de sopa',
    FALSE,
    FALSE,
    1,
    TRUE
), -- Limão
(
    12,
    176,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
), -- Sal
(
    13,
    176,
    'A gosto',
    FALSE,
    FALSE,
    NULL,
    TRUE
);
-- Pimenta
-- Ligação entre Receitas e Restrições (Recipe_Restriction)
UPDATE ingredient_recipe SET transaction_made = False;

INSERT INTO
    Recipe_Restriction (restriction_id, recipe_id)
SELECT DISTINCT
    i.restriction_id,
    ir.recipe_id
FROM
    Ingredient_Recipe ir
    JOIN Ingredient_Restriction i ON ir.ingredient_id = i.ingredient_id
    JOIN Recipe r ON ir.recipe_id = r.id;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsorvete-banana-cacau.webp?alt=media&token=137a9f35-91f1-4f52-8a0c-d83401392c8c'
WHERE
    id = 10;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpizza-margherita.avif?alt=media&token=16a022ba-8954-45c1-9a5f-8ffc1e8d1a68'
WHERE
    id = 54;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftacos-feijao-preto.jpg?alt=media&token=432ebf6c-b40a-4855-a895-480be8e461b3'
WHERE
    id = 55;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpudim-coco-lactose.jfif?alt=media&token=fcc4468c-d5d9-43c4-b0c0-2014441725bc'
WHERE
    id = 12;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpizza-sem-lactose.jfif?alt=media&token=9c9af7b3-ad41-4b01-8ef0-0b2f35a00fdc'
WHERE
    id = 14;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-de-batata-doce.jpg?alt=media&token=68f119d2-97df-4882-a84a-5f1a1b34a438'
WHERE
    id = 32;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpudim-de-chia-com-frutas.webp?alt=media&token=6921e012-6857-4182-9d89-01d7bdf600a0'
WHERE
    id = 40;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FCreme-de-ab%C3%B3bora.jpg?alt=media&token=88e23848-8cb7-4859-95db-543ea8243cc5'
WHERE
    id = 44;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpasta-abobrinha.jfif?alt=media&token=414101be-2cad-44b5-a9cd-b4041c0769c3'
WHERE
    id = 111;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcuscuz-marroquino.jpg?alt=media&token=8db11a72-cdf8-4ed5-a357-34ceff8f683d'
WHERE
    id = 112;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FCreme-de-ab%C3%B3bora.jpg?alt=media&token=88e23848-8cb7-4859-95db-543ea8243cc5'
WHERE
    id = 114;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FSalada-Caesar-frutos-do-mar.avif?alt=media&token=65bb7f7b-43bb-4c72-a94f-d23f086daad8'
WHERE
    id = 115;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsanduiche-de-frango.jpg?alt=media&token=085e3844-c316-4f5b-b35e-512c4d3c793b'
WHERE
    id = 116;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FMuffins-de-espinafre.jpg?alt=media&token=623daf9e-8103-4990-a55a-b42b65cb4c1b'
WHERE
    id = 117;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-de-lentilha.webp?alt=media&token=2a59fed5-9648-448b-87eb-0c7924a3d075'
WHERE
    id = 139;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ffarofa-banana.jfif?alt=media&token=6f3de8b7-9b15-45bc-82f6-8dcf41b3d948'
WHERE
    id = 140;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Flasagna-legumes-sem-lactose.avif?alt=media&token=e85142df-95d0-49af-bd00-4f83ac6ad3ac'
WHERE
    id = 25;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fwrap-vegetais.jfif?alt=media&token=34b14c9f-3841-4abc-99a7-7b18881fe0d2'
WHERE
    id = 59;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fceviche-caju.jfif?alt=media&token=e7fbb524-05b6-46f5-9f04-4db68f14cd2d'
WHERE
    id = 61;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-frutas-iogurte-sem-gluten.jfif?alt=media&token=8cf00d70-5f59-4a12-a3c8-584b577f4df5'
WHERE
    id = 41;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FFrango-parmegiana.jpg?alt=media&token=23332f00-81c5-45d6-b4a3-89e3b122f721'
WHERE
    id = 106;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-de-quinoa-simples.webp?alt=media&token=7746c441-44cd-4580-9d84-2d29ee39b4fc'
WHERE
    id = 86;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-de-cenoura.jpg?alt=media&token=d02d6c51-ff86-4cd1-b092-c6c74ae201ec'
WHERE
    id = 21;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-frutas-leite-coco.jfif?alt=media&token=0b4dc9e7-3087-487d-9ded-a2269c24f286'
WHERE
    id = 23;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpizza-mariscos.jfif?alt=media&token=f2a39af6-3061-40b2-956f-ea75d4faa902'
WHERE
    id = 77;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Foasta-sardinha.webp?alt=media&token=7aab0f3c-67c1-42d2-bedb-bc442f50e915'
WHERE
    id = 78;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcurry-peixe.webp?alt=media&token=b07208bd-6412-412c-ac1d-5ec0e8c68317'
WHERE
    id = 79;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpaella-frutos-mar.jfif?alt=media&token=6ad2b76b-6ee1-4836-b2e6-42702611039a'
WHERE
    id = 80;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcamarao-moranga.jpg?alt=media&token=49f1bf77-9021-4c8c-993b-0643da8fbace'
WHERE
    id = 84;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Frisoto-camarao.jfif?alt=media&token=7ad0755d-6c55-4ffd-b1d8-d6ad65661da5'
WHERE
    id = 65;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsushu-salmao.webp?alt=media&token=fe60bd69-f297-4132-a183-465619247dc7'
WHERE
    id = 66;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fespaguete-molho-camarao.jfif?alt=media&token=43102a19-f706-4f6f-9771-03afefdb861e'
WHERE
    id = 71;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fceviche-peixe.jfif?alt=media&token=3fcecb86-28c3-400a-b433-6e4eaecbc2a0'
WHERE
    id = 72;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-de-quinoa-simples.webp?alt=media&token=7746c441-44cd-4580-9d84-2d29ee39b4fc'
WHERE
    id = 73;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsanduiche-peixe.jfif?alt=media&token=475367bb-3c72-49fb-93f0-07acd4404433'
WHERE
    id = 74;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-abobora.jfif?alt=media&token=6eb8137d-6c3d-4eed-b645-8b7480e62efa'
WHERE
    id = 50;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fquiche-espinafre-light.jfif?alt=media&token=0b4a357d-3fc1-48bc-a2f6-b30dc013f13e'
WHERE
    id = 51;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Frisoto-de-colgumelos.jpg?alt=media&token=c3f4de16-9b15-475d-836b-be9e9ae5ab39'
WHERE
    id = 52;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fwrap-alface-hummus.webp?alt=media&token=81fbfa26-c024-44b9-98f2-a19733485c96'
WHERE
    id = 104;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolinho-chuva-sem-gluten.jpg?alt=media&token=adebbdcd-6f83-40ea-b21a-2df184d3198a'
WHERE
    id = 43;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-frutas.jpg?alt=media&token=1a53582c-40cf-4fcf-8231-814b4c133b95'
WHERE
    id = 156;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-de-amendas.jpg?alt=media&token=c7b581a8-b4c0-4cdd-b091-a8d2a2e9ca31'
WHERE
    id = 26;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Flasanha-abobrinha.jpg?alt=media&token=0c31c022-6abf-4805-9894-8fd580ab05ec'
WHERE
    id = 97;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpudim-leite-condensado.jpg?alt=media&token=a4853121-19f1-47f5-b07d-0b2b84d5c0dd'
WHERE
    id = 129;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftorta-de-limao-sem-gluten.webp?alt=media&token=901dbfeb-899f-474c-a262-1a61e29d8fc8'
WHERE
    id = 11;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fomelete-legumes.jfif?alt=media&token=311564b1-8f2d-4445-9823-e16d21ac76cb'
WHERE
    id = 62;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbrigadeiro-sem-lactose.avif?alt=media&token=e64cb716-2b66-4a9a-a205-6649265ec723'
WHERE
    id = 24;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftorta-de-batata.jpg?alt=media&token=9283e39c-888b-4a1a-9753-077fad16e0e0'
WHERE
    id = 36;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Flasanha-vegetariana.jpg?alt=media&token=c6fe3b38-7d53-4776-85ab-c63b4c038dc2'
WHERE
    id = 109;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolinho-chuva-sem-gluten.jpg?alt=media&token=adebbdcd-6f83-40ea-b21a-2df184d3198a'
WHERE
    id = 153;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Frisoto-de-limao-siciliano.jpg?alt=media&token=9825f2e4-b13e-4300-8ba4-3e55d3bbc065'
WHERE
    id = 157;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcuscuz-legumes.jpg?alt=media&token=cff6bdeb-e31d-432e-b789-a35da5de9e0d'
WHERE
    id = 158;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fmuffins-frutas.jpg?alt=media&token=a9a53f87-d1d9-4008-b678-082e87198608'
WHERE
    id = 159;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fwraps-frango.webp?alt=media&token=4ff433b4-c94a-493b-8e35-a0d96a3c62ce'
WHERE
    id = 160;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftacos-frango.jpg?alt=media&token=df2a975c-0a4d-4a58-ab1a-be29e86b5f4e'
WHERE
    id = 161;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcrumble-maca.jfif?alt=media&token=06c45aa5-cf0f-4afd-9b38-1cb1602ea0a6'
WHERE
    id = 162;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fceviche-frutas.jfif?alt=media&token=c0b10273-a9e6-40f8-878f-8261f6dc4a64'
WHERE
    id = 122;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Frisoto-abobora-queijo.jfif?alt=media&token=a5238e38-60dd-451c-afed-ba851a1726f9'
WHERE
    id = 125;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fchili-vegetariano.jpeg?alt=media&token=bd422766-d753-4b10-aa20-75c573ddd68b'
WHERE
    id = 126;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Flasanha-de-berinjela.avif?alt=media&token=93b24eb2-6384-4974-ab33-9199353e7daa'
WHERE
    id = 47;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbiscoito-de-aveia.jpg?alt=media&token=6617d3ac-e6a4-48b6-bdfa-bd82d1cc92c5'
WHERE
    id = 147;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpasta-grao-bico.jfif?alt=media&token=558aa90b-f559-40a1-b413-eeefc2aec9aa'
WHERE
    id = 142;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-nozes.webp?alt=media&token=83045d1f-b6af-4c78-8bf7-82330de0e804'
WHERE
    id = 3;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-de-peixe.jfif?alt=media&token=da09afb2-000f-4efa-ab6a-dc7e21feccea'
WHERE
    id = 81;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-frutos-do-mar.webp?alt=media&token=bd8563cb-cd9e-4700-8f58-db8c8f35e412'
WHERE
    id = 82;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ffile-peixe-grelhado.jpg?alt=media&token=10a732ea-b03e-451b-a4fc-6a38c5b3077e'
WHERE
    id = 83;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftapioca-queijo-coco.jfif?alt=media&token=cc2ca5ed-2f8a-4476-9b59-2a4c2d3cf574'
WHERE
    id = 138;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FP%C3%A3o-queijo.jpg?alt=media&token=a22a4080-bcd9-4de8-93ab-1c86df633afa'
WHERE
    id = 27;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fmacarrao-de-arroz-com-molho-de-tomate.avif?alt=media&token=8c94c3cd-9522-4402-b979-7af406377e90'
WHERE
    id = 28;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpizza-massa-couve-flor.webp?alt=media&token=830022a5-06ed-4789-b6af-c7bc98333f23'
WHERE
    id = 29;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftorta-de-batata.jpg?alt=media&token=9283e39c-888b-4a1a-9753-077fad16e0e0'
WHERE
    id = 35;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpasta-tomate-seco.jpg?alt=media&token=e06684ec-ae06-475f-b53b-cef890db7332'
WHERE
    id = 149;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FPizza-de-legumes.jpg?alt=media&token=116bb4ba-e706-4fda-9c3c-18ad364912d5'
WHERE
    id = 150;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fquiche-de-legumes.jpg?alt=media&token=13d8e081-7058-463f-8124-ffe0e2805152'
WHERE
    id = 151;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FPasta-com-molho-de-tomate.jpg?alt=media&token=eaa58e1e-9883-48fa-bde6-f2d2026af1d5'
WHERE
    id = 118;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpanqueca-de-batata.jpg?alt=media&token=35d77249-4917-453a-b4d3-e02cdb8ebb41'
WHERE
    id = 119;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Farroz-doce.webp?alt=media&token=9d1f09fb-59dd-4805-a814-a93d1a92e641'
WHERE
    id = 120;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fmuffin-banana.png?alt=media&token=c3add72c-2efd-4134-945b-51ce8065497b'
WHERE
    id = 124;

UPDATE restriction
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/restricoes%2Fvegetariano.jpg?alt=media&token=78a76ced-c6c4-4843-9adc-027dd9296ecf'
WHERE
    id = 1;

UPDATE restriction
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/restricoes%2Fvegano.jpg?alt=media&token=f12454ff-22b0-43a0-8063-b0c41e722313'
WHERE
    id = 2;

UPDATE restriction
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/restricoes%2Flactose.avif?alt=media&token=380c7ea2-ea41-4b84-88ee-6cdb06303c85'
WHERE
    id = 3;

UPDATE restriction
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/restricoes%2Fgluten.avif?alt=media&token=d5c104f3-569c-4ccc-8d30-7942ac99cc44'
WHERE
    id = 4;

UPDATE restriction
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/restricoes%2Fnozes.avif?alt=media&token=fdf7e114-c99c-4aa8-b3c7-f356f5f7fa52'
WHERE
    id = 5;

UPDATE restriction
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/restricoes%2Fpescetariano.png?alt=media&token=465a1789-1107-444e-8922-f4e44eff4c54'
WHERE
    id = 6;

UPDATE restriction
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/restricoes%2FfrutosDoMar.webp?alt=media&token=f81f56ed-584a-4e3f-beb4-44114e624554'
WHERE
    id = 7;

UPDATE restriction
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/restricoes%2FCate.jpg?alt=media&token=a5743499-98cc-49a0-9b17-7b60d6b53239'
WHERE
    id = 8;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsorvete-banana-cacau.webp?alt=media&token=137a9f35-91f1-4f52-8a0c-d83401392c8c'
WHERE
    id = 10;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpizza-margherita.avif?alt=media&token=16a022ba-8954-45c1-9a5f-8ffc1e8d1a68'
WHERE
    id = 54;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftacos-feijao-preto.jpg?alt=media&token=432ebf6c-b40a-4855-a895-480be8e461b3'
WHERE
    id = 55;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpudim-coco-lactose.jfif?alt=media&token=fcc4468c-d5d9-43c4-b0c0-2014441725bc'
WHERE
    id = 12;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpizza-sem-lactose.jfif?alt=media&token=9c9af7b3-ad41-4b01-8ef0-0b2f35a00fdc'
WHERE
    id = 14;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-de-batata-doce.jpg?alt=media&token=68f119d2-97df-4882-a84a-5f1a1b34a438'
WHERE
    id = 32;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpudim-de-chia-com-frutas.webp?alt=media&token=6921e012-6857-4182-9d89-01d7bdf600a0'
WHERE
    id = 40;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FCreme-de-ab%C3%B3bora.jpg?alt=media&token=88e23848-8cb7-4859-95db-543ea8243cc5'
WHERE
    id = 44;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpasta-abobrinha.jfif?alt=media&token=414101be-2cad-44b5-a9cd-b4041c0769c3'
WHERE
    id = 111;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcuscuz-marroquino.jpg?alt=media&token=8db11a72-cdf8-4ed5-a357-34ceff8f683d'
WHERE
    id = 112;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FCreme-de-ab%C3%B3bora.jpg?alt=media&token=88e23848-8cb7-4859-95db-543ea8243cc5'
WHERE
    id = 114;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FSalada-Caesar-frutos-do-mar.avif?alt=media&token=65bb7f7b-43bb-4c72-a94f-d23f086daad8'
WHERE
    id = 115;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsanduiche-de-frango.jpg?alt=media&token=085e3844-c316-4f5b-b35e-512c4d3c793b'
WHERE
    id = 116;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FMuffins-de-espinafre.jpg?alt=media&token=623daf9e-8103-4990-a55a-b42b65cb4c1b'
WHERE
    id = 117;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-de-lentilha.webp?alt=media&token=2a59fed5-9648-448b-87eb-0c7924a3d075'
WHERE
    id = 139;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ffarofa-banana.jfif?alt=media&token=6f3de8b7-9b15-45bc-82f6-8dcf41b3d948'
WHERE
    id = 140;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Flasagna-legumes-sem-lactose.avif?alt=media&token=e85142df-95d0-49af-bd00-4f83ac6ad3ac'
WHERE
    id = 25;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fwrap-vegetais.jfif?alt=media&token=34b14c9f-3841-4abc-99a7-7b18881fe0d2'
WHERE
    id = 59;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fceviche-caju.jfif?alt=media&token=e7fbb524-05b6-46f5-9f04-4db68f14cd2d'
WHERE
    id = 61;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-frutas-iogurte-sem-gluten.jfif?alt=media&token=8cf00d70-5f59-4a12-a3c8-584b577f4df5'
WHERE
    id = 41;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FFrango-parmegiana.jpg?alt=media&token=23332f00-81c5-45d6-b4a3-89e3b122f721'
WHERE
    id = 106;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-de-quinoa-simples.webp?alt=media&token=7746c441-44cd-4580-9d84-2d29ee39b4fc'
WHERE
    id = 86;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-de-cenoura.jpg?alt=media&token=d02d6c51-ff86-4cd1-b092-c6c74ae201ec'
WHERE
    id = 21;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-frutas-leite-coco.jfif?alt=media&token=0b4dc9e7-3087-487d-9ded-a2269c24f286'
WHERE
    id = 23;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpizza-mariscos.jfif?alt=media&token=f2a39af6-3061-40b2-956f-ea75d4faa902'
WHERE
    id = 77;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Foasta-sardinha.webp?alt=media&token=7aab0f3c-67c1-42d2-bedb-bc442f50e915'
WHERE
    id = 78;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcurry-peixe.webp?alt=media&token=b07208bd-6412-412c-ac1d-5ec0e8c68317'
WHERE
    id = 79;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpaella-frutos-mar.jfif?alt=media&token=6ad2b76b-6ee1-4836-b2e6-42702611039a'
WHERE
    id = 80;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcamarao-moranga.jpg?alt=media&token=49f1bf77-9021-4c8c-993b-0643da8fbace'
WHERE
    id = 84;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Frisoto-camarao.jfif?alt=media&token=7ad0755d-6c55-4ffd-b1d8-d6ad65661da5'
WHERE
    id = 65;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsushu-salmao.webp?alt=media&token=fe60bd69-f297-4132-a183-465619247dc7'
WHERE
    id = 66;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fespaguete-molho-camarao.jfif?alt=media&token=43102a19-f706-4f6f-9771-03afefdb861e'
WHERE
    id = 71;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fceviche-peixe.jfif?alt=media&token=3fcecb86-28c3-400a-b433-6e4eaecbc2a0'
WHERE
    id = 72;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-de-quinoa-simples.webp?alt=media&token=7746c441-44cd-4580-9d84-2d29ee39b4fc'
WHERE
    id = 73;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsanduiche-peixe.jfif?alt=media&token=475367bb-3c72-49fb-93f0-07acd4404433'
WHERE
    id = 74;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-abobora.jfif?alt=media&token=6eb8137d-6c3d-4eed-b645-8b7480e62efa'
WHERE
    id = 50;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fquiche-espinafre-light.jfif?alt=media&token=0b4a357d-3fc1-48bc-a2f6-b30dc013f13e'
WHERE
    id = 51;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Frisoto-de-colgumelos.jpg?alt=media&token=c3f4de16-9b15-475d-836b-be9e9ae5ab39'
WHERE
    id = 52;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fwrap-alface-hummus.webp?alt=media&token=81fbfa26-c024-44b9-98f2-a19733485c96'
WHERE
    id = 104;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolinho-chuva-sem-gluten.jpg?alt=media&token=adebbdcd-6f83-40ea-b21a-2df184d3198a'
WHERE
    id = 43;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-frutas.jpg?alt=media&token=1a53582c-40cf-4fcf-8231-814b4c133b95'
WHERE
    id = 156;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-de-amendas.jpg?alt=media&token=c7b581a8-b4c0-4cdd-b091-a8d2a2e9ca31'
WHERE
    id = 26;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Flasanha-abobrinha.jpg?alt=media&token=0c31c022-6abf-4805-9894-8fd580ab05ec'
WHERE
    id = 97;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpudim-leite-condensado.jpg?alt=media&token=a4853121-19f1-47f5-b07d-0b2b84d5c0dd'
WHERE
    id = 129;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftorta-de-limao-sem-gluten.webp?alt=media&token=901dbfeb-899f-474c-a262-1a61e29d8fc8'
WHERE
    id = 11;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fomelete-legumes.jfif?alt=media&token=311564b1-8f2d-4445-9823-e16d21ac76cb'
WHERE
    id = 62;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbrigadeiro-sem-lactose.avif?alt=media&token=e64cb716-2b66-4a9a-a205-6649265ec723'
WHERE
    id = 24;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftorta-de-batata.jpg?alt=media&token=9283e39c-888b-4a1a-9753-077fad16e0e0'
WHERE
    id = 36;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Flasanha-vegetariana.jpg?alt=media&token=c6fe3b38-7d53-4776-85ab-c63b4c038dc2'
WHERE
    id = 109;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolinho-chuva-sem-gluten.jpg?alt=media&token=adebbdcd-6f83-40ea-b21a-2df184d3198a'
WHERE
    id = 153;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Frisoto-de-limao-siciliano.jpg?alt=media&token=9825f2e4-b13e-4300-8ba4-3e55d3bbc065'
WHERE
    id = 157;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcuscuz-legumes.jpg?alt=media&token=cff6bdeb-e31d-432e-b789-a35da5de9e0d'
WHERE
    id = 158;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fmuffins-frutas.jpg?alt=media&token=a9a53f87-d1d9-4008-b678-082e87198608'
WHERE
    id = 159;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fwraps-frango.webp?alt=media&token=4ff433b4-c94a-493b-8e35-a0d96a3c62ce'
WHERE
    id = 160;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftacos-frango.jpg?alt=media&token=df2a975c-0a4d-4a58-ab1a-be29e86b5f4e'
WHERE
    id = 161;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcrumble-maca.jfif?alt=media&token=06c45aa5-cf0f-4afd-9b38-1cb1602ea0a6'
WHERE
    id = 162;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fceviche-frutas.jfif?alt=media&token=c0b10273-a9e6-40f8-878f-8261f6dc4a64'
WHERE
    id = 122;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Frisoto-abobora-queijo.jfif?alt=media&token=a5238e38-60dd-451c-afed-ba851a1726f9'
WHERE
    id = 125;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fchili-vegetariano.jpeg?alt=media&token=bd422766-d753-4b10-aa20-75c573ddd68b'
WHERE
    id = 126;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Flasanha-de-berinjela.avif?alt=media&token=93b24eb2-6384-4974-ab33-9199353e7daa'
WHERE
    id = 47;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbiscoito-de-aveia.jpg?alt=media&token=6617d3ac-e6a4-48b6-bdfa-bd82d1cc92c5'
WHERE
    id = 147;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpasta-grao-bico.jfif?alt=media&token=558aa90b-f559-40a1-b413-eeefc2aec9aa'
WHERE
    id = 142;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-nozes.webp?alt=media&token=83045d1f-b6af-4c78-8bf7-82330de0e804'
WHERE
    id = 3;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-de-peixe.jfif?alt=media&token=da09afb2-000f-4efa-ab6a-dc7e21feccea'
WHERE
    id = 81;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-frutos-do-mar.webp?alt=media&token=bd8563cb-cd9e-4700-8f58-db8c8f35e412'
WHERE
    id = 82;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ffile-peixe-grelhado.jpg?alt=media&token=10a732ea-b03e-451b-a4fc-6a38c5b3077e'
WHERE
    id = 83;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftapioca-queijo-coco.jfif?alt=media&token=cc2ca5ed-2f8a-4476-9b59-2a4c2d3cf574'
WHERE
    id = 138;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FP%C3%A3o-queijo.jpg?alt=media&token=a22a4080-bcd9-4de8-93ab-1c86df633afa'
WHERE
    id = 27;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fmacarrao-de-arroz-com-molho-de-tomate.avif?alt=media&token=8c94c3cd-9522-4402-b979-7af406377e90'
WHERE
    id = 28;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpizza-massa-couve-flor.webp?alt=media&token=830022a5-06ed-4789-b6af-c7bc98333f23'
WHERE
    id = 29;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftorta-de-batata.jpg?alt=media&token=9283e39c-888b-4a1a-9753-077fad16e0e0'
WHERE
    id = 35;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpasta-tomate-seco.jpg?alt=media&token=e06684ec-ae06-475f-b53b-cef890db7332'
WHERE
    id = 149;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FPizza-de-legumes.jpg?alt=media&token=116bb4ba-e706-4fda-9c3c-18ad364912d5'
WHERE
    id = 150;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fquiche-de-legumes.jpg?alt=media&token=13d8e081-7058-463f-8124-ffe0e2805152'
WHERE
    id = 151;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FPasta-com-molho-de-tomate.jpg?alt=media&token=eaa58e1e-9883-48fa-bde6-f2d2026af1d5'
WHERE
    id = 118;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpanqueca-de-batata.jpg?alt=media&token=35d77249-4917-453a-b4d3-e02cdb8ebb41'
WHERE
    id = 119;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Farroz-doce.webp?alt=media&token=9d1f09fb-59dd-4805-a814-a93d1a92e641'
WHERE
    id = 120;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fmuffin-banana.png?alt=media&token=c3add72c-2efd-4134-945b-51ce8065497b'
WHERE
    id = 124;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FCreme-de-ab%C3%B3bora.jpg?alt=media&token=88e23848-8cb7-4859-95db-543ea8243cc5'
WHERE
    id = 44;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcuscuz-marroquino.jpg?alt=media&token=2f230038-e6b9-434f-a1b7-db0a8b61f10e'
WHERE
    id = 112;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FCreme-de-ab%C3%B3bora.jpg?alt=media&token=88e23848-8cb7-4859-95db-543ea8243cc5'
WHERE
    id = 114;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-de-lentilha.webp?alt=media&token=2a59fed5-9648-448b-87eb-0c7924a3d075'
WHERE
    id = 139;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-abobora.jfif?alt=media&token=6eb8137d-6c3d-4eed-b645-8b7480e62efa'
WHERE
    id = 50;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FP%C3%A3o-queijo.jpg?alt=media&token=a22a4080-bcd9-4de8-93ab-1c86df633afa'
WHERE
    id = 27;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fquiche-de-legumes.jpg?alt=media&token=95973405-8dfe-4dd8-9e6e-d0de43785792'
WHERE
    id = 151;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fomelete-legumes.jfif?alt=media&token=311564b1-8f2d-4445-9823-e16d21ac76cb'
WHERE
    id = 164;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Freceita-de-canelone-de-ricota.jpg?alt=media&token=67852a25-f1ed-4a6c-8c92-d2a43a8139a4'
WHERE
    id = 165;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbatata-recheada-simples.jpeg?alt=media&token=dcb4afc0-f992-4599-9036-47137ed4d29b'
WHERE
    id = 166;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FSmoothie-de-frutas.jpg?alt=media&token=75672391-e55c-461f-94fb-ed56276af2fe'
WHERE
    id = 167;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FEspaguete-alho-%C3%B3leo.webp?alt=media&token=a2951781-195a-4edd-a4cb-09147cd7a4c7'
WHERE
    id = 169;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FP%C3%A3o-queijo.jpg?alt=media&token=a22a4080-bcd9-4de8-93ab-1c86df633afa'
WHERE
    id = 172;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FCurry-legumes.jpg?alt=media&token=ebc09012-b114-4559-9192-3e829efb3dcf'
WHERE
    id = 173;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftorta-de-batata.jpg?alt=media&token=9283e39c-888b-4a1a-9753-077fad16e0e0'
WHERE
    id = 174;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FPao-integral-sem-lactose.jpg?alt=media&token=2f42d7c2-c757-4966-85ab-62fcc528add4'
WHERE
    id = 4;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ffalafel.jpg?alt=media&token=c7c8f030-2b87-4f79-91f2-c99ee7e58446'
WHERE
    id = 49;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FSushi-com-Peixe-e-Legumes.jpg?alt=media&token=4d5bf5db-4cb9-4020-adec-1b0fe1742f2c'
WHERE
    id = 154;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Frisoto-de-colgumelos.jpg?alt=media&token=c3f4de16-9b15-475d-836b-be9e9ae5ab39'
WHERE
    id = 105;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ffrutos-do-mar-com-alhor.jpg?alt=media&token=3ae60504-02dc-447f-8284-f9ee5d741c8a'
WHERE
    id = 68;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fquibe-de-abobora.webp?alt=media&token=679ad600-eb2e-48be-976f-2144d05cd1de'
WHERE
    id = 141;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsushi-folha-alga-nori.webp?alt=media&token=03759f65-bc6d-4cf1-a4d6-2a6fabb7d362'
WHERE
    id = 39;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpasta-de-azeitona.jpg?alt=media&token=10cd225f-3eed-424b-8857-3ddd391cc163'
WHERE
    id = 135;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FBrownie-sem-lactose.jpg?alt=media&token=b8dfe5a5-e1e8-4db6-9ad4-4833430eec27'
WHERE
    id = 13;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Freceita-de-canelone-de-ricota.jpg?alt=media&token=67852a25-f1ed-4a6c-8c92-d2a43a8139a4'
WHERE
    id = 127;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fnhoque-de-batata-doce.jpg?alt=media&token=81b047ac-7b17-47dd-b97b-3904ad0fb39a'
WHERE
    id = 64;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fquinoa.jpg?alt=media&token=9bd834d3-1667-4fbe-8688-b30512147b1c'
WHERE
    id = 63;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Farroz-com-legumes.jpg?alt=media&token=67d7f2f8-3200-40af-bb1e-17ea264cd514'
WHERE
    id = 145;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftorta-de-limao-sem-gluten.webp?alt=media&token=901dbfeb-899f-474c-a262-1a61e29d8fc8'
WHERE
    id = 155;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fceviche-de-mango.jpg?alt=media&token=37089c3d-7bf4-43be-950a-8771929f3d35'
WHERE
    id = 94;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftacos-de-peixe.jpg?alt=media&token=702785c3-c888-443a-9ebb-c725d682e6bc'
WHERE
    id = 69;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-cenoura-calda.jpg?alt=media&token=3e7a498b-2d4e-4ab1-952a-749963e62a15'
WHERE
    id = 175;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpasta-de-abacate.webp?alt=media&token=66842413-d5d4-410f-8c1b-35536be29dfb'
WHERE
    id = 176;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbabaganoush.jpg?alt=media&token=c74bfff6-ed08-4307-8161-f7da2ce7540e'
WHERE
    id = 89;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpanqueca.jpg?alt=media&token=8d46504e-3861-4d7e-8793-6d0ac0a8a61c'
WHERE
    id = 45;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-de-chocolate-vegano.jpg?alt=media&token=5e97ef68-a292-4758-a220-6f496da88133'
WHERE
    id = 85;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolo-de-iogurte-natural.webp?alt=media&token=b2d04561-db8b-47c7-ae99-4e94d445a0d1'
WHERE
    id = 134;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-de-lentilha.webp?alt=media&token=2a59fed5-9648-448b-87eb-0c7924a3d075'
WHERE
    id = 146;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-de-lentilha.webp?alt=media&token=2a59fed5-9648-448b-87eb-0c7924a3d075'
WHERE
    id = 108;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbatata-gratinada.jpg?alt=media&token=a8655af8-bd6f-49a4-88a3-df89cc53bc1a'
WHERE
    id = 137;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FMuffins-de-cenoura-sem-gl%C3%BAten.jpg?alt=media&token=4759a7bf-167c-452d-a4e9-705828418a07'
WHERE
    id = 96;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FHamb%C3%BArguer-de-Lentilha.jpg?alt=media&token=8a9f4080-d575-4bc8-9407-4c52eba3d6d9'
WHERE
    id = 53;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fquiche-de-legumes.jpg?alt=media&token=95973405-8dfe-4dd8-9e6e-d0de43785792'
WHERE
    id = 110;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Farroz-de-frutos-do-mar.jpg?alt=media&token=edbaf55c-2cba-4c05-8448-d1a16932f656'
WHERE
    id = 34;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-de-quinoa-simples.webp?alt=media&token=7746c441-44cd-4580-9d84-2d29ee39b4fc'
WHERE
    id = 31;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FPizza-de-legumes.jpg?alt=media&token=116bb4ba-e706-4fda-9c3c-18ad364912d5'
WHERE
    id = 99;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftaco-de-frango.jpg?alt=media&token=1e79afdb-547c-4b90-8398-9e24e2ec930e'
WHERE
    id = 107;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FSalada-tomate.jpg?alt=media&token=8988b847-133b-4670-afa1-ce18dbdcd662'
WHERE
    id = 2;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FSmoothie-Espinafre.jpg?alt=media&token=19486603-47e4-478b-bd7c-358fb38b7ddc'
WHERE
    id = 91;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FIorgute-cocowebp.webp?alt=media&token=6bcf4e35-8576-455e-be6c-0974a4e7de08'
WHERE
    id = 15;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fmousse-chocolate.webp?alt=media&token=117a3193-7816-494a-99ca-e10e20b7fc8a'
WHERE
    id = 16;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FCurry-bico.jpg?alt=media&token=d5c75b15-ae48-41fc-8c91-d2854e6b438a'
WHERE
    id = 48;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fempatado-palmito.jpg?alt=media&token=a50cad74-e62e-4110-a8eb-5aa6a5d66169'
WHERE
    id = 17;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ffile-de-frango-com-molho-de-laranja-rotated.webp?alt=media&token=273d6612-41c7-45d1-b2bb-3b580ee9e487'
WHERE
    id = 148;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcrepe-queijo.jpg?alt=media&token=8cb1d6d8-b0f2-4658-a7d0-0027b93ea32d'
WHERE
    id = 131;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fbolinho-peixe.jpg?alt=media&token=c244d120-8b2f-4507-b1db-03f806911747'
WHERE
    id = 75;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fcamarao.webp?alt=media&token=8ed6affd-36d1-48e3-86f5-5b8c288ed252'
WHERE
    id = 76;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fomelete.webp?alt=media&token=08777159-9ad1-4079-aa62-b3cffd216dfd'
WHERE
    id = 1;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FBOLO-DE-BATATAjpg.jpg?alt=media&token=e0a0620d-385b-4d1c-b70e-c19b0436349d'
WHERE
    id = 113;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-quinoa-salmao.jpg?alt=media&token=cc922cd7-5d00-42df-a51e-d3be8df689ab'
WHERE
    id = 168;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsalada-de-atum.webp?alt=media&token=9804e0fb-0eb8-46fc-a638-6e08cda87782'
WHERE
    id = 67;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsorvete-banana.webp?alt=media&token=9fd27ced-e8a4-462d-bfa9-856f17968b35'
WHERE
    id = 100;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftorta-de-legumes.webp?alt=media&token=028a3309-5084-4db2-a72c-31707e1efdd3'
WHERE
    id = 128;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftacos-colgumelos.jpg?alt=media&token=e44e2ab9-3b12-432a-a197-1768bd5bd2f8'
WHERE
    id = 92;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fchili-vegetariano.jpeg?alt=media&token=bd422766-d753-4b10-aa20-75c573ddd68b'
WHERE
    id = 98;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Ftorta-maca.jpg?alt=media&token=df7223b3-de32-4a4c-a16f-9ca35ba3424c'
WHERE
    id = 102;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpasta-de-abacate.webp?alt=media&token=66842413-d5d4-410f-8c1b-35536be29dfb'
WHERE
    id = 132;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fleite-condensado-caseiro-768x512.webp?alt=media&token=959f2927-0209-425d-9d2a-a1209cd97143'
WHERE
    id = 18;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FRatatouille_desktop_5ddfe5fdbf.jpg?alt=media&token=a983d80a-3ac5-4bc4-9703-0e5fb4830593'
WHERE
    id = 58;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpasta-de-amendoim-caseira.webp?alt=media&token=0e1f387a-ecdf-4b4b-be8d-ed96904383e7'
WHERE
    id = 95;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fsopa-de-peixe.jpg?alt=media&token=e8f6c45a-b36a-4440-a167-8cf334128932'
WHERE
    id = 70;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FCurry-bico.jpg?alt=media&token=d5c75b15-ae48-41fc-8c91-d2854e6b438a'
WHERE
    id = 90;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2Fpudim-de-chia-com-frutas.webp?alt=media&token=6921e012-6857-4182-9d89-01d7bdf600a0'
WHERE
    id = 103;

UPDATE recipe
SET
    image_url = 'https://firebasestorage.googleapis.com/v0/b/let-s-snack.appspot.com/o/receitas%2FarrozAGrega.jpg?alt=media&token=3b49e70d-4702-471a-9d4c-3c8d4840ee03'
WHERE
    id = 163
