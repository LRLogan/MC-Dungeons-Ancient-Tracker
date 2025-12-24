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
            using var connection = DatabaseManager.OpenConnection(dbPath);

            DatabaseManager.InitializeDatabase(connection);

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
                    CommandDispatcher.Dispatch(input, connection);
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error: {ex.Message}");
                }
            }
        }
    }
}
