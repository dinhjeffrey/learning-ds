#PART 1: Design of Experiments

##1. Controlled Experiments

###Summary
1. Statisticians use the method of comparison. They want to know the effect of a treatment (like the Salk vaccine) on a response (like getting polio). To find out, they compare the responses of a <i>treatment group</i> with a <i>control group</i>. Usually, it is hard to judge the effect of a treatment without comparing it to something else.

2. If the control group is comparable to the treatment group, apart from the treatment, then a difference in the responses of the two groups is likely to be due to the effect of the treatment.

3. However, if the treatment group is different from the control group with respect to other factors, the effects of these other factors are likely to be <i>confounded</i> with the effect of the treatment.

4. To make sure that the treatment group is like the control group, investigators put subjects into treatment or control at random. <i>This is done in randomized controlled experiments.</i>

5. Whenever possible, the control group is given a <i>placebo</i>, which is neutral but resembles the treatment. The response should be to the treatment itself rather than to the idea of treatment.

6. In a <i>double-blind</i> experiemnt, the subjects do not know whether they are in treatment or in control; neither do those who evaluate the responses. This guards against bias, either in the responses or in the evaluations.

##2. Observational Studies

<b>Confounding: </b> means a difference between the treatment and control groups - other than the treatment - which affects the responses being studied. A confounder is a third variable, associated with exposure and with disease.

###Summary
1. In an <i>observational study</i>, the investigators do not assign the subjects to treatment or control Some of the subjects have the condition whose effects are being studied; this is the treatment group. The other subjects are the controls. For example, in a study on smoking, the smokers form the treatment group and the non-smokers are the controls.

2. Observational studies can establish <i>association</i>: one thing is linked to another. Association may point to causation: if esposure causes disease, then people who are exposed should be sicker than similar people who are not exposed. But association does not prove causation. 

3. In an observational study, the effects of treatment may be confounded with effects of factors that got the subjects into treatment or control in the first place. Observational studies can be quite misleading about cause-and-effect relationships, because of confounding. A <i>confounder</i> is a third variable, associated with exposure and with disease.

4. When looking at a study, ask the following questions. Was there any control group at all? Were historical controls used, or contemporaneous controls? How were subjects assigned to treatment - through a process under the control of the investigator(a controlled experiement), or a process outside the control of the investigator(an observational study)? If a controlled experiment, was the assignment made using a chance mechanism(randomized controlled), or did assignment depend on the judgment of the investigator?

