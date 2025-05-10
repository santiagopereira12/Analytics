from sklearn.model_selection import GridSearchCV

# Definir los parámetros a probar
parametros = {
    'max_depth': [3, 5, 10, None],
    'min_samples_split': [2, 5, 10],
    'min_samples_leaf': [1, 2, 4],
    'criterion': ['gini', 'entropy']
}

# Crear modelo base
modelo = DecisionTreeClassifier(random_state=42)

# Aplicar búsqueda en malla
grid_search = GridSearchCV(estimator=modelo, param_grid=parametros, cv=5, scoring='accuracy', n_jobs=-1)
grid_search.fit(X_train, y_train)

# Mejor modelo encontrado
mejor_modelo = grid_search.best_estimator_

# Evaluación del mejor modelo
predicciones_optimas = mejor_modelo.predict(X_test)
print("\nMejores parámetros encontrados:", grid_search.best_params_)
print("Exactitud con optimización:", round(accuracy_score(y_test, predicciones_optimas) * 100, 2), "%")
