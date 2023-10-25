from flask import Flask, render_template

app =Flask(__name__)

@app.route('/')
def principal():
    return render_template('index.html')

@app.route('/sistema')
def sistema():
    return render_template('hotel/sistema.html')
L
@app.route('/bar')
def bar():
    return render_template('hotel/servicios/bar.html')

@app.route('/piscina')
def piscina():
    return render_template('hotel/servicios/piscina.html')

@app.route('/restaurante')
def restaurante():
    return render_template('hotel/servicios/restaurante.html')

@app.route('/roomservice')
def roomService():
    return render_template('hotel/servicios/roomService.html')

@app.route('/spa')
def spa():
    return render_template('hotel/servicios/spa.html')

@app.route('/form')
def form():
    return render_template('formulario.html')

# @app.route('/principal')
# def principal():
#     return render_template('principal.html')

# @app.route('/secundaria')
# def secundaria():
#     return render_template('/secundaria.html')


if __name__ == '__main__':
    app.run(debug=True)