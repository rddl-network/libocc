OCC remote calls for trust anchor


Calls to create or inject a secret into the trust anchor

Initiate the trust anchor to create its own mnemonic phrase and derive a master seed. Store this key material inside the secure element of the trust anchor.

Initiate the trust anchor with a secure element hardened key material

/**
 * Inject key material into the trust anchor 
 * 
 * @param String(0) empty string for future use
 * @return Generated key. Sending over OSC as string 
 */

> OSCMessage(’/IHW/valiseMnemonicSeedInit’, ‘,s’, [””])
< False or True as “0” or “1” string

Create a Bip-39 compliant mnemonic phrase

/**
 * Create the mnemonic phrase
 * 
 * @param String(1) empty string for future use
 * @return A mnemonic phrase

 */

> OSCMessage(’/IHW/bip39Mnemonic’, ‘,s’, [””])

< 'focus nature unfair swap kingdom supply weather piano fine just brief maximum federal nature goat cash crystal rally response joy unique drum merit surprise'

Store Bip-39 compliant mnemonic phrase to trust anchor

/**
 * Store the mnemonic phrase to the trust anchor
 * 
 * @param String(0) The mnemonic phrase.
 * @param String(1) empty string for future use
 * @return False or True as “0” or “1” string

 */

> OSCMessage(’/IHW/valiseMnemonicSet’, ‘,ss’, ["focus nature unfair swap kingdom supply weather piano fine just brief maximum federal nature goat cash crystal rally response joy unique drum merit surprise", ””])

< False or True as “0” or “1” string

Retrieve Bip-39 compliant mnemonic phrase from trust anchor

/**
 * Get the mnemonic phrase from trust anchor
 * 
 * @param String(0) empty string for future use
 * @return Raw HEX-string of a base seed 512-bit derived from mnemonic. Sending over OSC as string 

 */

> OSCMessage(’/IHW/valiseMnemonicGet’, ‘,s’, [””])

< 'focus nature unfair swap kingdom supply weather piano fine just brief maximum federal nature goat cash crystal rally response joy unique drum merit surprise'

Turn Bip-39 compliant mnemonic phrase to seed

/**
 * Turn the mnemonic phrase into base seed 512-bit long
 * 
 * @param String(0) The mnemonic phrase.
 * @param String(1) empty string for future use
 * @return Raw HEX-string of a base seed derived from mnemonic. Sending over OSC as string 

 */

> OSCMessage(’/IHW/bip39MnemonicToSeed’, ‘,ss’, ["focus nature unfair swap kingdom supply weather piano fine just brief maximum federal nature goat cash crystal rally response joy unique drum merit surprise", ””])

< '3cb85c097bc8da4d68d7dda48ad7d9b1af9adeb87627e633f1509e7b9b0ada15eb98353b68699a411e535a631b73a5168528509d49cb3c5d5c570e7b8ccb8333'

Turn Bip-39 compliant mnemonic phrase into a 512-bit seed

/**
 * Turn the mnemonic phrase into base seed 512-bit long
 * 
 * @param String(0) The mnemonic phrase.
 * @param String(1) empty string for future use
 * @return Raw HEX-string of a base seed 512-bit derived from mnemonic. Sending over OSC as string 

 */

> OSCMessage(’/IHW/bip39MnemonicToSeed512’, ‘,ss’, ["focus nature unfair swap kingdom supply weather piano fine just brief maximum federal nature goat cash crystal rally response joy unique drum merit surprise", ””])

< '3cb85c097bc8da4d68d7dda48ad7d9b1af9adeb87627e633f1509e7b9b0ada15eb98353b68699a411e535a631b73a5168528509d49cb3c5d5c570e7b8ccb8333'

Bip-32 base seed store in secure memory - secure element

/**
 * Store the base seed inside the trust anchor's memory
 * 
 * @param String(0) The base seed.
 * @param String(1) empty string for future use
 * @return  Generated '0' or '1' string for failure or success Sending over OSC as string 

 */

