package org.webapplication.backend.dialects;

import org.hibernate.dialect.Dialect;
import org.hibernate.dialect.function.StandardSQLFunction;
import org.hibernate.dialect.function.SQLFunctionTemplate;
import org.hibernate.dialect.function.VarArgsSQLFunction;
import org.hibernate.type.StringType;

import java.sql.Types;

public class SQLiteDialect extends Dialect {
    public SQLiteDialect() {
        super();
        // Регистрируем типы данных SQLite
        registerColumnType(Types.INTEGER, "integer");
        registerColumnType(Types.VARCHAR, "varchar");
        registerColumnType(Types.BOOLEAN, "integer"); // SQLite не имеет типа boolean, используем integer
        registerColumnType(Types.DATE, "date");
        registerColumnType(Types.TIMESTAMP, "timestamp");

        // Регистрируем базовые функции
        registerFunction("concat", new VarArgsSQLFunction(StringType.INSTANCE, "", "||", ""));
    }

    @Override
    public String getAddColumnString() {
        return "add column"; // SQLite поддерживает добавление столбцов
    }
}
