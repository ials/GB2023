# UNAL - FCA - Geomatica Basica 2023-1S
## Welcome to the GB2023 course - Grupo 2 - Código SIA 2015896 

This is the main communication site for the course. Here you will find the lectures, readings, and assignments. This is a place to visit regularly. 

## Objectives

- To learn basic concepts and theory about major  geoinformation disciplines 
- To develop practical skills for understanding and processing geospatial data 
- To offer opportunities to enhance spatial thinking  and argumentative abilities

## [Programación detallada](https://drive.google.com/file/d/1nbrdER-UEPLDCLQSuEC99QZfypi8wpgG/view?usp=sharing)


## Schedule
## Week 1 – Geospatial data and information – 8 - 9 February

- Theory:
  -  Geospatial data
  -  From data to information
  -  [Data models](https://drive.google.com/file/d/0BzEwvK1H17qeZDZsLUJNNzUzcW8/view?usp=sharing&resourcekey=0-krbEgAyzisaploQ9Dslb9w)

- GIS Practical:
  - Download spatial data for your study area
  - Check metadata

- Reading 1:
  - [What is geomatics?](https://drive.google.com/file/d/1LxIHvXJrkvoqJXzubL2T2PTQC39ZT3gh/view?usp=sharing)
  
## Week 2 – Coordinate systems and cartographic projections -  15 - 16 February

- Theory:
  - [Geodesy, Coordinate Systems and Map Projections](https://docs.google.com/presentation/d/1h2L1QcGnCCtpGUoCCkqfgKlA_-uvg1ug/edit?usp=sharing&ouid=101294548671143516389&rtpof=true&sd=true)
  
- GIS Practical:
  - Understand projections and EPSG codes
  - Change projection of geospatial data
  - Datasets:
    - [Roads, water, population](https://www.diva-gis.org/gdata)
    - [Colombian cities](https://drive.google.com/file/d/1LXM6xXSfbALl1Rt9Gk7ucLB-l48-3cy6/view?usp=sharing)

- Reading 2:
  - [Referencias y proyección empleadas en la cartografia colombiana](https://revistas.uptc.edu.co/index.php/perspectiva/article/view/1718)

- **REFERENCIA**
  - [QGIS tutorials and tips](http://www.qgistutorials.com/en/)

## Week 3 -  Cartography – 22 -23 February -  

- Theory:
  - [W3 - Cartography](https://www.cartography.org.uk/_files/ugd/583f72_c795f5c26b3f44df84e33d1210842d80.pdf)
  - [W3 - Thematic maps](http://www.geo.umass.edu/courses/geo494a/thematic_map_design.pdf)

- GIS Practical:
  - [How to make a map of municipalities](https://drive.google.com/file/d/18UMx5zLUpfd_UetZwmBlX97J8yPMeJwk/view?usp=sharing)
   
-  Home activity:
   - Students make two maps:
     - Mapa de zona de estudio (incluye municipios, ciudades, vías, hidrografía) - [Ejemplo](https://drive.google.com/file/d/1mUPq4q6dgHmNZ5GiNliysyLZLzg5dwjZ/view?usp=sharing)
     - Mapa de relieve departamental (incluye DEM, ciudades, vías, hidrografía) - [Ejemplo](https://drive.google.com/file/d/1LeAiJSpuKmCteEH6Owe5OzNyF-MZXVaS/view?usp=sharing)
   - *Please bring  the two color map prints to the classroom on 2nd March 2023* 

- **DO YOU NEED HELP?  REVIEW THIS REFERENCE:**
  - [QGIS tutorials and tips](http://www.qgistutorials.com/en/)

## Week 4 - Geographic databases - 1-2 March

- Theory:
  -	¿What is a spatial database?
  -	¿What are common database formats?
  -	¿What is SQL?
  -	¿What are the main query functions?
  -	¿How to join geographic data both spatially and not spatially?

- GIS Practical:
  - Start getting to know R
  - First steps with the *tidyverse*
    - Install the *tidyverse* 
    - [Start doing data wrangling with dplyr](https://sgfin.github.io/files/cheatsheets/R_cheatsheet_dplyr.pdf)
    - You have to write the code within the cheatsheet
      - Be aware that *iris* and *mtcars* are pre-loaded "tables"
 
- Home activity:
  - Make corrections to your two maps according to suggestions made in the classroom
  - **Print the two maps in color and bring them to class on 9th March in a closed envelope** (This is the due date)
  
- Reference:
  - You may strengthen your R skills:
    - [Introducción a R](https://www.uv.es/vcoll/curso_r.html)

## Week 5 – Data exploration, query and wrangling

- Theory:
  - How to read csv data in R?
  - How to create pipelines to select, filter, mutate, group, summarize, and arrange?

- R Practical:
  - Download data:
      - [Evaluaciones Agropecuarias Municipales EVA](https://www.datos.gov.co/Agricultura-y-Desarrollo-Rural/Evaluaciones-Agropecuarias-Municipales-EVA/2pnw-mmge)
        - Go to Export and download the data in CSV format
      
    
  - Explore  data: 
      - Read the EVA dataset in R
      - Start writing your first R notebook
       
  - Home activity:
   - **Complete your first R notebook** (Plazo para publicación en RPubs:  16 de marzo)
     - [Reference](https://rpubs.com/ials2un/readingEVAv1)
     - [Data wrangling cheatsheet](https://www.rstudio.com/wp-content/uploads/2015/02/data-wrangling-cheatsheet.pdf)
 
## Week 6 – Joining spatial and non-spatial data

- [Theory](https://drive.google.com/file/d/16xcTd7VlkVOnIufFsSvPxDEX4P1HYS2E/view?usp=sharing):
  - How to read geospatial data in R?
  - How to join non-spatial and geospatial data in R?
  - How to visualize geospatial data in R?

- Explore  data: 
  - Download MGN2018 and read it in R
    - [MGN2018 Integrado con CNPV2018, nivel de Municipio](https://www.dane.gov.co/files/geoportal-provisional/SHP_MGN2018_INTGRD_MPIO.zip)
  - Clip the MGN2018 layer to match your study area
  - Visualize the municipalities with different colors based on population
  - Start writing your second R notebook
 
- Home activity:
   - **Complete your second R notebook** (Plazo para publicación en RPubs:  23 de marzo)
     - [Second notebook reference](https://rpubs.com/ials2un/thematic_maps_v2)
     - [R Markdown cheatsheet](https://posit.co/wp-content/uploads/2022/10/rmarkdown-1.pdf)
 
## Week 7 – Refresher week

- Make sure you complete the first and second notebook and update their publishing (a más tardar el 26 de marzo):
   - ¿Have you explained what is the objetive of your notebook?
   - ¿Does every code chunk has been explained in your notebook?
   - ¿Have you interpreted or analyzed your results?
   - ¿Do you have any conclusions?
   
- ¿Do you want to get bonus points?
  - [Production dynamics](https://rpubs.com/ials2un/production_dyn_v1)
