library(shiny)
library(shinythemes)
library(rvest)

shinyApp(
    ui = fluidPage(theme = shinytheme("cerulean"),
                   navbarPage("Ji Hongchao",
                              tabPanel(title= 'Home', icon = icon("home"),
                                       sidebarLayout(
                                           sidebarPanel(width = 2,
                                                        img(src='hcji.jpg', width = 200),
                                                        div(style = "font-size: 130%",
                                                        h2('Ji Hongchao'),
                                                        h4('Postdoctoral fellow'),
                                                        h5('Department of chemistry'),
                                                        h5('South University of Science and Technology'),
                                                        a(icon("envelope"), 'ji.hongchao@foxmail.com', href="ji.hongchao@foxmail.com"),
                                                        br(),
                                                        a(icon("github"), href="https://github.com/hcji"),
                                                        a(icon("researchgate"), href="https://www.researchgate.net/profile/Hongchao_Ji"),
                                                        a(icon("orcid"), href="https://orcid.org/0000-0002-7364-0741"),
                                                        a(icon("google"), href="https://scholar.google.com/citations?hl=zh-CN&user=L6InqB8AAAAJ")
                                                        )),
                                           mainPanel(div(style = "font-size: 140%",
                                                     h2("Biography"),
                                                     p("Thank you for visiting my website!
                                                        I am postdoctoral researcher working for South University of Science and Technology.
                                                        Currently, I am working on MS-based data analysis method development for proteomics and metabolomics
                                                        and developing user-friendly software for researchers in the related field.
                                                        Now, I have more than 13 publications and serve as a reviewer for Chemometrics and Intelligent Laboratory Systems.
                                                        My research interests include: 
                                                        1. Mass spectrometry-based quantitative analysis in metabolomics and proteomics;
                                                        2. Unknown small molecules identification by MS/MS analysis via machine learning;
                                                        3. Unknown drug-target prediction and experimental verification."
                                                       ),
                                                     br(),
                                                     h2("Education"),
                                                     p("2011.09 - 2015.06, Bachelor of Engineering in Chemical Engineering, Central South University, Changsha, China"),
                                                     p("2015.09 - 2020.06, Doctor of Philosophy in Analytical Chemistry, Central South University, Changsha, China"),
                                                     br(),
                                                     h2("Professional experience"),
                                                     p("2020.06 - , Postdoctoral fellow, Southern University of Science and Technology, Shenzhen, China"),
                                                     br(),
                                                     h2("Awards"),
                                                     p("2020, Outstanding graduates, Department of education of Hunan Province"),
                                                     p("2020, Outstanding graduates, Central South University"),
                                                     p("2019, President's PhD Scholarship, Central South University"),
                                                     p("2019, National Scholarship for Graduate Students"),
                                                     p("2017, National Scholarship for Graduate Students")
                                                    ))
                                       )),
                              tabPanel(title= 'Publications', icon = icon("book"),
                                       sidebarLayout(
                                           sidebarPanel(width = 2,
                                                        h4('Total Publications: 13'),
                                                        h4('Total Citations: > 84'),
                                                        h4('H-index: 6'),
                                                        h4('Citations Per Paper: 7.64'),
                                                        h5('Data from Web of Science'),
                                                        h5('update: Jan 30, 2021')
                                                        ),
                                           mainPanel(div(style = "font-size: 120%",
                                                         h2("First/Corresponding author publications"),
                                                         
                                                         p('5. Predicting Molecular Fingerprint from Electron–Ionization Mass Spectrum with Deep Neural Networks.',
                                                           a('URL', href="https://pubs.acs.org/doi/10.1021/acs.analchem.0c04071")),
                                                         h5('Ji, H.; Deng, H.; Lu, H.; Zhang, Z'),
                                                         h5('Analytical Chemistry, 2020, 92, 8649-8653'),
                                                         
                                                         p('4. Deep MS/MS-Aided Structural-Similarity Scoring for Unknown Metabolite Identification.',
                                                           a('URL', href="https://pubs.acs.org/doi/10.1021/acs.analchem.8b05405")),
                                                         h5('Ji, H.; Xu, Y.; Lu, H.; Zhang, Z.'),
                                                         h5('Analytical Chemistry. 2019, 91, 5629–5637'),
                                                         
                                                         p('3. TarMet: A Reactive GUI Tool for Efficient and Confident Quantification of MS Based Targeted Metabolic and Stable Isotope Tracer Analysis.',
                                                           a('URL', href="http://link.springer.com/10.1007/s11306-018-1363-7")),
                                                         h5('Ji, H.; Zhang, Z.; Lu, H.'),
                                                         h5('Metabolomics 2018, 14, 68.'),
                                                         
                                                         p('2. KPIC2: An Effective Framework for Mass Spectrometry-Based Metabolomics Using Pure Ion Chromatograms.',
                                                           a('URL', href="https://pubs.acs.org/doi/10.1021/acs.analchem.7b01547")),
                                                         h5('Ji, H.; Zeng, F.; Xu, Y.; Lu, H.; Zhang, Z.'),
                                                         h5('Analytical Chemistry. 2017, 89, 7631–7640.'),
                                                         
                                                         p('1. Pure Ion Chromatogram Extraction: Via Optimal k -Means Clustering.',
                                                           a('URL', href="https://pubs.rsc.org/en/content/articlelanding/2016/RA/C6RA08409E")),
                                                         h5('Ji, H.; Lu, H.; Zhang, Z.'),
                                                         h5('RSC Advance. 2016, 6, 56977–56985.'),
                                                         
                                                         br(),
                                                         h2("Other publications"),
                                                         
                                                         p('8. Prediction of Liquid Chromatographic Retention Time with Graph Neural Networks to Assist in Small Molecule Identification.',
                                                           a('URL', href="https://pubs.acs.org/doi/10.1021/acs.analchem.0c04071")),
                                                         h5('Yang, Q.; Ji, H.; Lu, H.; Zhang, Z.'),
                                                         h5('Analytical Chemistry. 2021, accept'),
                                                         
                                                         p('7. Enhancing coverage in LC–MS-based untargeted metabolomics by a new sample preparation procedure using mixed-mode solid-phase extraction and two derivatizations.',
                                                           a('URL', href="http://link.springer.com/10.1007/s00216-019-02010-x")),
                                                         h5('Wu, Q.; Xu Y.; Ji H.; Wang Y.; Zhang Z.; Lu H.'),
                                                         h5('Analytical and Bioanalytical Chemistry 2019, 411, 6189-6202.'),
                                                         
                                                         p('6. UPLC-ESI-IT-TOF-MS Metabolomic Study of the Therapeutic Effect of Xuefu Zhuyu Decoction on Rats with Traumatic Brain Injury.',
                                                           a('URL', href="https://www.sciencedirect.com/science/article/abs/pii/S0378874119322834")),
                                                         h5('Fu, C.; Wu, Q.; Zhang, Z.; Xia, Z.; Ji, H.; Lu, H.; Wang, Y.'),
                                                         h5('Journal of Ethnopharmacology. 2019, 245, 112149.'),
                                                         
                                                         p('5. Metabolic Profiling Putatively Identifies Plasma Biomarkers of Male Infertility Using UPLC-ESI-IT-TOFMS',
                                                           a('URL', href="https://pubs.rsc.org/en/content/articlelanding/2018/ra/c8ra01897a")),
                                                         h5('Zeng, F.; Ji, H.; Zhang, Z.; Luo, J.; Lu, H.; Wang, Y.'),
                                                         h5('RSC Advance. 2018, 8, 25974–25982'),
                                                         
                                                         p('4. GC-MS Profiling of Leukemia Cells: An Optimized Preparation Protocol for the Intracellular Metabolome.',
                                                           a('URL', href="https://pubs.rsc.org/en/content/articlelanding/2018/ay/c7ay02578e")),
                                                         h5('He, Y.; Zhang, Z.; Ma, P.; Ji, H.'),
                                                         h5('Analytical Methods 2018, 10, 1266–1274.'),
                                                         
                                                         p('3. The Role of Graphene Coating on Cordierite-Supported Pd Monolithic Catalysts for Low-Temperature Combustion of Toluene.',
                                                           a('URL', href="https://www.sciencedirect.com/science/article/abs/pii/S1872206718630153")),
                                                         h5('Li, W.; Ye, H.; Liu, G.; Ji, H.; Zhou, Y.; Han, K.'),
                                                         h5('Cuihua Xuebao/ Chinese Journal of Catalysis. 2018, 39, 946–954.'),
                                                         
                                                         p('2. Fast Pure Ion Chromatograms Extraction Method for LC-MS.',
                                                           a('URL', href="https://linkinghub.elsevier.com/retrieve/pii/S0169743917303726")),
                                                         h5('Wang, R.; Ji, H.; Ma, P.; Zeng, H.; Xu, Y.; Zhang, Z.; Lu, H.'),
                                                         h5('Chemometrics and Intelligent Laboratory Systems. 2017, 170, 68–74'),
                                                         
                                                         p('1. Exploring metabolic syndrome serum profiling based on gas chromatography mass spectrometry and random forest models',
                                                           a('URL', href="https://linkinghub.elsevier.com/retrieve/pii/S0003267014004000")),
                                                         h5('Lin, Z.; Carlos, M.; Dai, L.; Lu, H. Huang, J.; Ji H.; Wang, D.; Yi, L.; Liang, Y.'),
                                                         h5('Analytica Chimica Acta. 2014, 827, 22-27.'),
                                                         
                                           ))
                                       )
                            )),

    ),
    server = function(input, output) {}
)