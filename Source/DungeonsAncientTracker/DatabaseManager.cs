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
        private const string DbFileName = "mainDB.db";

        /// <summary>
        /// Gets the full path for the database (this could be done without a method but it is used to keep things modular)
        /// </summary>
        /// <returns>database path</returns>
        public static string GetDatabasePath()
        {
            string baseDir = AppContext.BaseDirectory;

            string dataDir = Path.Combine(baseDir, "Data");
            Directory.CreateDirectory(dataDir);

            return Path.Combine(dataDir, "ancients.db");
        }

        /// <summary>
        /// Opens a connection to the DB
        /// </summary>
        /// <param name="dbPath"></param>
        /// <returns></returns>
        public static SqliteConnection OpenConnection(string dbPath)
        {
            var connection = new SqliteConnection(
                $"Data Source={dbPath};Mode=ReadWriteCreate"
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
            ExecuteSqlScript(connection, "schema.sql");
            ExecuteSqlScript(connection, "insertData.sql");
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
            var fullName =
            $"DungeonsAncientTracker.Data.{resourceName}";

            using var stream =
                typeof(DatabaseManager)
                    .Assembly
                    .GetManifestResourceStream(fullName)
                ?? throw new InvalidOperationException(
                    $"Embedded resource not found: {fullName}");

            using var reader = new StreamReader(stream);
            var sql = reader.ReadToEnd();

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;
            cmd.ExecuteNonQuery();
        }
    }

}
