from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score

# División
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)

# Modelo básico
modelo_basico = DecisionTreeClassifier(random_state=42)
modelo_basico.fit(X_train, y_train)

# Evaluación
predicciones_basicas = modelo_basico.predict(X_test)
print("Exactitud sin optimización:", round(accuracy_score(y_test, predicciones_basicas) * 100, 2), "%")
