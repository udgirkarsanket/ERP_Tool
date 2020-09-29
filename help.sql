-- update shobha.products SET "product_name"='160MM HDPE ENDCAP',"type"='hdpe' where lower(type)='hepe';
-- update shobha.stock SET "product_name"='160MM HDPE ENDCAP' where product_name='160MM HEPE ENDCAP';
INSERT INTO sakshi."user"(
	username, password, role, last_login, full_name)
	VALUES ( 'udgirkarsakshi', 'pbkdf2:sha256:150000$OLjEcSOH$11366bfcb9e5b07f308b04cff28aff25a5533d085610b4db2b6abeca090064f8', 'user', '2020-06-13', 'sakshi udgirkar');