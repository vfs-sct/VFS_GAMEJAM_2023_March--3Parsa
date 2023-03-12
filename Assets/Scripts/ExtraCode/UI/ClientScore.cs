using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClientScore : MonoBehaviour
{
    /// <summary>
    /// Displays remaining Clients. Attach to object giving points.
    /// </summary>
    private static int clientScoreCount = 1;

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            if (DrugColleector.drugScoreText >= 1)
            {
                DrugColleector.drugScoreText -= 1;
                Score.ClientScoreText -= clientScoreCount;
                Debug.Log("Sold the drug");
            }
            else
            {
                Debug.Log("You do not have Drugs to give to the Client.");
            }
        }
    }
}
