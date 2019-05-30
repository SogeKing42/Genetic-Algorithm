class NeuralLayer{
  int[] biases;
  double[] activations;
  double[][] weights;
  
  boolean input;
  
  int size;
  int index;
  
  NeuralLayer lastNL;
  
  NeuralLayer(int siz, boolean inp, int ind){
    lastNL = Brain.getLastNL(ind);
    
    biases = new int[siz];
    activations = new double[siz];
    weights = new double[siz][lastNL.length];
    
    if(gen == 0){
      randomize();
    }else{
    
    }
    
    input = inp;
    index = ind;
    size = siz;
  }

  double activationFunction(){
    if(input){
      activations = getData();
    }
    else{
      for(int i = 0; i < size;i++){
        double sum;
        for(int j = 0; j < lastNL.size(); j++){
          sum += (lastNL.get(j)) * (weights[i][j]) + biases[i]; //FIX BY SETTING ARRAY BEFORE, AND GRABBING HERE
        }
        
        sum = sigmoid(sum);
        append(activations, sum);
      } 
    }
    
  }
  
  void randomize(){
    for(int i = 0; i < size; i++){
      biases[i] = Math.round(random(0, 10));
      for(int j = 0; j < weights[0].length; j++){
        weights[i][j] = random(-10, 10);
      }
    }
  }
  
  double[] getActivations(){
    return activations;
  }
  
  NeuralLayer clone(){
    //????????????????????????????????????????????
  }
  
  void mutate(){
    for(int i = 0; i < size; i++){
      biases[i] += random(-1, 1);
      for(int j = 0; j < weights[0].length; j++){
        weights[i][j] *= random(0.9, 1.1);
      }
    }
  
  }
  
}
