using Microsoft.Data.Sqlite;
using MySql.Data.MySqlClient;
using Newtonsoft.Json;
using System.Data;
using System.Linq;
using System.Text.Json.Nodes;

/*
 * Personal Proj developed by Logan Larrondo
 * This program will provide information on MC Dungeons items and runes needed for Ancient Hunts 
 */

namespace DungeonsAncientTracker
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Setting up the DB
            string dbPath = DatabaseManager.GetDatabasePath();
            bool isNewDatabase = !File.Exists(dbPath);

            // Delete old DB if it exists (Optional, for clean run)
            if (File.Exists(dbPath)) File.Delete(dbPath);

            using var connection = DatabaseManager.OpenConnection(dbPath);

            DatabaseManager.InitializeDatabase(connection);

            //Console.WriteLine($"Is new DB: {isNewDatabase}");
            using var cmd = connection.CreateCommand();
            cmd.CommandText = @"
                SELECT name, type
                FROM sqlite_master
                WHERE type = 'table';
            ";

            using var reader = cmd.ExecuteReader();
            Console.WriteLine("Tables in database:");

            while (reader.Read())
            {
                Console.WriteLine(reader["name"]);
            }


            // Actual user input loop
            RunUserLoop(connection);
        }

        /// <summary>
        /// Main user input loop
        /// </summary>
        /// <param name="connection"></param>
        static void RunUserLoop(SqliteConnection connection)
        {
            Console.WriteLine("Database ready. Type 'help' for commands.");

            while (true)
            {
                Console.Write("> ");
                var input = Console.ReadLine();

                if (string.IsNullOrWhiteSpace(input))
                    continue;

                if (input.Equals("exit", StringComparison.OrdinalIgnoreCase))
                    break;

                try
                {
                    CommandDispatch.Dispatch(input, connection);
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error: {ex.Message}");
                }
            }
        }
    }
}
