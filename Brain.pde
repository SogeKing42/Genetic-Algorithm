class Brain{
  ArrayList<NeuralLayer> neuralNet;
  
  Brain(){
    if(gen < 5){
      neuralNet = new ArrayList<NeuralLayer>(2);
      neuralNet.set(1, new NeuralLayer(2, false, 1)); //initializes a layer with 2 nodes, false for input layer, and given its index of 1
    }
    else if(gen < 10){
      neuralNet = new ArrayList<NeuralLayer>(2);
      neuralNet.set(1, new NeuralLayer(3, false, 1));
    }
    else if(gen < 15){
      neuralNet = new ArrayList<NeuralLayer>(2);
      neuralNet.set(1, new NeuralLayer(4, false, 1));
    }
    else{
      neuralNet = new ArrayList<NeuralLayer>(3);
      neuralNet.set(1, new NeuralLayer(3, false, 1));
      neuralNet.set(2, new NeuralLayer(4, false, 2));
    }
    neuralNet.set(0, new NeuralLayer(8, true, 0)); //initializes input layer with 8 nodes
    
  }
  
  public NeuralLayer getLastNL(int ind){
    if(ind == 0){
      return neuralNet.get(0);
    }
    return neuralNet.get(ind - 1);
  
  }
  
  int fireTheNet(){
    int choice = 0;
    //Causes the neural net to give a "response"
    return choice;
  }
  

}
