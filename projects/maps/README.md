# Yelp Map Project

This project aims to create a visualization of restaurant ratings using machine learning and the [Yelp academic dataset](https://www.yelp.com/academic_dataset). In this visualization, Berkeley is segmented into regions, where each region is shaded by the predicted rating of the closest restaurant (yellow is 5 stars, blue is 1 star). Specifically, the visualization to be constructed is a [Voronoi diagram](https://en.wikipedia.org/wiki/Voronoi_diagram).

### Skills needed in this Project

- List-related functions in Python, including List Comprehension, sum, min and max; zip is also used
- Data abstraction
- Unsupervised Learning to group together restaurants that are close together
  - k-means algorithm to discover the centers of clusters
- Supervised Learning to predict what rating a user would give for a restaurant
  - Least-squares linear regression
- Data Visualization