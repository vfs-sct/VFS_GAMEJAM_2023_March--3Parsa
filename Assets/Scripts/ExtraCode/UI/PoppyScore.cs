using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PoppyScore : MonoBehaviour
{
    /// <summary>
    /// Displays collected Poppies. Attach to object giving points.
    /// </summary>
    private static int poppyScoreCount = 1;

    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Player")
        {
            PoppyCollector.poppyScoreText += poppyScoreCount;
            Debug.Log("Collected the poppy");
        }
    }
}
