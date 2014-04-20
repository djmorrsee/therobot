from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello!'
    
@app.route('/actions/line')
def line():
	dis = request.args.get('dis')
	if dis == None:
		return 'Not Valid: Need dis Variable'
		
	return render_template('line.html', dis=dis)

@app.route('/actions/square')
def square():
	size = request.args.get('size')
	if size == None:
		return 'Not Valid: Need size Variable'
		
	return render_template('square.html', size=size)


if __name__ == '__main__':
    #MakeData()
    app.run(debug=True)
