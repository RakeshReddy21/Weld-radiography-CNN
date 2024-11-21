imdsTrain = imageDatastore('C:\Users\PAVAN KUMAR REDDY\OneDrive\Documents\MATLAB\radiographs\TRAINING\',...
                       'IncludeSubfolders',true,...
                       'LabelSource','foldernames');
imdsTest = imageDatastore('C:\Users\PAVAN KUMAR REDDY\OneDrive\Documents\MATLAB\radiographs\TESTING\',...
                       'IncludeSubfolders',true,...
                       'LabelSource','foldernames');
numImagesTrain = numel(imdsTrain.Labels);
idx = randperm(numImagesTrain,2);
 net = squeezenet;

inputSize = net.Layers(1).InputSize
augimdsTrain = augmentedImageDatastore(inputSize(1:2),imdsTrain);
augimdsTest = augmentedImageDatastore(inputSize(1:2),imdsTest);
 layer = 'pool10';
featuresTrain = activations(net,augimdsTrain,layer,'OutputAs','rows');
featuresTest = activations(net,augimdsTest,layer,'OutputAs','rows');
YTrain = imdsTrain.Labels;
YTest = imdsTest.Labels;
mdl = fitcecoc(featuresTrain,YTrain);
YPred = predict(mdl,featuresTest);
accuracy = mean(YPred == YTest)
[c order]=confusionmat(YTest,YPred);
c