[Experiment Design](https://drive.google.com/open?id=0B01B58wqsyioYmphUEZMWHlCQ3c) 📊🎃

5. With observational studies, and with nonrandomized controlled experiments, try to find out how the subjects came to be in treatment or in control Are the groups comparable? different? What factors are confounded with treatment? What adjustments were made to take care of confounding? Were they sensible?

6. In an observational study, a confounding factor can sometimes be <i>controlled for</i>, by comparing smaller groups which are relatively homogeneous with respect to the factor.

7. Study design is a central issue in applied statistics. Chapter 1 introduced the idea of randomized experiements, and chapter 2 draws the contrast with observational studies. The great weakness of observational studies in confounding; randomized experiments minimize this problem. Statistical inference from randomized experiments will be discussed in chapter 27.

#Part 2: Descriptive Statistics

##Chapter 3: The Histogram

###Summary
1. A <i>histogram</i> represents percents by area. It consists of a set of blocks. The area of each block represents the percentage of cases in the corresponding <i>class interval</i>.

2. With the <i>density scale</i>, the height of each block equals the percentage of cases in the corresponding class interval, divided by the length of that interval.

3. With the density scale, area comes out in percent, and the total area is 100%. The area under the histogram between two values gives the percentage of cases falling in that interval.

4. A <i>variable</i> is a characteristic of the subjects in a study. It can be either <i>qualitative</i> or <i>quantitative</i>. A quantitative variable can be either <i>discrete</i> or <i>continuous</i>.

5. A confounding factor is sometimes controlled for by <i>cross-tabulation</i>.

##Chapter 4: The Average and the Standard Deviation

###Summary
1. A typical list of numbers can be summarized by its <i>average</i> and <i>standard deviation</i> (SD).

2. Average of a list = (sum of entries) / (number of entries)

3. The average locates the center of a histogram, in the sense that the histogram balances when supported at the average.

4. Half the area under a histogram lies to the left of the <i>median</i>, and half to the right. The median is another way to locate the center of a histogram. 

5. The <i>r.m.s. size</i> of a list measures how big the entries are, neglecting signs.

6. r.m.s. size of a list = sqrt(average of entries^2)

7. The SD measures distance from the average. Each number on a list is off the average by some amount. The SD is a sort of average size for these amounts off. More technically, the SD is the r.m.s. size of the deviations from the average. 

8. Roughly 68% of the entries on a list of numbers are within one SD of the average, and about 95% are within two SDs of the average. This is so for many lists, but not all.

9. If a study draws conclusions about the effects of age, find out whether the data are cross-sectional or longitudinal.

##Chapter 5: The Normal Approximation for Data

###Summary
1. The <i>normal curve</i> is symmetric about 0, and the total area under it is 100%.

2. <i>Standard units</i> say how many SDs a value is, above(+) or below(-) the average.

3. Many histograms have roughly the same shape as the normal curve.

4. If a list of numbers follows the normal curve, the percentage of entries falling in a given interval can be estimated by converting the interval to standard units, and then finding the corresponding area under the normal curve. This procedure is called the <i>normal approximation</i>.

5. A histogram which follows the normal curve can be reconstructed fairly well from its average and SD. In such cases, the average and SD are good summary statistics.

6. All histograms, whether or not they follow the normal curve, can be summarized using <i>percentiles</i>.

7. If you add the same number to every entry on a list, that constant just gets added to the average; the SD does not change. If you multiply every entry on a list by the same positive number, the average and the SD just get multiplied by that constant. (If the constant is negative, wipe out the sign before multiplying the SD.)

##Chapter 6: Measurement Error

###Summary
1. No matter how carefully it was made, a measurement could have turned out a bit differently. This refects <i>chance error</i>. Before investigators rely on a measurement, they should estimate the likely size of the chance error. The best way to do that: <i>replicate</i> the measurement.

2. The likely size of the chance error in a single measurement can be estimated by the SD of a sequence of repeated measurements made under the same conditions.

3. <i>Bias</i>, or <i>systematic error</i>, causes measurements to be systematically too high or systematically too low. The equation is

* individual measurement = exact value + bias + chance error. 

The chance error changes from measurement to measurement, but the bias stays the same. Bias cannot be estimated just by repeating the measurements.

4. Even in careful measurement work, a small percentage of <i>outliers</i> can be expected.

5. The average and SD can be strongly influenced by outliers. Then the histogram will not follow the normal curve at all well.

6. This part of the book introduced two basic descriptive statistics, the average and the standard deviation; histograms were used to summarize data. For many data sets, the histogram follows the normal curve. Chapter 6 illustrate these ideas on measurement data. Later in the book, histograms will be used for probability distributions, and statistical inference will be base don the normal curve. This is legitimate when the probability histograms follow the curve--the topic of chapter 18.

##Chapter 7: Plotting Points and Lines

###Summary
1. Just creating cartesian coordinates.

##Chapter 8: Correlation

###Summary 
1. The relationship between two variables can be represented by a <i>scatter diagram</i>. When the scatter diagram is tightly clustered around a line, there is a strong <i>linear association</i> between the variables.

2. A scatter diagram can be summarized by means of five statistics:
* the average of the x-values, the SD of the x-values,
* the average of the y-values, the SD of the y-values,
* the <i>correlation coefficient r</i>.

3. Positive assocaition (a cloud which slopes up) is indicated by a plus-sign in the correlation coefficient. Negative association (a cloud which slopes down) is indicated by a minus-sign.

4. In a series of scatter diagram with the same SDs. as <i>r</i> gets closer to +/- 1, the points cluster more tightly around a line.

5. The correlation coefficient ranges from -1 (when all the points lie on a line which slopes down), to +1 (when all the points lie on a lie which slopes up).

6. The <i>SD line</i> goes through the point of averages. When <i>r</i> is positive, the slope of the line is 

(SD of y) / (SD of x).

When r is negative, the slope is 

-(SD of y) / (SD of x).

7. To calculate the correlation coefficient, convert each variable to standard units, and then take the average product.

##Chapter 9: More about Correlation

###Summary
1. The correlation coefficient is a pure number, without units. It is not affected by

* interchanging the two variables,
* adding the same number to all the values of one variable,
* multiplying all the values of one variable by the same positive number.

2. The correlation coefficient measures clustering around a line, relative to the SDs. 

3. The correlation coefficient can be misleadin in the presence of outliers or non-linear association. Whenever possible, look at the scatter diagram to check for these problems

4. <i>Ecological</i> correlations, which are based on rates or averages, tend to overstate the strength of association for individuals.

5. Correlation measures association. But association does not necessarily show causation. It may only show that both variables are simultaneously influenced by some third variable.

##Chapter 10: Regression

###Summary
1. Asociated with an increase of one SD in x, there is an increase of only r SDs in y, on the average. Plotting these <i>regression estimates</i> gives the <i>regression line</i> for y on x.

2. The <i>graph of averages</i> is often close to a straight line, but may be a little bumpy. The regression line smooths out the bumps. If the graph of averages is a straight line, then it coincides with the regression line. If the graph of averages has a strong non-linear pattern, regression may be inappropriate.

3. The regression line can be used to make predictions for individuals. But if you have to extrapolate far from the data, or to a different group of subjects, be careful.

4. In a typical test-retest situation, the subjects get different scores on the two tests. Take the bottom group on the first test. Some improve on the second test, others do worse. On average, the bottom group shows an improvement. Now, the top group: some do better the second time, others fall back. On average, the top group does worse the second time. This is the <i>regression effect</i>, and it happens whenever the scatter diagram spreads out around the SD line into a football-shaped cloud of points.

5. The <i>regression fallacy</i> consists in thinking that the regression effect must be due to something other than spread around the SD line.

6. There are two regression lines that can be drawn on a scatter diagram. One predicts y from x; the other predicts x from y.

##Chapter 11: The R.M.S Error for Regression

###Summary

1. When the regression line is used to predict y from x, the difference between the actual value and the predicted value is a <i>residual</i>, or prediction error.

2. In a scatter diagram, the vertical distance of a point above or below the regression line is the graphical counterpart of the prediction error made by the regression method.

3. The r.m.s. error of the regression line is the root-mean-square of the residuals. This measures the accuracy of the regression predictions. The predictions are off by amounts similar in size to the r.m.s. error. For many scatter diagrams, about 68% of the predictions will be right to within one r.m.s. error. About 95% will be right to within two r.m.s. errors.

4. The SD of y is equal to the r.m.s. error of a horizontal line through the average of y. The r.m.s. error of the regression line is smaller, by the factor sqrt(1-r^2). Therefore, the r.m.s. error for the regression line of y on x can be figured as 

* sqrt(1-r^2) x the SD of y

5. After carrying out a regression, statisticians often graph the residuals. If the residual plot shows a pattern, the regression may not have been appropriate.

6. When all the vertical strips in a scatter diagram show similar amounts of spread, the diagram is <i>homoscedastic</i>: the prediction errors are similar in size all along the regression line. When the scatter diagram is <i>heteroscedastic</i>, the prediction errors are different in different parts of the scatter diagram. Football-shaped diagrams are homoscedastic.

7. Suppose that a scatter diagram is football-shaped. Take the points inside a narrow vertical strip. Their y-values are a new data set. The new average is estimated by the regression method. The new SD is about equal to the r.m.s. error for the regression line. And the normal approximation can be done as usual, based on the new average and the new SD.

#Chapter 12: The Regression Line

##Summary

1. The regression line can be specified by two descriptive statistics: the <i>slope</i> and the <i>intercept</i>.

2. The slope of the regression line for y on x is the average change in y, per unit change in x. This equals
* r x SD of y/SD of x.

3. The intercept of the regression line equals the regression estimate for y, when x is 0.

4. The equation of the regression line for y on x is 
* y = slope x <i>x</i> + intercept

5. The equation can be used to make all the regression predictions, by substitution.

6. Among all lines, the regression line for y on x makes the smallest r.m.s. error in predicting y from x. For that reason, the regression line is often called the <i>least squares line</i>.

7. Sometimes, two quantities are thought to be connected by a linear relationship (for example, length and weight in Hooke's law). The statistical problem is to estimate the slope and intercept of the line. The <i>least squares estimates</i> are the slope and intercept of the regression line.

8. In this part of the book, scatter diagrams are used to graph the association between two variables. If the scatter diagram is football-shaped, it can be summarized by the average and SD of the two variables, with r to measure the strength of the association. 

9. How does the average of one variable depend on the values of the other variable? The regression line can be used to answer that question.

10. With a controlled experiement, the slope can tell you the average change in y that would be caused by a change in x. With an observational study, however, the slope cannot be relied on to predict the results of interventions. It takes a lot of hard work to draw casual inferences from observational data, with or without regression.

11. If the average of y depends on x in a non-linear way, the regression line can be quite misleading.

#Part IV Probability

#Chapter 13: What are the chances?

##Summary:
1. The <i>frequency theory</i> of chance applies most directly to chance processes which can be repeated over and over again, independently and under the same conditions.

2. The chance of something gives the percentage of times the thing is expected to happen, when the basic process is repeated over and over again.

3. Chances are between 0% and 100%. Impossibility is represented by 0% certainty by 100%.

4. The chance of something equals 100% minus the chance of the opposite thing. 

5. The chance that two things will both happen equals the chance that the first will happen, multiplied the <i>conditional</i> chance that the second will happen given that the first has happened. This is the <i>multiplication rule</i>.

6. Two things are <i>independent</i> if the chances for the second one stay the same no matter how the first one turns out.

7. If two things are independent, the chance that both will happen equals the product of their unconditional chances. This is a special case of the multiplication rule.

8. When you draw at random, all the tickets in the box have the same chance to be picked. Draws made at random with replacement are independent. Without replacement, the draws are dependent.

9. Blindly multiplying chances can make real trouble. Check for independence, or use conditional chances.

10. The mathematical theory of chance only applies in some situations. Using it elsewhere can lead to ridiculuous results.

#Chapter 14: More about Chance

##Summary

1. When figuring chacnes, one helpful strategy is to write down a complete list of all the possible ways that the chance process can turn out. If this is too hard, at least write down a few typical ways, and count how many ways there are in total.

2. The chance that at least one of the two things will happen equals the sum of the individual chances, provided the things are mutually exclusive. Otherwise, adding the chances will give the wrong answer -- double counting.

3. If you are having trouble working out the hcnace of an event, try to figure out the chance of its opposite; then subtract from 100%.

##Chapter 15: The Binomial Formula

###Summary

1. <i>binomial coefficient</i> n! / (k! (n-k)!) gives the number of ways to arrange n objects in a row, when k are alike of one kind and n-k are alike of another kind (for instance, red and blue marbles).

2. The chance that an event will occur exactly k times out of n is given by the binomial formula n! / (k!(n-k)!) p^k(1-p)^(n-k) 

In this formula, n is the number of trials, k is the number of times the event is to occur, and p is the probability that the event will occur on any particular trial. The assumptions: 
* The value of n must be fixed in advance.
* p must be the same from trial to trial.
* The trials must be independent. 