  <h3 align="center">Graph Theory to discover Switch Genes in Cardiovascular System</h3>

  <p align="center">
    Project Period 1 for System Biology 
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project

RNA sequencing data are used to study DCM (Dilated Cardiomyopathy). The aim is to construct protein correlation network and select nodes with interesting mathematical property (and therefore of biological interest) 
we have downloaded and edited for our pourpose the code from the following github repo : [Switch_Miner_code](https://github.com/sportingCode/SWIMmeR/tree/main)

After some licterature research we have selected genetic biomarker that might be linked to specific DCM cases linked to viral causes and runned again the analysis to compare results.   

Bird eye view of the project: (Further informations on those steps found in the pdf manuscript and ppt presentation)
* Differential expression analysis with limma 
* Co-epression  Network
* Switch Miner algorithm
* investigating genetic bases for viral causes of DCM
* comparing viral linked cases to standard DCM
  
Switch Miner algorithm is described in the following article : [Switch_Miner_article](https://academic.oup.com/bioinformatics/article/38/2/586/6370739)

<!-- DATA -->
### Data

Data directory is needed to run the files. Those data include gene expression count data, 
metadata with patient information, gene lenght (to calculate FPKM). Those data are uploaded in zenodo at link below. (vilar cases linked biomarkers are instead found in the Data folder)  

</a>
<a href="https://doi.org/10.5281/zenodo.7790931">
        <img src="https://zenodo.org/badge/DOI/10.5281/zenodo.7790931.svg" alt="DOI">
    </a>
