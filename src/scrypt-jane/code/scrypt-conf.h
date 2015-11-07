/*
	pick the best algo at runtime or compile time?
	----------------------------------------------
	SCRYPT_CHOOSE_COMPILETIME (gcc only!)
	SCRYPT_CHOOSE_RUNTIME
*/

#ifndef SCRYPT_CHOOSE_COMPILETIME

#warning SCRYPT_CHOOSE_RUNTIME selected
#define SCRYPT_CHOOSE_RUNTIME

#else
#warning SCRYPT_CHOOSE_COMPILETIME selected
#endif


/*
	hash function to use
	-------------------------------
	SCRYPT_BLAKE256
	SCRYPT_BLAKE512
	SCRYPT_SHA256
	SCRYPT_SHA512
	SCRYPT_SKEIN512
*/
//#define SCRYPT_SHA256


/*
	block mixer to use
	-----------------------------
	SCRYPT_CHACHA
	SCRYPT_SALSA
*/
//#define SCRYPT_SALSA
