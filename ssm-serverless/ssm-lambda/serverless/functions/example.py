import boto3

client = boto3.client('ssm')


def get_secret(key):
	resp = client.get_parameter(
		Name=key,
		WithDecryption=True
	)
	return resp['Parameter']['Value']

my_value = get_secret('/vpc/id')

def handler(event, context):
    return my_value