> OSCMessage('/IHW/valiseSeedSet', ',ss', ["3cb85c097bc8da4d68d7dda48ad7d9b1af9adeb87627e633f1509e7b9b0ada15eb98353b68699a411e535a631b73a5168528509d49cb3c5d5c570e7b8ccb8333",""])

< '1'

Bip-32 base seed get from secure memory - secure element

/**
 * Get the base seed from the trust anchor's memory
 * 
 * @param String(0) empty string for future use
 * @return The stored base seed. Sending over OSC as string 
.
 */

> OSCMessage('/IHW/valiseSeedGet', ',s', [""])

< '3cb85c097bc8da4d68d7dda48ad7d9b1af9adeb87627e633f1509e7b9b0ada15eb98353b68699a411e535a631b73a5168528509d49cb3c5d5c570e7b8ccb8333'

Get all languages available for Bip-39 mnemonic phrases

/**
 * Get all te languages available to create mnemonic phrases
 * 
 * @param String(0) empty string for future use
 * @return A list of all languages, available. Sending over OSC as string 
.
 */

> OSCMessage('/IHW/bip39GetLanguages', ',s', [""])

< 'en es fr it jp zhs zht'

Get the specific word-list for a specific language to create Bip-39 mnemonic phrases.

ATTENTION - not appropriate to be used in this context. Resulting string too long.

  

/**
 * Get all the languages available to create mnemonic phrases
 * 
 * @param String(0) The language identifier. 'en es fr it jp zhs zht'
 * @param String(1) empty string for future use
 * @return A list of all languages, available. Sending over OSC as string 
.
 */

> msg = OSCMessage('/IHW/bip39GetWordlist', ',ss', ["en", ""])

< True

Get the nth word of a word-list constituting Bip-39 mnemonic phrases

/**
 * Get all the nth word of the wordlist for mnemonic phrases
 * 
 * @param String(0) The language identifier. 'en es fr it jp zhs zht'
 * @param String(1) The nth word out of the wordlist
 * @param String(2) empty string for future use
 * @return The nth word in the chosen language out of the wordlist. Sending over OSC as string 
.
 */

> OSCMessage('/IHW/bip39GetWord', ',sis', ["en", 526, ""])

< '526', 'dove'

Validate the consistency of a Bip-39 mnemonic phrase

/**
 * Validate the checksum in a mnemonic phrases
 * 
 * @param String(0) The language identifier. 'en es fr it jp zhs zht'
 * @param String(1) The mnemonic phrase to validate
 * @param String(2) empty string for future use
 * @return Error Code. Sending over OSC as string 
.
 */

> OSCMessage('/IHW/bip39MnemonicValidate', ',sss', ["en", "focus nature unfair swap kingdom supply weather piano fine just brief maximum federal nature goat cash crystal rally response joy unique drum merit surprise", ""])

< 0 


Turn Bip-39 compliant mnemonic phrase into raw and serialized private key

ATTENTION: Consider flags for main- and test-net

> OSCMessage(’/IHW/bip39MnemonicToPrivateKey’, ‘,ss’, ["focus nature unfair swap kingdom supply weather piano fine just brief maximum federal nature goat cash crystal rally response joy unique drum merit surprise", ””])

< returns raw private key with as HEX-string with "00" prefix and
  serialized private key e.g.:
  '001a76675310cc4c8759ed8af380f56dcb07ad415145ee339f6f42ce5568b9120e', 
	'xprv9s21ZrQH143K3yZWwDjFDzF4QTLmorN8DFMpeXQVA96Kgb92vQc1nLhTWekSNGrkCyM2ZHYGA5mrPUh2v13ERdVa91rT4HKgexKNcaY75Wb'

Turn Bip-39 compliant mnemonic phrase into bytes via HEX-string

> OSCMessage(’/IHW/bip39MnemonicToBytes’, ‘,ss’, ["focus nature unfair swap kingdom supply weather piano fine just brief maximum federal nature goat cash crystal rally response joy unique drum merit surprise", ””])

