# COE187 | Embedded Hardware and Software Design

This repository contains all lab submissions for the COE187 course. Each major lab activity will be organized into its own section.

---

##  Lab Activity: Machine Learning on the Edge

This lab is submitted in two parts, both of which are documented in this repository.

### Part 1: Model Training & Quantization

This section contains the proof of work for the first part of the activity: successfully training and quantizing the "Cats vs. Dogs" model using the `ai8x` pipeline.

#### Dataset

The model was trained using the "Cats and Dogs image classification" dataset from Kaggle, which was pre-sorted into the required `train` and `test` directories.

* **Dataset Link:** [https://www.kaggle.com/datasets/samuelcortinhas/cats-and-dogs-image-classification](https://www.kaggle.com/datasets/samuelcortinhas/cats-and-dogs-image-classification)

#### Proof of Work Files

* **/logs**: Contains the complete output log from the successful training run (`2025.11.09-035556.log`), which serves as proof of a complete and successful training process.
* **/scripts**: Contains all shell scripts that were modified to fix bugs, handle environment setup, and run the training/quantization workflow.

#### Replication Steps

1.  Set up the `ai8x-training` and `ai8x-synthesis` environments using the `dependency-setup-win-cu11.sh` script.
2.  Download the dataset from the link above and place it in `ai8x-training/data/cats_vs_dogs/`.
3.  Run the `train_max78000.sh` script to train the model.
4.  Run the `quantize_max78000.sh` script to quantize the resulting model.

*(Bug Fix)* Downgrade the `Pillow` library (`pip install "Pillow<10"`) in the `ai8x-training` venv to resolve the `Image.ANTIALIAS` error.

---

### Part 2: Deployment to MAX78000

This section covers the second part of the activity: using the trained model from Part 1 and deploying it to the MAX78000 MCU to perform live classification with the built-in camera.

* **Status:** In Progress.
* **(This section will be updated with the final C project code for the MAX78000 deployment.)**