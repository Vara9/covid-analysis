# Analysis of Corona Dataset

The main aim of the Project was to perform Exploratory Data Analysis and Perform cleaning and perform predictions from the Corona Dataset.

Imported various Python libraries such as Pandas, NumPy, Seaborn and Matplotlib into Google Collab and Readed the corona dataset using read_csv() function and checked for duplicates and null values. As there is no null values or duplicates in the dataset we gone ahead in observing the dataset's unique values in every column separately.

While observing every column separately, we observed the values which are wrongly typed or in some some values in which the values should be dropped, we cleaned the data accordingly.

while performing Exploratory data analysis, we performed univariate analysis, correlation between data using heatmap and listed down the observations accordingly.

While performing Feauture engineering, we performed encoding using label encoder, performed variance inflation factor for checking which variables to be taken for performing machine learning algorithms.

While splitting the data according the vif factors previously checked, we selected the x and y columns accordingly, performed scaling using standard scalar and performed predictions using logistic regression, knn, decision tree and random forest.

In coclusion the accuracy we get in knn, decision tree and random forest got 98% accuracy. In Logistic regression, we get 97% accuracy.so, the predictions we got in knn, decision tree, random forest is best.

The project file is attached below.

000

The data of the project file is attached in the link below.

000

The cleaned data after performing data cleaning is attached below.

000

The cleaned dataset after imputation techniques are implemented is attached below.

000

The sql file which is attached below contains queries used to obtain observations in the cleaned dataset.

000
