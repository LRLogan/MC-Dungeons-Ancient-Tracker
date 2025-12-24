using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.Sqlite;
using System.IO;

namespace DungeonsAncientTracker
{
    internal static class DatabaseManager
    {
        private const string DbFileName = "game.db";

        /// <summary>
        /// Gets the full path for the database (this could be done without a method but it is used to keep things modular)
        /// </summary>
        /// <returns>database path</returns>
        public static string GetDatabasePath()
        {
            return Path.Combine(
                AppContext.BaseDirectory,
                DbFileName
            );
        }

        /// <summary>
        /// Opens a connection to the DB
        /// </summary>
        /// <param name="dbPath"></param>
        /// <returns></returns>
        public static SqliteConnection OpenConnection(string dbPath)
        {
            SqliteConnection connection = new SqliteConnection(
                $"Data Source={dbPath}"
            );

            connection.Open();

            // Enabeling foreign keys in SQLite as they are not by default
            using var cmd = connection.CreateCommand();
            cmd.CommandText = "PRAGMA foreign_keys = ON;";
            cmd.ExecuteNonQuery();

            return connection;
        }

        /// <summary>
        /// Creates the DB since the .db file is an artifact of running the schema
        /// </summary>
        /// <param name="connection"></param>
        public static void InitializeDatabase(SqliteConnection connection)
        {
            string dbPath = connection.DataSource;
            bool isNewDatabase = !File.Exists(dbPath);

            if (!isNewDatabase)
                return;

            ExecuteSqlScript(connection, "Data.schema.sql");
            ExecuteSqlScript(connection, "Data.insertData.sql");
        }

        /// <summary>
        /// Runs the SQL Scripts 
        /// </summary>
        /// <param name="connection"></param>
        /// <param name="resourceName"></param>
        private static void ExecuteSqlScript(
            SqliteConnection connection,
            string resourceName)
        {
            using var stream =
                typeof(DatabaseManager)
                    .Assembly
                    .GetManifestResourceStream(resourceName);

            using StreamReader reader = new StreamReader(stream);
            string sql = reader.ReadToEnd();

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();
        }
    }

}
