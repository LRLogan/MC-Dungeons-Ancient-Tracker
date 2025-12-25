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

                        case "runes":
                            ListRunes(connection);
                            break;

                        default:
                            Console.WriteLine($"Unknown command '{inputParts[1]}'. " +
                                $"\nType 'help' for list of Available commands");
                            break;
                    }
                    break;

                // Handles all the get commands
                case "get":
                    switch (inputParts[1])
                    {
                        case "map":

                            break;

                        default:
                            Console.WriteLine($"Unknown command '{inputParts[1]}'. " +
                                $"\nType 'help' for list of Available commands");
                            break;
                    }
                    break;

                case "help":
                    PrintHelp();
                    break;

                // Main case default
                default:
                    Console.WriteLine($"Unknown command '{inputParts[0]}'. " +
                        $"\nType 'help' for list of Available commands");
                    break;
            }
        }

        /// <summary>
        /// If the user types help this will display the list of commands
        /// </summary>
        private static void PrintHelp()
        {
            Console.WriteLine("\n--- Help is here! ---\n");
            Console.WriteLine("Available commands:");
            Console.WriteLine("list maps");
            Console.WriteLine("list runes");
            Console.WriteLine("\nOther resources:");
        }

        #region Commands

        private static void ListMaps(SqliteConnection connection)
        {
            // Actual SQL command
            string sql = 
                "SELECT mapName, dlc " +
                "FROM Maps " +
                "ORDER BY mapName ASC;";

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;

            // Reads back the output of the command one tuple at a time
            // The data reader will essentially store the entire output object of the SQL command like if it were being called in SQL terminal
            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                // Checking for null value
                object DLCValue = reader["dlc"];
                if (DLCValue == DBNull.Value)
                {
                    Console.WriteLine(
                        $"MAP: {reader["mapName"]}"
                    );
                }
                else
                {
                    Console.WriteLine(
                        $"MAP: {reader["mapName"]}\t-> \tDLC: {reader["dlc"]}"
                    );
                }
            }
        }

        private static void ListAncients(SqliteConnection connection)
        {
            string sql =
                "SELECT mapName, dlc " +
                "FROM Maps";

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;

            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                
            }
        }

        private static void ListItems(SqliteConnection connection)
        {

        }

        private static void ListRunes(SqliteConnection connection)
        {
            string sql =
                "SELECT runeName " +
                "FROM Rune";

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;

            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine($"RUNE: {reader["runeName"]}");
            }
        }


        #endregion
    }
}
