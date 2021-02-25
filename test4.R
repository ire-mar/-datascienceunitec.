error3 = model1$fitted.values - table6$KW
print("Poly 3 Accuracy= ")
mean(error3^2)