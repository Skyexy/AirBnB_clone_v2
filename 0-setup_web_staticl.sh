sudo apt-get update
sudo apt-get install nginx
mkdir –p data/web_static/releases/test/
mkdir –p data/web_static/shared/
code = 
"
	<html>
		<head>
		</head>
		<body>
			Holberton School
		</body>
	</html>
"
echo $code > data/web_static/releases/test/index.html
ln -sfn /data/web_static/releases/test/ /data/web_static/current
sudo chown -R $ubuntu:$ubuntu /data/