< returns mnemonic phrase as bytes via HEX-string, e.g.:
	'5a326fb46da7abb3be2d2056cf2c6fc4b54726d9011a35562adebc4ed88722e6'
  

Get  Bip-39 compliant mnemonic phrase from bytes via HEX-string

> OSCMessage(’/IHW/bip39MnemonicFromBytes’, ‘,ss’, ["5a326fb46da7abb3be2d2056cf2c6fc4b54726d9011a35562adebc4ed88722e6", ””])

< returns raw private key with as HEX-string with "00" prefix and
  serialized private key e.g.:
	'focus nature unfair swap kingdom supply weather piano fine just brief maximum federal nature goat cash crystal rally response joy unique drum merit surprise'

Get Bip-32 key from seed delivers back raw private and public key

/**
 * Generate key from given Seed 
 * 
 * @param string(0) seed in String type
 * @param int(1) <optional> key type. default is BIP32_VER_MAIN_PRIVATE
 * @param String(2) empty string for future use
 * @return Generated key. Sending over OSC as string 
 */

> OSCMessage('/IHW/bip32_key_from_seed', ',sis', ["", 3, ""])

< '003140ec303d3e2b62cf781db4e454bbf431708e4373f1f7f7c8ce771451db2da6', 
	'0334618aebb4f3d99ee18d97e11eededb9ba18e0271e7a5ced784d355b54066747'

Get Bip-32 key from parent

/**
 * Generate child key from parent key and given number
 * 
 * @param String(0) given key as base seed
 * @param int(1) num of child key. default value is 0
 * @param int(2) hardened or non-hardened 1 or 0, adds 0x8000000
 * @param int(3) <optional> network version type. default is BIP32_VER_MAIN_PRIVATE
 * @param int(4) <optional> key type. default is BIP32_FLAG_KEY_PRIVATE
 * @param String(5) empty string for future use
 * @return Generated child key. Sending over OSC as string 
 */

> OSCMessage('/IHW/bip32_key_from_parent', ',siiiis', ["3cb85c097bc8da4d68d7dda48ad7d9b1af9adeb87627e633f1509e7b9b0ada15eb98353b68699a411e535a631b73a5168528509d49cb3c5d5c570e7b8ccb8333", 0, 1, 0, 0, ""])

< '0060ffa4d247fef21e80fbc5b17f980e031255823c3413cfe47bb829c1e72018f3', 'xprv9vhb4aihZdnicrrpMdiisHxaAre3AKkkYUrzfH9sPP8ptLLM4FvAWRhNhmM2v9AunpHpPfCnXJZfWVBnFxLg8JkqKGA4C6d4fAKn2ZtzW5Y'

Get Bip-32 key from parent path string

/**
 * Generate child key from parent key and path
 * 
 * @param String(0) given key as base seed or empty
 * @param String(1) path of child key
 * @param int(2) <optional> Bip-32 entropy. default is BIP39_SEED_LEN_512;
 * @param int(3) Network version type. Main or testnet
 * @param int(4) <optional> key type. default is BIP32_FLAG_KEY_PRIVATE
 * @return Generated child key. Private Key raw and serialized .Sending over OSC as string 
 */

> OSCMessage('/IHW/bip32_key_from_parent_path_string', ',ssiiis', ["3cb85c097bc8da4d68d7dda48ad7d9b1af9adeb87627e633f1509e7b9b0ada15eb98353b68699a411e535a631b73a5168528509d49cb3c5d5c570e7b8ccb8333", "m/44h/84h/1h/0h", 0, 1, 1, ""])

< '02965a528ee94798315f1d5cff4b383db70dc5f0d56acf1e7c79279e54c3f391e1', 'tpubDDanfMGGb5sodXky3CeudDQK2T41q2DjiyDysLyCpWWwPnB17vHNEFP3KRtPhsA51s9j6TtoYo68B1Rgg3Ee3RJVG2vjDUAxp7b6gTyfxQG'


Get Bip-32 key from base58 encoded extended key

