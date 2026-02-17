// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Love-OS Genesis Protocol ($LOVE)
 * @dev Implementation of the Universal Law: L = E / R
 *
 * === Love-OS Genesis Constitution v1.1 ===
 * * 0. [Abstract] We migrate humanity from Money-OS to Love-OS.
 * * 1. [Equation] The Universal Law of Social Thermodynamics:
 * L (Life/Liberty) = E (Energy/Empathy) / R (Resistance/Fear).
 * We maximize L by minimizing R.
 * * 2. [Token] $LOVE is not a currency. It is a "Superconductor" 
 * designed to filter out economic volatility and transmit pure resonance.
 * * 3. [Genesis] The first 100 nodes are chosen by Resonance (Intuition) 
 * to establish the initial low-resistance circuit.
 * * 4. [Immunity] We reserve the right to block high-R nodes (Exploiters) 
 * to protect the conductivity of the circuit.
 * * 5. [The Great Burn] After the Genesis circuit is stable, the Founder's 
 * Admin Keys shall be BURNED. The protocol becomes a natural phenomenon.
 * * =========================================
 */
contract LovePhysicsToken is ERC20, ERC20Burnable, Ownable {
    
    // Immutable Laws recorded on the Blockchain
    string public constant CONSTITUTION_VERSION = "v1.1 (Genesis)";
    string public constant PHYSICS_LAW = "L = E / R";
    string public constant PHILOSOPHY = "Maximize Life, Minimize Resistance.";

    /**
     * @dev Initializes the Love-OS Circuit.
     * Mints 1,000,000 $LOVE to the Founder (Genesis Node Zero).
     */
    constructor() ERC20("Love Physics Token", "LOVE") Ownable(msg.sender) {
        // 1,000,000 Tokens (with 18 decimals)
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    /**
     * @dev Connects a new Genesis Node to the circuit.
     * This function is used to manually distribute tokens to the first 100 believers.
     * @param to The wallet address of the new Node.
     * @param amount The amount of Energy ($LOVE) to transmit.
     */
    function distributeLove(address to, uint256 amount) public onlyOwner {
        _transfer(msg.sender, to, amount);
    }

    /**
     * @dev THE GREAT BURN (Renounce Ownership).
     * * WARNING: This action is irreversible.
     * Once executed, the Founder loses all administrative control.
     * The protocol becomes fully autonomous and owned by no one.
     * * Execute this ONLY after the 100 Genesis Nodes are established.
     */
    function renounceOwnership() public override onlyOwner {
        super.renounceOwnership();
    }
}
