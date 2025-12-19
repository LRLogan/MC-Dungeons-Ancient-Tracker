using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DungeonsAncientTracker
{
    internal class Item
    {
        public string itemName;
        public List<Rune> runeList;
        public List<Map> mapsList;
        public static Dictionary<string, Item> allItems = new();

        public Item(string itemName)
        {
            this.itemName = itemName;
            runeList = new List<Rune>();
            mapsList = new List<Map>();
            allItems[itemName] = this;
        }

        /// <summary>
        /// Lists all items
        /// </summary>
        public static void ListAllItems()
        {

        }


    }
}
