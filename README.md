# ERC20 (Tokens) 🎟️

## ❄️ introduction❓

* ERC20 is the EIP‑20 specification for fungible tokens on Ethereum that enforces a uniform interface so any compliant token can plug into wallets, DEXes, and dApps.

* It defines mandatory view functions (name, symbol, decimals, totalSupply, balanceOf) and state‑changing functions (transfer, transferFrom, approve), plus Transfer and Approval events for off‑chain indexing.

* This guarantees interoperable behavior for balance queries, direct transfers, and delegated transfers via allowances.


# ❄️ Real‑world examples

## 01.Stablecoins:

    USDT and USDC are ERC20 tokens used for dollar‑pegged payments, trading, and saving without typical crypto volatility.


## 02.Governance:
    Uniswap’s UNI is an ERC20 that lets holders vote on protocol upgrades and fee changes in the Uniswap DEX.



## 03.DeFi building blocks: 
    Many lending, staking, and yield‑farming positions are represented as ERC20 “receipt tokens” that can themselves be traded or reused in other protocols.


## ❄️ HOW IMPORTANT❓❓

* ERC20 is critical because it standardizes fungible tokens so one implementation works everywhere in the Ethereum ecosystem.

* It guarantees interoperability with wallets, DEXes, and DeFi protocols, enabling composable money‑legos and shared liquidity.

* This simplifies token development, accelerates adoption, and today secures a large share of all value on Ethereum via ERC20‑based assets.


# ❄️ Anatomy of an ERC-20 Token 

* `totalSupply()`: Returns the total supply of the token.

* `balanceOf(address)`:  Provides the balance of tokens held by a specific address.

* `transfer`  (address, uint256): Transfers a specified amount of tokens from the sender’s address to the specified recipient’s address.

* `transferFrom(address, address, uint256)` : Enables a third party to transfer tokens on behalf of the token owner, given that the owner has approved the transaction.

* `approve(address, uint256) `: Allows the token owner to grant permission to a third party to spend a specified amount of tokens on their behalf.

* `allowance(address, address)`:  Returns the amount of tokens the token owner has allowed a third party to spend on their behalf.

* `name() `: Returns the name of the token, for example, “Uniswap.”

* `symbol()`: Provides the token’s symbol, like “UNI.”

* `decimals()`: Indicates the number of decimal places the token can be divided into, typically 18 for most tokens.

