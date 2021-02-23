pragma solidity >=0.4.2 <0.6.0;

contract Election {
	// Constructor
	constructor() public {
		add_candidate("Candidate 1");
		add_candidate("Candidate 2");
	}

	// Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	// Track Account Votes
	mapping (address => bool) public voters; 

	// Store Candidates
	mapping (uint => Candidate) public candidates; // writes to blockchain (updates state of SC)

	// Store Candidate Count
	uint public candidatesCount; // counter cache for mapping (initialized to 0)

	event votedEvent (
  	uint indexed _candidateId
  );

	function add_candidate(string memory _name) private {
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

	function vote (uint _candidateId) public {
		require(!voters[msg.sender]);
		require(_candidateId > 0 && _candidateId <= candidatesCount);
		voters[msg.sender] = true;
		candidates[_candidateId].voteCount++;
		emit votedEvent(_candidateId);
	}
}