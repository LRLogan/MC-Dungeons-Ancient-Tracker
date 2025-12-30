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
            using var connection = DatabaseManager.OpenConnection();

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
            Console.WriteLine("Welcome to MC Dungeons Ancient Helper!" +
                "\nDatabase ready. Type 'help' for a list of commands and other help." +
                "\nType 'exit' to exit program.\n");

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

                Console.WriteLine();
            }
        }
    }
}
