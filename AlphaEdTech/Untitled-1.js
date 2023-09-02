function findNextNumber(sequence) {
    const lastNumber = sequence[sequence.length - 1];
    const difference = lastNumber - sequence[sequence.length - 2];
    
    const nextNumber = lastNumber + difference;
    return nextNumber;
  }
  
  const sequence = [4, 13, 22, 31, 40, 103, 112, 121, 130, 202, 211];
  const nextNumber = findNextNumber(sequence);
  console.log("O próximo número na sequência é:", nextNumber);
  