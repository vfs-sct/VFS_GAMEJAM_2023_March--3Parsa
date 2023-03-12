using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PoppyScore : MonoBehaviour
{
    /// <summary>
    /// Displays collected Poppies.
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

// Check player to add points
