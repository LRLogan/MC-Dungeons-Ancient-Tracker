using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DungeonsAncientTracker
{
    /// <summary>
    /// Basic container class for an item canidate used in best fit algo
    /// </summary>
    internal class ItemCanidate
    {
        public string name;
        public string type;
        public string? dlc;
        public bool isUnique, isEvent;
        public float score;

        public Dictionary<string, int> runeCoverage;

        public ItemCanidate(string name, string type, string? dlc, bool isUnique, bool isEvent)
        {
            this.name = name;
            this.type = type;
            this.dlc = dlc;
            this.isUnique = isUnique;
            this.isEvent = isEvent;
            runeCoverage = new Dictionary<string, int>();
        }

        public int TotalRuneCount => runeCoverage.Values.Sum();
    }
}