/**
 * Convert a base58 encoded extended key to an extended key
 * 
 * @param String(0) The extended key in base58.
 * @param String(1) empty string for future use
 * @return Generated extended key. Private or public key raw. Sending over OSC as string 
 */

> OSCMessage('/IHW/bip32_key_from_base58', ',ss', ["tprv8dNXqv32xucoDg6M2CaE2waZUz4FPqnkt2n7XhaKsMdJfw5S3dFv2B4pcwWgvWZEAFpbPkpYgf9TyLjXPAgcwN2RquNMrTM7aG5CUKc2jss", ""])

< '0060ffa4d247fef21e80fbc5b17f980e031255823c3413cfe47bb829c1e72018f3', '03aa570e47c884a57da93bc8e47dffff3fc5aef786b90ef9cc3f55a05882cead40'

Serialize Bip-32 encoded key

/**
 * Serialize an extended key to memory using BIP32 format.
 * 
 * @param String(0) given key as base seed
 * @param String(1) intended derivation path
 * @param int(2) <optional> network version type. default is BIP32_VER_MAIN_PRIVATE
 * @param int(3) <optional> key type. default is BIP32_FLAG_KEY_PRIVATE
 * @param String(4) empty string for future use
 * @return serialized key
 */

> OSCMessage('/IHW/bip32_key_serialize', ',ssiis', ["3cb85c097bc8da4d68d7dda48ad7d9b1af9adeb87627e633f1509e7b9b0ada15eb98353b68699a411e535a631b73a5168528509d49cb3c5d5c570e7b8ccb8333", "m/44h/84h/1h/0h", 0, 0, ""])

< '0488ade403d40707e300000000ae833f482609efed3b6cc301417d898921e9fc6b421eb0a6d1b73436b677ddfc0050ddf0ae867e5a13c5ae56f686984e0826ccc80c7bbab76a7d062c3ce547ef84'

Unserialize Bip-32 encoded key

/**
 * Unserialize an serialized, extended key.
 * 
 * @param String(0) given serialized, extended key as string
 * @param String(1) empty string for future use
 * @return Unserialized key
 */

> OSCMessage('/IHW/bip32_key_unserialize', ',ss', ["0488ade403d40707e300000000ae833f482609efed3b6cc301417d898921e9fc6b421eb0a6d1b73436b677ddfc0050ddf0ae867e5a13c5ae56f686984e0826ccc80c7bbab76a7d062c3ce547ef84", ""])

< '0050ddf0ae867e5a13c5ae56f686984e0826ccc80c7bbab76a7d062c3ce547ef84', '02965a528ee94798315f1d5cff4b383db70dc5f0d56acf1e7c79279e54c3f391e1'

Get fingerprint of Bip-32 encoded key

/**
 * Get fingerprint for Bip-32 encoded key.
 * 
 * @param String(0) given key as base seed
 * @param String(1) intended derivation path
 * @param int(2) <optional> network version type. default is BIP32_VER_MAIN_PRIVATE
 * @param int(3) <optional> key type. default is BIP32_FLAG_KEY_PRIVATE
 * @param String(4) empty string for future use
 * @return serialized key
 */

> OSCMessage('/IHW/bip32_key_get_fingerprint', ',ssiis', ["3cb85c097bc8da4d68d7dda48ad7d9b1af9adeb87627e633f1509e7b9b0ada15eb98353b68699a411e535a631b73a5168528509d49cb3c5d5c570e7b8ccb8333", "m/44h/84h/1h/0h", 0, 0, ""])

< '47a2114f'

Derive a Slip-21 symmetric key from a seed

/**
 * Create a new symmetric key from a base seed or entropy.
 * This creates a new symmetric master or base seed.
 * 
 * @param String(0) Give key base seed to use.
 * @param String(1) empty string for future use
 * @return  The resulting symmetric master or base seed.
 */

> OSCMessage('/IHW/wallySymKeyFromSeed', ',ss', ["3cb85c097bc8da4d68d7dda48ad7d9b1af9adeb87627e633f1509e7b9b0ada15eb98353b68699a411e535a631b73a5168528509d49cb3c5d5c570e7b8ccb8333", ""])

