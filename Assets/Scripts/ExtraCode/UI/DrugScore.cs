using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DrugScore : MonoBehaviour
{
    /// <summary>
    /// Displays collected Drugs. Attach to object giving points.
    /// </summary>
    private static int drugScoreCount = 1;

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            if (PoppyCollector.poppyScoreText >= 1)
            {
                PoppyCollector.poppyScoreText -= 1;
                DrugColleector.drugScoreText += drugScoreCount;
                Debug.Log("Collected the drug");
            }
            else
            {
                Debug.Log("You do not have Poppies to make into Drugs.");
            }
        }
    }
}
