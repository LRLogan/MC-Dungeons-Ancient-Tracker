using Newtonsoft.Json;
using System.Linq;
using System.Text.Json.Nodes;
using MySql.Data.MySqlClient;
using System.Data;

/*
 * Personal Proj developed by Logan Larrondo
 * This program will provide information on MC Dungeons items and runes needed for Ancient Hunts 
 */

namespace DungeonsAncientTracker
{
    public enum Rune
    {
        Arch,
        L,
        T,
        A,
        Branch,
        Shield,
        Ring,
        Anchor,
        Totem
    }

    public enum ItemType
    {
        Melee,
        Ranged,
        Armor,
        Artifact
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            MySqlConnection sqlConnection = new MySqlConnection();
            MySqlCommand sqlCmd = new MySqlCommand();
            DataTable dataTable = new DataTable();
            MySqlDataAdapter adapter;
            MySqlDataReader reader;
            DataSet ds = new DataSet();
            string sqlQuery;

            // Fine loading / saving
            string filePath = "../../";
            string json = File.ReadAllText(filePath);
             
            // Getting existing data
            if(File.Exists(filePath))
            {
                ProgramData jsonData = JsonConvert.DeserializeObject<ProgramData>(json);
            }


        }
    }
}