< '49c63126a2f9d4ec1ce8fd25b53e902bc90118785f3390ce5d49c6ec6cb430247c83e3395b3f90df319776adfd963c7f1a8b1994e3a9b85a3bae6c88699adfdb'

Derive a Slip-21 symmetric key from a given seed or parent symmetric key (entropy) with a specific label

/**
 * Create a new symmetric key from parent symmetric key or entropy.
 * This creates a new symmetric master or base key.
 * 
 * @param String(0) Entropy to use.
 * @param int(1) Version byte to prepend label. Has to be 0
 * @param String(2) Label, a string according to SLIP-21
 * @param String(3) empty string for future use
 * @return  The resulting key.
 */

**Python**
> OSCMessage('/IHW/wallySymKeyFromParent', ',siss', ["49c63126a2f9d4ec1ce8fd25b53e902bc90118785f3390ce5d49c6ec6cb430247c83e3395b3f90df319776adfd963c7f1a8b1994e3a9b85a3bae6c88699adfdb", 0, "m/'SLIP-0021'/'Master encryption key'",  ""])

**Go**
> msg := osc.NewMessage("/IHW/wallySymKeyFromParent/*")
> msg.Append("49c63126a2f9d4ec1ce8fd25b53e902bc90118785f3390ce5d49c6ec6cb430247c83e3395b3f90df319776adfd963c7f1a8b1994e3a9b85a3bae6c88699adfdb", 0, "m/'SLIP-0021'/'Master encryption key'",  "")
> msg.Append(0)
> msg.Append("m/'SLIP-0021'/'Master encryption key'")
> msg.Append("")
> client.Send(msg)

**Rust**
> let addr = "/IHW/wallySymKeyFromParent".to_string();
>    let args = vec![
>        OscType::String("49c63126a2f9d4ec1ce8fd25b53e902bc90118785f3390ce5d49c6ec6cb430247c83e3395b3f90df319776adfd963c7f1a8b1994e3a9b85a3bae6c88699adfdb".to_string()),
>        OscType::Int(0),
>        OscType::String("m/'SLIP-0021'/'Master encryption key'".to_string()),
>        OscType::String("".to_string()),
>    ];
>    let msg = OscMessage {
>        addr: addr,
>        args: Some(args),

< '5a0fb3d3cd78e8e7f2f721a597d8b94677daca69734c82db24d49bf1535f27afd3e98e17897868cbff1597d572c8e601da6fbe84a9f9300b0fa7089506f340f7'

List of all relevant OSC/OCC messages

> CRYPTO MESSAGES

wally_aes_cbc
wally_sha256
wally_sha512
wally_ripemd160
wally_hash160
wally_ec_public_key_from_private_key
wally_ec_public_key_decompress

> ADDRESS MESSAGES

>> wally_wif_from_bytes.  AV
>> wally_wif_to_bytes.    AV
>> wally_wif_to_public_key.   AV
>> wally_wif_to_address.   AV.  HDKEY
>> wally_bip32_key_to_address.   AV.   HDKEY
wally_confidential_addr_to_addr
wally_confidential_addr_to_ec_public_key
wally_confidential_addr_from_addr

> BIP32 MESSAGES

bip32_key_from_seed
>> bip32_key_serialize.   HDKEY
bip32_key_unserialize
>> bip32_key_from_parent.   HDKEY
>> bip32_key_from_parent_path.   HDKEY
>> bip32_key_from_parent_path_str.   HDKEY
>> bip32_key_to_base58.   HDKEY
bip32_key_from_base58
bip32_key_path_from_str
bip32_key_path_str_get_features

> BIP39 MESSAGES

bip39_get_languages
bip39_get_wordlist
bip39_get_word
bip39_mnemonic_from_bytes
bip39_mnemonic_to_bytes
bip39_mnemonic_validate
bip39_mnemonic_to_seed
bip39_mnemonic_to_seed512

> SYMMETRIC MESSAGES

wally_symmetric_key_from_seed
wally_symmetric_key_from_parent

