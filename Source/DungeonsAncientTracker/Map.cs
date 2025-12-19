using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DungeonsAncientTracker
{
    internal class Map
    {
        public static Dictionary<string, Map> allMaps = new();

        public string name, dlc;
        public List<Item> itemDrops;

        public Map(string name)
        {
            this.name = name;
            dlc = "none";
            itemDrops = new List<Item>();
            allMaps[name] = this;
        }

        public Map(string name, string dlc, List<Item> itemDrops) 
        {
            this.name = name;
            this.dlc = dlc;
            this.itemDrops = itemDrops;
            allMaps[name] = this;
        }

        /// <summary>
        /// Lists all maps
        /// </summary>
        public static void ListAllMaps()
        {

        }

        /// <summary>
        /// Lists out all maps with a specific Item drops
        /// </summary>
        /// <param name="item"></param>
        public static void ListMapsWithItem(List<Item> items)
        {

        }
    }
}
