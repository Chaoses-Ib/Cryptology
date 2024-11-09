#![feature(adt_const_params)]

use std::mem::size_of;
use std::sync::OnceLock;

use aes::cipher::{generic_array::GenericArray, BlockDecrypt, BlockEncrypt, KeyInit};
use aes::Aes128;
use serde::{Deserialize, Serialize};
use serde_with::{serde_as, DeserializeAs, SerializeAs};
use uuid::Uuid;

const KEY: [u8; 16] = [0u8; 16];

// TODO: Generic type
// TODO: Const generic key
struct AesUuid<const KEY: [u8; 16]>;

impl<const KEY: [u8; 16]> AesUuid<KEY> {
    fn cipher() -> &'static Aes128 {
        static CIPHER: OnceLock<Aes128> = OnceLock::new();
        CIPHER.get_or_init(|| {
            let key = GenericArray::from(KEY);
            Aes128::new(&key)
        })
    }
}

impl<const KEY: [u8; 16]> SerializeAs<u32> for AesUuid<KEY> {
    fn serialize_as<S>(value: &u32, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        let cipher = Self::cipher();
        let mut buf = [0u8; 16];
        buf[..size_of::<u32>()].copy_from_slice(&value.to_le_bytes());
        let mut block = GenericArray::from(buf);
        cipher.encrypt_block(&mut block);
        let uuid = Uuid::from_bytes(block.into());
        serializer.serialize_str(&uuid.to_string())
    }
}

impl<'de, const KEY: [u8; 16]> DeserializeAs<'de, u32> for AesUuid<KEY> {
    fn deserialize_as<D>(deserializer: D) -> Result<u32, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        let uuid_str: String = Deserialize::deserialize(deserializer)?;
        let uuid = Uuid::parse_str(&uuid_str).map_err(serde::de::Error::custom)?;
        let bytes = uuid.as_bytes();
        let cipher = Self::cipher();
        let mut block = GenericArray::clone_from_slice(bytes);
        cipher.decrypt_block(&mut block);
        Ok(u32::from_le_bytes(
            block[..size_of::<u32>()].try_into().unwrap(),
        ))
    }
}

#[serde_as]
#[derive(Serialize, Deserialize)]
struct MyStruct {
    #[serde_as(as = "AesUuid<KEY>")]
    value: u32,
}

fn main() {
    let my_struct = MyStruct { value: 1 };
    let serialized = serde_json::to_string(&my_struct).unwrap();
    println!("Serialized: {}", serialized);

    let deserialized: MyStruct = serde_json::from_str(&serialized).unwrap();
    println!("Deserialized: {}", deserialized.value);
}
