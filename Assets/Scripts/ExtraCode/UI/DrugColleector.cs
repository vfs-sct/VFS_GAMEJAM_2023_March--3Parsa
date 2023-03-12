using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DrugColleector : MonoBehaviour
{
    /// <summary>
    /// Displays collected Drugs. Attach to UI.
    /// </summary>
    public static int drugScoreText = 0;
    public bool scoreReset = true;

    Text score;

    void Start()
    {
        score = GetComponent<Text>();

        if (scoreReset == false && drugScoreText >= 1)
        {
            scoreReset = true;
            drugScoreText = 0;
        }
    }

    void Update()
    {
        score.text = "" + drugScoreText; // display score
    }
}

// add drug version of this
