import pandas as pd
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score

# 1. Cargar datos
df = pd.read_csv('clientes.csv')

# 2. Separar características (X) y etiqueta (y)
X = df.drop('estado_credito', axis=1)
y = df['estado_credito']

# 3. Dividir en entrenamiento y prueba
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)

# 4. Entrenar modelo de árbol de decisión
model = DecisionTreeClassifier(random_state=42)
model.fit(X_train, y_train)

# 5. Realizar predicciones
y_pred = model.predict(X_test)

# 6. Evaluar modelo
print("Exactitud (accuracy):", round(accuracy_score(y_test, y_pred)*100, 2), "%\n")

print("Reporte de Clasificación:\n", classification_report(y_test, y_pred))

print("Matriz de Confusión:\n", confusion_matrix(y_test, y_pred))
