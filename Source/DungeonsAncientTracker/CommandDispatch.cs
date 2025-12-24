using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DungeonsAncientTracker
{
    /// <summary>
    /// Handles the commands in this class so Main does not become overcrowded / monolithic as the program grows
    /// </summary>
    internal static class CommandDispatch
    {
        public static void Dispatch(string input, SqliteConnection connection)
        {
            string[] inputParts = input.Split(
                ' ',
                StringSplitOptions.RemoveEmptyEntries
                );

            // Handles the user input 
            switch (inputParts[0])
            {
                // Handles all the list commands
                case "list":
                    switch (inputParts[1])
                    {
                        case "maps":
                            ListMaps(connection);
                            break;

                        default:
                            Console.WriteLine($"Unknown command '{inputParts[1]}'. \nType 'help' for list of Available commands");
                            break;
                    }
                    break;

                // Handles all the get commands
                case "get":
                    switch (inputParts[1])
                    {
                        case "maps":

                            break;

                        default:
                            Console.WriteLine($"Unknown command '{inputParts[1]}'. \nType 'help' for list of Available commands");
                            break;
                    }
                    break;

                // Main case default
                default:
                    Console.WriteLine($"Unknown command '{inputParts[0]}'. \nType 'help' for list of Available commands");
                    break;
            }
        }

        /// <summary>
        /// If the user types help this will display the list of commands
        /// </summary>
        private static void PrintHelpe()
        {
            Console.WriteLine("\n--- Help is here! ---\n");
            Console.WriteLine("Available commands:");
            Console.WriteLine("list maps");
        }

        #region Commands

        private static void ListMaps(SqliteConnection connection)
        {
            // Actual SQL command
            string sql = 
                "SELECT mapName, dlc " +
                "FROM Maps";

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;

            // Reads back the output of the command
            // The data reader will essentially store the entire output object of the SQL command like if it were being called in SQL terminal
            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine(
                    $"{reader["mapName"]} ({reader["dlc"]})"
                );
            }
        }




        #endregion
    }
}
