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
        private const int formatSpaceSize = -25;

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

                        case "ancients":
                            ListAncients(connection);
                            break;

                        case "items":
                            ListItems(connection); 
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
                            string fullItemName = GetRemainingArgument(inputParts, 2);
                            GetMapFromItem(connection, fullItemName);
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
            Console.WriteLine("Available database commands:");
            Console.WriteLine("list ancients");
            Console.WriteLine("list maps");
            Console.WriteLine("list runes");
            Console.WriteLine("list items");
            Console.WriteLine("\nOther resources:");
            Console.WriteLine("Type 'exit' to exit program");
        }

        /// <summary>
        /// Helper function to join the remaining parts of the input after initial seperation
        /// </summary>
        /// <param name="parts">array of broken strings</param>
        /// <param name="startIndex"></param>
        /// <returns></returns>
        static string GetRemainingArgument(string[] parts, int startIndex)
        {
            return parts.Length > startIndex
                ? string.Join(' ', parts.Skip(startIndex))
                : string.Empty;
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
                        $"MAP: {reader["mapName"],formatSpaceSize}-> DLC: {reader["dlc"]}"
                    );
                }
            }
        }

        private static void ListAncients(SqliteConnection connection)
        {
            string sql =
                "SELECT ancientName, mobType " +
                "FROM Ancient " +
                "ORDER BY ancientName ASC;";

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;

            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine(
                        $"ANCIENT: {reader["ancientName"], formatSpaceSize}-> MOB: {reader["mobType"]}"
                    );
            }
        }

        private static void ListItems(SqliteConnection connection)
        {
            string sql =
                "SELECT itemName, itemType, dlc " +
                "FROM Items " +
                "ORDER BY itemName ASC;";

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;

            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                object DLCValue = reader["dlc"];
                if (DLCValue == DBNull.Value)
                {
                    Console.WriteLine($"ITEM: {reader["itemName"],formatSpaceSize}" +
                    $"-> TYPE: {reader["itemType"],formatSpaceSize}" 
                    );
                }
                else
                {
                    Console.WriteLine($"ITEM: {reader["itemName"],formatSpaceSize}" +
                    $"-> TYPE: {reader["itemType"],formatSpaceSize}" +
                    $"-> DLC: {reader["dlc"]}"
                    );
                }
            }
        }

        private static void ListRunes(SqliteConnection connection)
        {
            string sql =
                "SELECT runeName " +
                "FROM Rune " +
                "ORDER BY runeName ASC;";

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;

            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine($"RUNE: {reader["runeName"]}");
            }
        }

        private static void GetMapFromItem(SqliteConnection connection, string item)
        {
            string sql =
                "SELECT m.mapName, m.dlc, i.itemName " +
                "FROM MapItems mi " +
                "JOIN Maps m USING (mapName) " +
                "JOIN Items i USING (itemName) " +
                "WHERE mi.itemName = @item " +
                "ORDER BY m.mapName ASC;";

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;
            cmd.Parameters.AddWithValue("@item", item);

            using var reader = cmd.ExecuteReader();
            Console.WriteLine($"Showing map results for item: {item}");

            // As of now this is the same loop from List Maps
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
                        $"MAP: {reader["mapName"],formatSpaceSize}-> DLC: {reader["dlc"]}"
                    );
                }
            }
        }

        #endregion
    }
}
