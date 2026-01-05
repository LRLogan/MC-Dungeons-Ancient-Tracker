using Microsoft.Data.Sqlite;
using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
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
        private const int formatSpaceSizeTiny = -5;

        public static void Dispatch(string input, SqliteConnection connection)
        {
            string[] inputParts = input.Split(
                ' ',
                StringSplitOptions.RemoveEmptyEntries
                );
            Dictionary<string, string> flags = new();

            // Handles the user input 
            switch (inputParts[0])
            {
                // Handles all the list commands
                case "list":
                    switch (inputParts[1])
                    {
                        case "maps":
                            if (flags != null && flags.Count() >= 0) flags.Clear();
                            flags = GetFlagsFromParts(inputParts);
                            ListMaps(connection,
                                flags.ContainsKey("-dlc")
                                ? flags["-dlc"].Split(',', StringSplitOptions.RemoveEmptyEntries).ToList()
                                : null);
                            break;

                        case "runes":
                            ListRunes(connection);
                            break;

                        case "ancients":
                            if (flags != null && flags.Count() >= 0) flags.Clear();
                            flags = GetFlagsFromParts(inputParts);
                            ListAncients(connection,
                                flags.ContainsKey("-sd"));
                            break;

                        case "items":
                            if (flags != null && flags.Count() >= 0) flags.Clear();
                            flags = GetFlagsFromParts(inputParts);
                            ListItems(connection,
                                flags.ContainsKey("-dlc")
                                ? flags["-dlc"].Split(',', StringSplitOptions.RemoveEmptyEntries).ToList()
                                : null,
                                flags.ContainsKey("-nu"),
                                flags.ContainsKey("-nei"),
                                flags.ContainsKey("-nbi")); 
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
                            if (flags != null && flags.Count() >= 0) flags.Clear();
                            flags = GetFlagsFromParts(inputParts);

                            GetAncientReport(
                                connection,
                                fullAncientName,
                                flags.ContainsKey("-dlc")
                                ? flags["-dlc"].Split(',', StringSplitOptions.RemoveEmptyEntries).ToList()
                                : null,
                                flags.ContainsKey("-nu"),
                                flags.ContainsKey("-nei")
                                );
                                break;

                        case "rune":
                            GetRune(connection, inputParts[2]);
                            break;

                        case "item":
                            string fullItemNamae = GetRemainingArgument(inputParts, 2);
                            GetItem(connection, fullItemNamae);
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
            Console.WriteLine("get rune {Rune Name}");
            Console.WriteLine("get item {Item Name}");
            Console.WriteLine("\nOther resources:");
            Console.WriteLine("Type 'exit' to exit program");
            Console.WriteLine("Visit the GitHub page for more detailed documentation");
        }

        /// <summary>
        /// Helper function to join the remaining parts of the input after initial seperation EXCLUDING Flags
        /// </summary>
        /// <param name="parts">array of broken strings</param>
        /// <param name="startIndex"></param>
        /// <returns></returns>
        static string GetRemainingArgument(string[] parts, int startIndex)
        {
            if (startIndex >= parts.Length)
                return string.Empty;

            var tokens = new List<string>();

            for (int i = startIndex; i < parts.Length; i++)
            {
                // Stop when we hit a flag 
                if (parts[i].StartsWith('-'))
                    break;

                tokens.Add(parts[i]);
            }

            return string.Join(' ', tokens);
        }


        static Dictionary<string, string> GetFlagsFromParts(string[] tokens)
        {
            // StringComparer.OrdinalIgnoreCase just tells .NET to ignore capitalization
            var result = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);

            string? currentFlag = null;

            // Using string builder to avoid reallowcations / loss of memory while editing the string to find tokens
            StringBuilder currentValue = new StringBuilder();

            // Finding the flags and assigning the values of the falgs
            foreach (string token in tokens)
            {
                // Marker for a flag
                if (token.StartsWith("-"))
                {
                    // Commit previous flag
                    if (currentFlag != null)
                    {
                        result[currentFlag] = currentValue.ToString().Trim();
                        currentValue.Clear();
                    }

                    currentFlag = token;
                }
                else if (currentFlag != null)
                {
                    currentValue.Append(token).Append(' ');
                }
            }

            // Commit last flag
            if (currentFlag != null)
            {
                result[currentFlag] = currentValue.ToString().Trim();
            }

            return result;
        }

        /// <summary>
        /// Flag tokenizer for a full string
        /// </summary>
        /// <param name="fullString"></param>
        /// <returns></returns>
        static Dictionary<string, string> GetFlagsFromString(string fullString)
        {
            // Getting all the tokens
            string[] tokens = fullString.Split(
                ' ',
                StringSplitOptions.RemoveEmptyEntries
            );
            return GetFlagsFromParts(tokens);
            
        }



        #region Commands

        private static void ListMaps(SqliteConnection connection, List<string>? allowedDLCs)
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
                string? dlc = reader["dlc"] == DBNull.Value ? null : reader["dlc"].ToString();

                if (!CheckDlc(dlc, allowedDLCs))
                    continue;

                // Checking for null value
                if (reader["dlc"] == DBNull.Value)
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

        private static void ListAncients(SqliteConnection connection, bool showData)
        {
            string sql = null;
            Dictionary<string, List<string?>> loot = new Dictionary<string, List<string?>>();
            if (showData)
            {
                sql =
                "SELECT a.ancientName, " +
                "al.itemName AS lootItem " +
                "FROM Ancient a " +
                "LEFT JOIN AncientLoot al USING (ancientName) " +
                "ORDER BY al.itemName ASC;";

                using (var cmd = connection.CreateCommand())
                {
                    cmd.CommandText = sql;

                    using var reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        if(!loot.ContainsKey(reader["ancientName"].ToString()))
                        {
                            loot[reader["ancientName"].ToString()] = new List<string?>();
                        }
                        loot[reader["ancientName"].ToString()].Add(reader["lootItem"].ToString());
                    }
                }
            }

            sql =
                "SELECT ancientName, mobType " +
                "FROM Ancient " +
                "ORDER BY ancientName ASC;";

            using (var cmd = connection.CreateCommand())
            { 
                cmd.CommandText = sql;

                using var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Console.WriteLine(
                            $"ANCIENT: {reader["ancientName"],formatSpaceSize}-> MOB: {reader["mobType"]}"
                    );

                    // If -sd
                    if(showData)
                    {
                        Console.WriteLine("\nLoot droped:");
                        foreach (var item in loot[reader["ancientName"].ToString()])
                        {
                            Console.WriteLine(item);
                        }
                        Console.WriteLine();
                        Console.WriteLine();
                    }
                    
                }
            }
        }

        private static void ListItems(SqliteConnection connection, List<string>? allowedDLCs, bool excludeUnique, bool excludeEItems, bool excludeBItems)
        {
            string sql =
                "SELECT itemName, itemType, isUnique, dlc, isEvent " +
                "FROM Items " +
                "ORDER BY itemName ASC;";

            using var cmd = connection.CreateCommand();
            cmd.CommandText = sql;
            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                // Excluding uniques
                if (reader["isUnique"].ToString() == "1" && excludeUnique)
                    continue;

                // Excluding event items
                if (reader["isEvent"].ToString() == "1" && excludeEItems)
                    continue;

                // Excluding event items
                if (reader["isUnique"].ToString() == "0" && excludeBItems)
                    continue;

                string? dlc = reader["dlc"] == DBNull.Value ? null : reader["dlc"].ToString();
                
                if (!CheckDlc(dlc, allowedDLCs))
                    continue;

                string isItemUnique = reader.GetBoolean(2) ? "Y" : "N";
                // Special formatting for if DLC does not exist 
                if (reader["dlc"] == DBNull.Value)
                {
                    Console.WriteLine($"ITEM: {reader["itemName"],formatSpaceSize} " +
                    $"-> TYPE: {reader["itemType"],formatSpaceSizeSmall} " +
                    $"Is Unique: {isItemUnique}" 
                    );
                }
                else
                {
                    Console.WriteLine($"ITEM: {reader["itemName"],formatSpaceSize} " +
                    $"-> TYPE: {reader["itemType"],formatSpaceSizeSmall} " +
                    $"Is Unique: {isItemUnique,formatSpaceSizeTiny}" +
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
            // Testing to see if the item name is valid 
            bool exists;
            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = @"
                    SELECT 1
                    FROM Items
                    WHERE itemName = @item
                    LIMIT 1;
                ";
                cmd.Parameters.AddWithValue("@item", item);

                exists = cmd.ExecuteScalar() != null;
            }

            if (!exists)
            {
                Console.WriteLine($"Item '{item}' does not exist. " +
                    $"\nType: 'list items' to see full list of item names");
                return;
            }

            string sql =
                "SELECT m.mapName, m.dlc, i.itemName " +
                "FROM MapItems mi " +
                "JOIN Maps m USING (mapName) " +
                "JOIN Items i USING (itemName) " +
                "WHERE mi.itemName = @item " +
                "ORDER BY m.mapName ASC;";

            using (var cmd = connection.CreateCommand())
            {
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
            
        }

        private static void GetAncientReport(SqliteConnection connection, string ancient, List<string>? allowedDLCs, bool excludeUnique, bool excludeEItems)
        {
            // Testing to see if the ancient name is valid 
            bool exists;
            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = @"
                    SELECT 1
                    FROM Ancient
                    WHERE ancientName = @ancient
                    LIMIT 1;
                ";
                cmd.Parameters.AddWithValue("@ancient", ancient);

                exists = cmd.ExecuteScalar() != null;
            }

            if (!exists)
            {
                Console.WriteLine($"Ancient '{ancient}' does not exist.");
                return;
            }


            #region query 1
            // --- First query ---
            string sql =
                "SELECT a.ancientName, a.mobType, ar.runeName, ar.runeQuantity " +
                "FROM Ancient a " +
                "JOIN AncientRune ar USING (ancientName) " +
                "WHERE a.ancientName = @ancient " +
                "ORDER BY ar.runeName ASC;";

            Console.WriteLine($"Showing full report for Ancient: {ancient}");

            var runeRows = new Dictionary<string, int>();
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
                    runeRows[reader.GetString(2)] = reader.GetInt32(3);
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
                Console.WriteLine($"{r.Key, formatSpaceSizeSmall} x{r.Value}");
            }
            Console.WriteLine();

            Console.WriteLine("\nLoot droped:");
            foreach(string? item in loot)
            {
                Console.WriteLine(item);
            }
            Console.WriteLine();
            #endregion

            // -- Second query showes alternate map locations --
            sql =
                "SELECT m.mapName, COUNT(*) AS occurrenceCount " +
                "FROM AncientLoot al " +
                "JOIN MapItems mi USING (itemName) " +
                "JOIN Maps m USING (mapName) " +
                @"WHERE al.ancientName = @ancient " +
                "GROUP BY m.mapName " +
                "ORDER BY occurrenceCount DESC, m.mapName ASC;";

            Console.WriteLine("Alternate locations to acquire loot: ");

            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@ancient", ancient);

                using var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Console.WriteLine($"{reader["mapName"],formatSpaceSizeSmall}, x{reader["occurrenceCount"]}");
                }
                Console.WriteLine();
            }

            // --- Third query ---
            sql =
                "SELECT i.itemName, i.itemType, i.isUnique, " +
                "i.dlc, ir.runeName, ir.runeQuantity, i.isEvent " +
                "FROM ItemRune ir " +
                "JOIN Items i USING (itemName) " +
                "WHERE ir.runeName IN ( " +
                "SELECT runeName " +
                "FROM AncientRune " +
                "WHERE ancientName = @ancient " +
                ") " +
                "ORDER BY i.itemName ASC;";
            List<ItemCanidate> rawCandidates = null;

            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@ancient", ancient);

                // Dict of all item canidates to store the data from the query. Not created in query due to nature of how SQL returns the data 
                Dictionary<string, ItemCanidate> candidatesByName = new();

                using var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    string itemName = reader.GetString(0);
                    string itemType = reader.GetString(1);
                    bool isUnique = reader.GetInt32(2) == 1;
                    string? dlc = reader.IsDBNull(3) ? null : reader.GetString(3);
                    string runeName = reader.GetString(4);
                    int runeQty = reader.GetInt32(5);
                    bool isEvent = reader.GetBoolean(6);

                    // Checking for item existance 
                    if (!candidatesByName.TryGetValue(itemName, out var candidate))
                    {
                        candidate = new ItemCanidate(itemName, itemType, dlc, isUnique, isEvent);

                        candidatesByName[itemName] = candidate;
                    }

                    // Updating rune coverage
                    if (candidate.runeCoverage.ContainsKey(runeName))
                    {
                        candidate.runeCoverage[runeName] += runeQty;
                    }
                    else
                    {
                        candidate.runeCoverage[runeName] = runeQty;
                    }
                }

                // Final candidate set
                rawCandidates = candidatesByName.Values.ToList(); 
            }

            List<ItemCanidate> finalItems = RunFindOptimalItemsAlgo(rawCandidates, runeRows, allowedDLCs, excludeUnique, excludeEItems);

            Console.WriteLine("Reccommended items to use for runes: ");
            foreach(ItemCanidate item in finalItems)
            {
                Console.WriteLine($"ITEM: {item.name}");
                Console.WriteLine("Attached runes:");
                foreach(var rune in item.runeCoverage)
                {
                    Console.WriteLine($"{rune.Key} x {rune.Value}");
                }
                Console.WriteLine();
            }

            // --- Fourth query ---
            sql =
                "SELECT mi.mapName, mi.itemName, COUNT(mi.mapName) AS occurrenceCount " +
                "FROM MapItems mi " +
                @"WHERE mi.itemName = @item " +
                "GROUP BY mi.mapName " +
                "ORDER BY occurrenceCount DESC, mi.mapName ASC;";

            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = sql;
                Dictionary<string, int> mapCount = new();

                foreach (ItemCanidate item in finalItems)
                {
                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@item", item.name);
                    using var reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string mapName = reader.GetString(0);
                        int count = reader.GetInt32(2);

                        if (mapCount.ContainsKey(mapName))
                            mapCount[mapName] += count;
                        else
                            mapCount[mapName] = count;
                    }

                }

                Console.WriteLine("Maps where you can get the items for runes: ");

                // Sorting the dict
                var sortedMapCount = mapCount
                    .OrderByDescending(kvp => kvp.Value)
                        .ThenBy(kvp => kvp.Key);

                foreach (var map in sortedMapCount)
                {
                    Console.WriteLine($"{map.Key,formatSpaceSizeSmall} x {map.Value}");
                }
                Console.WriteLine();
            }
        }

        private static void GetRune(SqliteConnection connection, string rune)
        {
            // Testing to see if the rune name is valid 
            bool exists;
            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = @"
                    SELECT 1
                    FROM Rune
                    WHERE runeName = @rune
                    LIMIT 1;
                ";
                cmd.Parameters.AddWithValue("@rune", rune);

                exists = cmd.ExecuteScalar() != null;
            }

            if (!exists)
            {
                Console.WriteLine($"Rune '{rune}' does not exist. " +
                    $"\nType: 'list runes' to see full list of rune names");
                return;
            }

            string sql =
                "SELECT itemName, runeName " +
                "FROM ItemRune " +
                "WHERE runeName = @rune;";

            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@rune", rune);

                using var reader = cmd.ExecuteReader();
                Console.WriteLine($"Showing rune data for the rune: {rune}");

                while (reader.Read())
                {
                    Console.WriteLine($"ITEM: {reader["itemName"]}");
                    GetMapFromItem(connection, reader["itemName"].ToString());
                    Console.WriteLine();
                }
            }
        }

        private static void GetItem(SqliteConnection connection, string item)
        {
            // Testing to see if the item name is valid 
            bool exists;
            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = @"
                    SELECT 1
                    FROM Items
                    WHERE itemName = @item
                    LIMIT 1;
                ";
                cmd.Parameters.AddWithValue("@item", item);

                exists = cmd.ExecuteScalar() != null;
            }

            if (!exists)
            {
                Console.WriteLine($"Item '{item}' does not exist. " +
                    $"\nType: 'list items' to see full list of item names");
                return;
            }

            // -- Query 1 --
            string sql =
                "SELECT ir.itemName, ir.runeName, ir.runeQuantity " +
                "FROM ItemRune ir " +
                "WHERE ir.itemName = @item " +
                "ORDER BY ir.runeName ASC;";

            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@item", item);

                using var reader = cmd.ExecuteReader();
                Console.WriteLine($"Runes attached to item: {item}");

                while (reader.Read())
                {
                    Console.WriteLine($"RUNE: {reader["runeName"],formatSpaceSizeSmall} x {reader["runeQuantity"]}");
                }
                Console.WriteLine();
            }

            // -- Query 2 --
            sql =
                "SELECT m.mapName, m.dlc, i.itemName " +
                "FROM MapItems mi " +
                "JOIN Maps m USING (mapName) " +
                "JOIN Items i USING (itemName) " +
                "WHERE mi.itemName = @item " +
                "ORDER BY m.mapName ASC;";

            using (var cmd = connection.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@item", item);

                using var reader = cmd.ExecuteReader();
                Console.WriteLine($"Showing map results where item: {item} can be found");

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
        }

        #endregion

        private static List<ItemCanidate> RunFindOptimalItemsAlgo(List<ItemCanidate> canidateSet, Dictionary<string, int> remainingRunes, List<string>? allowedDLCs, bool excludeUnique, bool excludeEItems)
        {
            string[] typeOrder = { "Melee", "Ranged", "Armor", "Artifact" };
            Dictionary<string, List<ItemCanidate>> itemsByType = new();
            List<ItemCanidate> selectedItems = new();
            ItemCanidate bestItem = null;
            float bestCost = float.MinValue;
            float curItemCost = 0;

            // Filtering before algo to optimize 
            foreach (ItemCanidate item in canidateSet)
            {
                if (!CheckDlc(item.dlc, allowedDLCs))
                    continue;
                if (excludeUnique && item.isUnique)
                    continue;
                if (excludeEItems && item.isEvent)
                    continue;
                if (!CheckRunes(item.runeCoverage, remainingRunes))
                    continue;

                // Ensuring the dict value exists 
                if (!itemsByType.TryGetValue(item.type, out var list))
                {
                    list = new List<ItemCanidate>();
                    itemsByType[item.type] = list;
                }

                list.Add(item);

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

                    //Update remaining runes since an item was chosen
                    foreach(var rune in bestItem.runeCoverage)
                    {
                        if(remainingRunes.ContainsKey(rune.Key))
                        {
                            remainingRunes[rune.Key] -= rune.Value;

                            // If fully satisfied
                            if (remainingRunes[rune.Key] <= 0)
                                remainingRunes.Remove(rune.Key);
                        }
                    }
                }
            }

            return selectedItems;
        }

        private static float CalculateHeuristic(ItemCanidate item, Dictionary<string, int> remainingRunes)
        {
            float score = 0;
            int excessRunes = 0;

            foreach(var rune in item.runeCoverage)
            {
                // Checks if the rune'n name exists in the required list
                if (remainingRunes.ContainsKey(rune.Key))
                {
                    // Min to enforce the constraint that only runes that can provide something will be counted
                    score += MathF.Min(rune.Value, remainingRunes[rune.Key]) * 3;
                }
                else excessRunes++;
            }
            score -= excessRunes * 0.5f;

            return score;
        }

        private static bool CheckRunes(Dictionary<string, int> canidateRunes, Dictionary<string, int> objRunes)
        {
            foreach(var rune in canidateRunes)
            {
                if (objRunes.ContainsKey(rune.Key))
                    return true;
            }

            return false;
        }

        /// <summary>
        /// Returnes true if the item is in an allowedDLC
        /// </summary>
        /// <param name="itemDlc"></param>
        /// <param name="allowedDLCs"></param>
        /// <returns></returns>
        private static bool CheckDlc(string? itemDlc, List<string> allowedDLCs)
        {
            // early exit
            if (allowedDLCs == null)
                return true;
            if (allowedDLCs.Count() <= 0)
                return true;

            bool containsDlc = false;
            foreach (string dlc in allowedDLCs)
            {
                // no dlc
                if (dlc == "none" && itemDlc == null)
                {
                    return true;
                }
                
                if (dlc == itemDlc)
                    containsDlc = true;
            }
            return containsDlc;
        }
    }
}
