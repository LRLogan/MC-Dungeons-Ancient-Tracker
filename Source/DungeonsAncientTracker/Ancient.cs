using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DungeonsAncientTracker
{
    internal class Ancient
    {
        public List<Rune> runesRequired;
        public List<Item> itemDrops;
        public string name, type;
        public static Dictionary<string, Ancient> allAncients = new();

        public Ancient(string name, string type)
        {
            this.name = name;
            this.type = type;
            runesRequired = new List<Rune>();
            itemDrops = new List<Item>();
            allAncients[name] = this;
        }

        public void ListAllAncients()
        {

        }
    }
}
