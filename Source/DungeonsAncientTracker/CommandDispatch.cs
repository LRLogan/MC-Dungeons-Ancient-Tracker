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
        private const int formatSpaceSizeSmall = -15;

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

                        case "ancient":
                            string fullAncientName = GetRemainingArgument(inputParts, 2);
                            GetAncientReport(connection, fullAncientName);
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
            Console.WriteLine("get map {Item Name}");
            Console.WriteLine("get ancient {Ancient Name}");
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

        private static void GetAncientReport(SqliteConnection connection, string ancient)
        {
            // --- First query ---
            string sql =
                "SELECT a.ancientName, a.mobType, ar.runeName, ar.runeQuantity " +
                "FROM Ancient a " +
                "JOIN AncientRune ar USING (ancientName) " +
                "WHERE a.ancientName = @ancient " +
                "ORDER BY ar.runeName ASC;";

            Console.WriteLine($"Showing full report for Ancient: {ancient}");

            var runeRows = new List<(string Rune, int Amount)>();
            List<string?> loot = new List<string?>();
            string? mobType = null;

            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@ancient", ancient);

                using var reader = cmd.ExecuteReader();

                // Reading in all data to store for easer formatting
                while (reader.Read())
                {
                    if (mobType == null)
                    {
                        mobType = reader["mobType"].ToString();
                    }
                    runeRows.Add((
                        reader.GetString(2),
                        reader.GetInt32(3)
                    ));
                }
            }

            // Query 1 part 2 (yes technically query 2)
            sql =
                "SELECT a.ancientName, " +
                "al.itemName AS lootItem " +
                "FROM Ancient a " +
                "LEFT JOIN AncientLoot al USING (ancientName) " +
                "WHERE a.ancientName = @ancient " +
                "ORDER BY al.itemName ASC;";

            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@ancient", ancient);

                using var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    loot.Add(reader["lootItem"].ToString());
                }
            }

            // Query 1 output
            Console.WriteLine($"Mob type: {mobType}\n");
            Console.WriteLine("Runes required:");
            foreach (var r in runeRows)
            {
                Console.WriteLine($"{r.Rune, formatSpaceSizeSmall} x{r.Amount}");
            }
            Console.WriteLine();

            Console.WriteLine("\nLoot droped:");
            foreach(string? item in loot)
            {
                Console.WriteLine(item);
            }

            // --- Second query ---
            sql =
                "SELECT al.itemName, m.mapName, m.dlc " +
                "FROM AncientLoot al " +
                "JOIN MapItems mi USING (itemName) " +
                "JOIN Maps m USING (mapName) " +
                "WHERE al.ancientName = @ancient " +
                "ORDER BY al.itemName ASC, m.mapName ASC;";

            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@ancient", ancient);

                using var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    // Checking for null value
                    object DLCValue = reader["dlc"];
                    if (DLCValue == DBNull.Value)
                    {
                        Console.WriteLine(
                            $"ITEM: {reader["itemName"],formatSpaceSize}-> " +
                            $"MAP: {reader["mapName"]}"
                        );
                    }
                    else
                    {
                        Console.WriteLine(
                             $"ITEM: {reader["itemName"],formatSpaceSize}-> " +
                            $"MAP: {reader["mapName"],formatSpaceSize}-> DLC: {reader["dlc"]}"
                        );
                    }
                }
            }

            // --- Third query ---
            sql =
                "SELECT m.mapName, COUNT(*) AS occurrenceCount " +
                "FROM AncientLoot al " +
                "JOIN MapItems mi USING (itemName) " +
                "JOIN Maps m USING (mapName) " +
                "WHERE al.ancientName = @ancient " +
                "GROUP BY m.mapName " +
                "ORDER BY occurrenceCount DESC, m.mapName ASC;";

            Console.WriteLine("Maps to find these items: ");

            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@ancient", ancient);

                using var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Console.WriteLine($"{reader["mapName"],formatSpaceSizeSmall}, x{reader["occurrenceCount"]}");
                }
            }
        }

        #endregion

        private static List<ItemCanidate> RunFindOptimalItemsAlgo(List<ItemCanidate> canidateSet, Dictionary<string, int> remainingRunes, List<string> allowedDLCs, bool excludeUnique)
        {
            string[] typeOrder = { "melee", "ranged", "armor", "artifact" };
            Dictionary<string, List<ItemCanidate>> itemsByType = new();
            List<ItemCanidate> selectedItems = new();
            ItemCanidate bestItem = null;
            float bestCost = float.MinValue;
            float curItemCost = 0;

            // Filtering before algo to optimize 
            foreach(ItemCanidate item in canidateSet)
            {
                if (!CheckDlc(item.dlc, allowedDLCs))
                    continue;
                if (excludeUnique && item.isUnique)
                    continue;
                if (!CheckRunes(item.runeCoverage, remainingRunes))
                    continue;
                itemsByType[item.type].Add(item);
            }

            // Main section of the algorithm
            // Iterating through each item type to get the best one for each
            foreach (string type in typeOrder)
            {
                if (!itemsByType.ContainsKey(type))
                    continue;
                bestItem = null;
                bestCost = float.MinValue;

                foreach(ItemCanidate item in itemsByType[type])
                {
                    curItemCost = CalculateHeuristic(item, remainingRunes);

                    if (curItemCost > bestCost)
                    {
                        bestCost = curItemCost;
                        bestItem = item;
                    }
                }

                if (bestItem != null)
                {
                    selectedItems.Add(bestItem);
                    //Update remaining runes here since an item was chosen
                }
            }

            return selectedItems;
        }

        private static float CalculateHeuristic(ItemCanidate item, Dictionary<string, int> remainingRunes)
        {
            return 0f;
        }

        private static bool CheckRunes(Dictionary<string, int> canidateRunes, Dictionary<string, int> objRunes)
        {
            return false;
        }

        private static bool CheckDlc(string? itemDlc, List<string> allowedDLCs)
        {
            return false;
        }
    }
}
