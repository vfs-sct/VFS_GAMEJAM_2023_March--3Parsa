using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DrugScore : MonoBehaviour
{
    /// <summary>
    /// Displays collected Drugs.
    /// </summary>
    public static int scoreVal = 0;
    public bool scoreReset;

    Text score;

    void Start()
    {
        score = GetComponent<Text>();
    }

    void Update()
    {
        score.text = "" + scoreVal; // display score

        if (scoreReset == true)
        {
            scoreVal = 0;
        }
    }
}
