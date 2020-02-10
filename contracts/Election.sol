pragma solidity 0.5.16;

contract Election {
  // Model a Candidate
  struct Candidate {
    uint Candidate;
    string name;
    uint voteCount;
  }
  // Store Candidate
  // Fetch Candidate
  mapping(uint => Candidate) public candidates;
  // Store Cndidate Count
  uint public candidatesCount;

  constructor () public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }

  function addCandidate (string memory _name) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }
}